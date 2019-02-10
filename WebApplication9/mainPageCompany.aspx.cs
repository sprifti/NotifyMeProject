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

        protected void Button2_Click(object sender, EventArgs e)
        {
            String opField = operationField.Items[operationField.SelectedIndex].Value;
            System.Web.UI.HtmlControls.HtmlTextArea textArea = (System.Web.UI.HtmlControls.HtmlTextArea)(form1.FindControl("description"));
            String description = textArea.Value;
            System.Web.UI.HtmlControls.HtmlTextArea textArea2 = (System.Web.UI.HtmlControls.HtmlTextArea)(form1.FindControl("skills"));
            String skills = textArea2.Value;
            System.Web.UI.HtmlControls.HtmlTextArea textArea3 = (System.Web.UI.HtmlControls.HtmlTextArea)(form1.FindControl("education"));
            String education = textArea3.Value;
            int user = Convert.ToInt32(Session["id"]);
            String type = jobtype.Items[jobtype.SelectedIndex].Value;
            String gendertype = gender.Items[gender.SelectedIndex].Value;
            
            if (description.Equals("") || skills.Equals("") || education.Equals("") || jobtitle.Text.Equals(""))
            {
                errors.Text = "Ju lutem plotesoni te gjitha fushat!";
            }
            else
            {
                CompanyDB.addNotifications(opField, Convert.ToInt32(type), experience.Text , skills, gendertype, education, description, jobtitle.Text, user);
                
                Response.Redirect("mainPageCompany.aspx");

            }

        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    System.Web.UI.HtmlControls.HtmlTextArea textArea2 = (System.Web.UI.HtmlControls.HtmlTextArea)(form1.FindControl("skills"));
        //    String skills = textArea2.Value;
        //    int user = Convert.ToInt32(Session["id"]);
        //    if (skills.Equals(""))
        //    {
        //        skillError.Text = "Ju lutem plotesoni fushen!";
        //    }
        //    else
        //    {
        //        NormalUserDB.addOtherSkill(skills, user);
        //        ListView1.DataBind();
        //    }
            
        //}

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    String jobTitle = jobtitle.Text;
        //    String jobType = TextBox1.Text;
        //    String description = description.value;

        //    output.Text = jobTitle + "_" + jobType + "_" + description;
        //}
    
    }
}