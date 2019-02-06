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
            if (Convert.ToString(Session["sessionValue"]) == "set")
            {
                if (Convert.ToInt32(UsersDB.userType(Convert.ToString(Session["email"]))) == 1)
                {
                    profile.NavigateUrl = "~/companyProfile.aspx";
                    notification.NavigateUrl = "~/notifications.aspx";
              
                }
                else
                    if (Convert.ToInt32(UsersDB.userType(Convert.ToString(Session["email"]))) != 1)
                    {
                        profile.NavigateUrl = "~/profile.aspx";
                  
                    }
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Kjo faqe nuk mund te aksesohet sepse ju nuk jeni te loguar!");
                Server.Transfer("Login.aspx", true);
            }
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    String jobTitle = jobtitle.Text;
        //    String jobType = TextBox1.Text;
        //    String description = description.value;

        //    output.Text = jobTitle + "_" + jobType + "_" + description;
        //}
    
    }
}