using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class CompanyNotifications1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CreateNotifications();
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

                    }
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Kjo faqe nuk mund te aksesohet sepse ju nuk jeni te loguar!");
                Response.Redirect("Login.aspx");

            }
        }

        //select Users.name, id_user ,job_title, job_type, description, OperationField.name as operating_field from UserNotifications inner join OperationField on UserNotifications.operation_field = OperationField.Id inner join Users on Users.id = UserNotifications.id_user  where operation_field in(select operatingField from User_Preferences where id_user = @id)
        public void CreateNotifications()
        {
            
            int user = Convert.ToInt32(Session["id"]);

            String query = "select CompanyNotifications.id_user, CompanyInfo.name as username, OperationField.name as operatingfield, skills, type, job_title, job_description, education_description, year_experience from CompanyNotifications inner join OperationField on CompanyNotifications.operation_field = OperationField.Id inner join Users on Users.id = CompanyNotifications.id_user  inner join jobType ON jobType.Id = CompanyNotifications.job_type inner join CompanyInfo on CompanyInfo.id_user = Users.Id  where CompanyNotifications.operation_field in(select operatingField from User_Preferences where id_user = @id)";
            
            SqlConnection connect = UsersDB.GetConnection();
            SqlCommand command = new SqlCommand(query, connect);
            command.Parameters.AddWithValue("@id", user);
            connect.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                
                CreateDiv(Convert.ToString(reader["username"]), Convert.ToInt32(reader["id_user"]), Convert.ToString(reader["job_title"]), Convert.ToString(reader["type"]), Convert.ToString(reader["operatingfield"]), Convert.ToString(reader["skills"]), Convert.ToString(reader["job_description"]), Convert.ToString(reader["education_description"]), Convert.ToInt32(reader["year_experience"]));
            }
        }

        public void CreateDiv(String username, int id_user, String jobtitle, String jobtype,  String opField, String skills, String job_description, String education_description, int experience )
        {
            HtmlGenericControl div = new HtmlGenericControl("div");
            //div.Attributes.Add("id", username);
            Label name = new Label();
            name.Text = username + " kerkon te punesoje " ;
            div.Controls.Add(name);
            Label title = new Label();
            title.Text = jobtitle + " me ";
            div.Controls.Add(title);
            Label type = new Label();
            type.Text = jobtype + " ne fushen e ";
            div.Controls.Add(type);
            Label field = new Label();
            field.Text = opField;
            div.Controls.Add(field);
            Label exp = new Label();
            exp.Text = " me " + experience + " vite eksperience.<br />";
            div.Controls.Add(exp);
            Label education = new Label();
            education.Text = "Edukimi: <br />" + education_description + "<br />";
            div.Controls.Add(education);
            Label skill = new Label();
            skill.Text = "Aftesite: <br />" + skills + "<br />";
            div.Controls.Add(skill);
            
            Label desc = new Label();
            desc.Text = "Pergjegjesite: <br />" + job_description + "<br /> Per me shume informacione <br />";
            div.Controls.Add(desc);
            
            
            Button btn = new Button();
            btn.Text = "Vizito profilin";
            btn.ID = id_user.ToString() + "_" + job_description.IndexOf("a") + job_description.IndexOf("i");
            btn.CssClass = "btn btn-primary";
            btn.Style.Add("margin", "10px");
            btn.Click += new EventHandler(Button1_Click);
            div.Controls.Add(btn);
            Button button = new Button();
            button.Text = "Apliko";
            button.ID = id_user.ToString() + "_" + job_description.IndexOf("a");
            button.CssClass = "btn btn-primary";
            button.Click += new EventHandler(Button2_Click);
            div.Controls.Add(button);

            mainDiv.Controls.Add(div);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String btnclicked = ((Button)sender).ID;
            int id = Convert.ToInt32(btnclicked.Split('_')[0]);
            Response.Redirect("CompaniesProfile.aspx?id=" + id.ToString());

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String btnclicked = ((Button)sender).ID;
            int id = Convert.ToInt32(btnclicked.Split('_')[0]);
            Response.Redirect("Application.aspx?id=" + id.ToString());

        }
    }
}