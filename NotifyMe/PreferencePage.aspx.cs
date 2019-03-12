using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class PreferencePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //Checks if user is logged in because only logged in users can access this page
            if (Convert.ToString(Session["sessionValue"]) == "set")
            {
                if (Convert.ToInt32(UsersDB.userType(Convert.ToString(Session["email"]))) == 1)
                {
                    if (UsersDB.profileFilled(Convert.ToInt32(Session["id"]), "company"))
                    { 
                    }

                }
               
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Kjo faqe nuk mund te aksesohet sepse ju nuk jeni te loguar!");
                Response.Redirect("Login.aspx");

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int user = Convert.ToInt32(Session["id"]);
            foreach (ListItem i in CheckBoxList1.Items)
            {
                if (i.Selected == true)
                {
                    UsersDB.addPreference(user, i.Text);
                }
            }

            if (Convert.ToInt32(Session["company"]) == 1)
            {

                Response.Redirect("mainPageCompany.aspx");
            }
            else
            {
                Response.Redirect("mainPageUser.aspx");
            }
        }

    }
}