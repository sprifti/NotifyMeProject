using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class profileToFill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["sessionValue"]) == "set")
            {
                if (Convert.ToInt32(UsersDB.userType(Convert.ToString(Session["email"]))) == 1)
                {
                    
                    home.NavigateUrl = "~/mainPageCompany.aspx";
                    notification.NavigateUrl = "~/UserNotifications.aspx";

                }
                else
                    if (Convert.ToInt32(UsersDB.userType(Convert.ToString(Session["email"]))) != 1)
                    {
                      
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
            String languageChoosed = language.Items[language.SelectedIndex].Value;
            String listeningLevel = listening.Items[listening.SelectedIndex].Value;
            String speakingLevel = speaking.Items[speaking.SelectedIndex].Value;
            String writingLevel = writing.Items[writing.SelectedIndex].Value;
            int user = Convert.ToInt32(Session["id"]);
            NormalUserDB.addLanguage(languageChoosed, listeningLevel, speakingLevel, writingLevel, user);
            //ListView1.DataSource = SqlDataSource1;
            ListView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
            System.Web.UI.HtmlControls.HtmlTextArea textArea = (System.Web.UI.HtmlControls.HtmlTextArea)(form1.FindControl("cmpSkills"));
            String cmpSkill = textArea.Value;
            if (cmpSkill.Equals(""))
            {
                cmpSkillsError.Text = "Ju lutem fushen!";

            }
            else
            {
                int user = Convert.ToInt32(Session["id"]);
                NormalUserDB.addComputerSkill(cmpSkill, user);
                ListView2.DataBind();
                textArea.Value = "";
            }
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            System.Web.UI.HtmlControls.HtmlTextArea textArea = (System.Web.UI.HtmlControls.HtmlTextArea)(form1.FindControl("otherSkills"));
            String otherSkill = textArea.Value;
            if (otherSkill.Equals(""))
            {
                otherSkillsError.Text = "Ju lutem plotesoni fushen!";
            }
            else
            {
                int user = Convert.ToInt32(Session["id"]);
                NormalUserDB.addOtherSkill(otherSkill, user);
                textArea.Value = "";
                ListView3.DataBind();
            }
               
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            System.Web.UI.HtmlControls.HtmlTextArea textArea = (System.Web.UI.HtmlControls.HtmlTextArea)(form1.FindControl("experience"));
            String experiences = textArea.Value;
            int user = Convert.ToInt32(Session["id"]);
             DateTime start_date = Convert.ToDateTime(startDate.Text).Date;
             DateTime end_date = Convert.ToDateTime(endDate.Text).Date;
             if (experience.Equals(""))
             {
                 experiencesError.Text = "Ju lutem plotesoni fushen!";
             }
             else
             {
                 if (start_date > end_date)
                 {
                     experiencesError.Text = "Ju lutem jepni inputin e duhur";
                 }
                 else
                 {
                     NormalUserDB.addExperience(experiences, start_date, end_date, user);
                     textArea.Value = "";
                     ListView4.DataBind();
                 }
             }
            //DateTime start_date = DateTime.ParseExact(startDate.Text,"dd-MM-yyyy", null);
            //DateTime end_date = DateTime.ParseExact(endDate.Text, "dd-MM-yyyy", null);

             
        }


        protected void Button6_Click(object sender, EventArgs e)
        {

            String eduChoosed = education.Items[education.SelectedIndex].Value;
            String degree = eduDegree.Text;
            String state = eduState.Text;
            String name = eduName.Text;
            String city = eduCity.Text;
            int user = Convert.ToInt32(Session["id"]);
            
            if (state.Equals("") || name.Equals("") || city.Equals(""))
            {
                educationError.Text = "Ju lutem plotesoni te gjitha fushat!";
            }
            else
            {
                NormalUserDB.addEducation(eduChoosed, name, city, state, degree, user);
                eduDegree.Text = "";
                eduState.Text = "";
                eduName.Text = "";
                eduCity.Text = "";
                ListView5.DataBind();
            }
        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            String opField = operationField.Items[operationField.SelectedIndex].Value;
            String contactNr = contactNumber.Text;
            String contactEm = contactEmail.Text;
            System.Web.UI.HtmlControls.HtmlTextArea textArea = (System.Web.UI.HtmlControls.HtmlTextArea)(form1.FindControl("description"));
            String description = textArea.Value;
            int user = Convert.ToInt32(Session["id"]);

            if (contactEm.Equals("") || contactNr.Equals("") || description.Equals("")  || state.Text.Equals("") || city.Text.Equals("") || street.Text.Equals(""))
            {
                infoError.Text = "Ju lutem plotesoni te gjitha fushat!";
            }
            else
            {
                NormalUserDB.normalUserInfo(opField, contactNr, contactEm, description, user);
                UsersDB.addAddress(state.Text, city.Text, street.Text, user);
                //UsersDB.addSocialMedia("", facebook.Text, twitter.Text, linkedin.Text, instagram.Text, user);
                Response.Redirect("profile.aspx");
            }
        }
    }
}