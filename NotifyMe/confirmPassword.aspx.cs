using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class confirmEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String emailParameter = Request.QueryString["email"];
            String usertype = Request.QueryString["usertype"];

            Label1.Text = usertype;

            String password1 = password.Text;
            String password2 = confirmPassword.Text;

            if (password1.Equals("") || password2.Equals(""))
            {
                Label1.Text = "Duhet te plotesoni te gjitha fushat";
            }else{
                if(password1.Equals(password2)){
                    byte[] salt;
                    new RNGCryptoServiceProvider().GetBytes(salt = new byte[16]);
                    var pbkdf2 = new Rfc2898DeriveBytes(password1, salt, 10000);
                    byte[] hash = pbkdf2.GetBytes(20);
                    byte[] hashBytes = new byte[36];
                    Array.Copy(salt, 0, hashBytes, 0, 16);
                    Array.Copy(hash, 0, hashBytes, 16, 20);
                    string savedPasswordHash = Convert.ToBase64String(hashBytes);

                    bool updated = UsersDB.updatePassword(emailParameter, usertype, savedPasswordHash);
                    if (updated)
                    {
                        if(usertype.Equals("admin")){
                            Response.Redirect("~/Admin/AdminLogin.aspx");
                        }else{
                            Response.Redirect("~/Login.aspx");
                        }
                        
                    }
                }else{
                    Label1.Text = "Fjalekalimet nuk perputhen!";
                }
            }
            


        }
    }
}