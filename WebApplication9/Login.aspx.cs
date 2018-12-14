using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (email.Text != "" && password.Text != "")
            {
                String pass = UsersDB.userLogin(email.Text, password.Text);
                if (pass.Equals("empty"))
                {
                    Label1.Text = "Ky email nuk eshte i regjistruar";
                }
                else
                    if (pass.Equals("found"))
                    {
                        
                        Label1.Text = "Welcome we are currently fixing this page thank you for visiting!";
                        Session["id"] = UsersDB.userId(email.Text);
                        Session["sessionValue"] = "set";
                        Session["email"] = email.Text;
                        Session["company"] = UsersDB.userType(email.Text);

                        //check if a company is logged in and redirect it to its profile otherwise redirect the normal user
                        //i ke te gjitha gati vetem shiko pse nuk punon if
                        if (Convert.ToInt32(UsersDB.userType(email.Text)) == 1)
                        {
                            Response.Redirect("companyProfile.aspx");
                        }
                        else
                            if (Convert.ToInt32(UsersDB.userType(email.Text)) != 1)
                            {
                            Response.Redirect("profile.aspx");
                        }
                         //Server.Transfer("profile.aspx", true);
                    }
                    else
                        if (pass.Equals("wrong"))
                        {
                            Label1.Text = "Wrong password motherfucker";
                        }

            }
            else
            {
                Label1.Text = "*Duhet te plotesoni te gjitha fushat";
            }
        }

    }
}