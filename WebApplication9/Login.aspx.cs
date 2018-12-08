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
                        Label1.Text = "Welcome bitchess";
                        Session["sessionValue"] = "set";
                        Session["email"] = email.Text;
                        Server.Transfer("mainPage.aspx", true);
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