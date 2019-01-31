using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;

namespace WebApplication9
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       

        protected void Button1_Click(object sender, EventArgs e)
        {

            
            //check if all the fields are nto empty
            if (name.Text != "" && email.Text != "" && password.Text != "") {
                bool checkEmail = UsersDB.getUser(email.Text);
                if (checkEmail == true)
                {
                    emailError.Text = "*Ky email eshte i regjistruar!";
                }
                else
                {
                    if (password.Text.Length < 8)
                    {
                        passwordError.Text = "*Fjalekalimi duhet te kete te pakten 8 karaktere!";
                    }
                    else
                    {
                        byte[] salt;
                        new RNGCryptoServiceProvider().GetBytes(salt = new byte[16]);
                        var pbkdf2 = new Rfc2898DeriveBytes(password.Text, salt, 10000);
                        byte[] hash = pbkdf2.GetBytes(20);
                        byte[] hashBytes = new byte[36];
                        Array.Copy(salt, 0, hashBytes, 0, 16);
                        Array.Copy(hash, 0, hashBytes, 16, 20);
                        string savedPasswordHash = Convert.ToBase64String(hashBytes);

                        //call database class and add user by giving as parameters the input's text
                        if (CheckBox1.Checked)
                        {
                            UsersDB.addUser(name.Text, email.Text, savedPasswordHash, "1", "0");
                        }
                        else
                        {
                            UsersDB.addUser(name.Text, email.Text, savedPasswordHash, "0", "1");

                        }

                        String confirm_code = UsersDB.retrieveConfirmCode(email.Text);
                        //System.Diagnostics.Debug.WriteLine("confirm code" + confirm_code);

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
                    //create salt to use it on your password
                    
                }
            }
            else
            {
                error.Text = "*Duhet ti plotesoni te gjitha fushat!"; 
            }


            
            
           

        }
    }
}