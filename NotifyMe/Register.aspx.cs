using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;
using System.Text.RegularExpressions;

namespace WebApplication9
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            emailError.Text = "";
            passwordError.Text = "";
            
            //check if all the fields are not empty
            if (name.Text != "" && email.Text != "" && password.Text != "") {
                
                //checks if email is valid
                string pattern = @"^[a-z][a-z|0-9|]*([_][a-z|0-9]+)*([.][a-z|0-9]+([_][a-z|0-9]+)*)?@[a-z][a-z|0-9|]*\.([a-z][a-z|0-9]*(\.[a-z][a-z|0-9]*)?)$";
                Match match = Regex.Match(email.Text.Trim(), pattern, RegexOptions.IgnoreCase);

                if (!match.Success)
                {
                    emailError.Text = "*Email-i duhet te jete ne formatin user@something.com";
                }
                else
                {
                    //check if this email is already registerd in our database
                bool checkEmail = UsersDB.getUser(email.Text);
                if (checkEmail == true)
                {
                    emailError.Text = "*Ky email eshte i regjistruar!";
                }
                else
                {
                    //check if password is valid
                     pattern = @"^.*(?=.{8,})(?=.*[\d])(?=.*[\W]).*$";
                     match = Regex.Match(password.Text.Trim(), pattern, RegexOptions.IgnoreCase);
                     if (!match.Success)
                    {
                        passwordError.Text = "*Fjalekalimi duhet te kete te pakten 8 karaktere,nje numer dhe nje karakter special!";
                    }
                    else
                    {
                        
                        //create salt to use it for password hash
                        byte[] salt;
                        new RNGCryptoServiceProvider().GetBytes(salt = new byte[16]);
                        var pbkdf2 = new Rfc2898DeriveBytes(password.Text, salt, 10000);
                        byte[] hash = pbkdf2.GetBytes(20);
                        byte[] hashBytes = new byte[36];
                        Array.Copy(salt, 0, hashBytes, 0, 16);
                        Array.Copy(hash, 0, hashBytes, 16, 20);
                        string savedPasswordHash = Convert.ToBase64String(hashBytes);

                        //check if the user is registering as a normal user or a company
                        if (CheckBox1.Checked)
                        {
                            UsersDB.addUser(name.Text, email.Text, savedPasswordHash, "1", "0");
                        }
                        else
                        {
                            UsersDB.addUser(name.Text, email.Text, savedPasswordHash, "0", "1");

                        }

                        String confirm_code = UsersDB.retrieveConfirmCode(email.Text);
                        
                        //send confirmation email
                        MailMessage m = new MailMessage();
                        SmtpClient sc = new SmtpClient();
                        try
                        {
                            m.From = new MailAddress("testingserena@gmail.com", "testingserena@gmail.com");
                            m.To.Add(new MailAddress(email.Text, email.Text));

                            m.Subject = "Email konfirmimi";
                            m.IsBodyHtml = true;
                            String body = "Ju lutem konfirmoni llogarine tuaj duke klikuar <html><body><a href='http://localhost:59525/Login.aspx?&email=" + email.Text + "&confirm_code=" + confirm_code + "'>ketu</a></body></html>";
                            m.Body = body;
                            sc.Host = "smtp.gmail.com";
                            sc.Port = 587;
                            sc.Credentials = new
                            System.Net.NetworkCredential("testingserena@gmail.com", "Serena123!");
                            sc.EnableSsl = true;
                            sc.Send(m);

                        }
                        catch (Exception ex)
                        {
                            
                        }

                        //empty the fields again 
                        name.Text = "";
                        email.Text = "";
                        password.Text = "";
                        //redirect to another page
                        Server.Transfer("Login.aspx", true);
                    }
                    
                    }
                }
            }
            else
            {
                error.Text = "*Duhet ti plotesoni te gjitha fushat!"; 
            }


            
            
           

        }
    }
}