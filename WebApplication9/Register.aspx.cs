using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            //check if all the fields are nto empty
            if (name.Text != "" && email.Text != "" && password.Text != "") { 
            //create salt to use it on your password
            byte[] salt;
            new RNGCryptoServiceProvider().GetBytes(salt = new byte[16]);
            var pbkdf2 = new Rfc2898DeriveBytes(password.Text, salt, 10000);
            byte[] hash = pbkdf2.GetBytes(20);
            byte[] hashBytes = new byte[36];
            Array.Copy(salt, 0, hashBytes, 0, 16);
            Array.Copy(hash, 0, hashBytes, 16, 20);
            string savedPasswordHash = Convert.ToBase64String(hashBytes);

            //call database class and add user by giving as parameters the input's text
            UsersDB.addUser(name.Text, email.Text, savedPasswordHash, "1", "0");

            //empty the fields again 
            name.Text = "";
            email.Text = "";
            password.Text = "";
            //redirect to another page
            Server.Transfer("Login.aspx", true);
            }
            else
            {
                error.Text = "*Duhet ti plotesoni te gjitha fushat!"; 
            }


            
            
           

        }
    }
}