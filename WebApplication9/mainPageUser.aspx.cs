using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class mainPageUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["sessionValue"]) == "set")
            {
                if (Convert.ToInt32(UsersDB.userType(Convert.ToString(Session["email"]))) == 1)
                {
                    if (UsersDB.profileFilled(Convert.ToInt32(Session["id"]), "company"))
                    {
                        profile.NavigateUrl = "~/companyProfile.aspx";
                    }
                    else
                    {
                        profile.NavigateUrl = "~/companyProfileToFill.aspx";
                    }
                    home.NavigateUrl = "~/mainPageCompany.aspx";
                    notification.NavigateUrl = "~/UserNotifications.aspx";

                }
                else
                    if (Convert.ToInt32(UsersDB.userType(Convert.ToString(Session["email"]))) != 1)
                    {
                        if (UsersDB.profileFilled(Convert.ToInt32(Session["id"]), "user"))
                        {
                            profile.NavigateUrl = "~/profile.aspx";
                        }
                        else
                        {
                            profile.NavigateUrl = "~/profileToFill.aspx";
                        }

                        home.NavigateUrl = "~/mainPageUser.aspx";
                        notification.NavigateUrl = "~/CompanyNotifications.aspx";
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
            String opField = Select1.Items[Select1.SelectedIndex].Value;
            System.Web.UI.HtmlControls.HtmlTextArea textArea = (System.Web.UI.HtmlControls.HtmlTextArea)(form1.FindControl("description"));
            String description = textArea.Value;
            int user = Convert.ToInt32(Session["id"]);
            if (jobtitle.Text.Equals("") || description.Equals(""))
            {
                Label5.Text = "Duhet ti plotesoni te gjitha fushat!";
            }
            else
            {
                NormalUserDB.addNottification(jobtitle.Text, opField, Convert.ToInt32(Select2.Items[Select2.SelectedIndex].Value), description, user);
                jobtitle.Text = "";
                textArea.Value = "";
                ListView1.DataBind();
              

            }
            
            
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}