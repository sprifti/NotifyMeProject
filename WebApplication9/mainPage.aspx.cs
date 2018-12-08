using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class mainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["sessionValue"] == "set")
            {

            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Kjo faqe nuk mund te aksesohet sepse ju nuk jeni te loguar!");
                Server.Transfer("Login.aspx", true);
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Server.Transfer("mainPage.aspx", true);
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Server.Transfer("profile.aspx", true);
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Session["sessionValue"] = "notset";
            Server.Transfer("Login.aspx", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("notification.aspx", true);
        }
    }
}