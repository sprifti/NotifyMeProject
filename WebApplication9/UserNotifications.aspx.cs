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
    public partial class UserNotifications1 : System.Web.UI.Page
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
                        CreateNotifications();
                      
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
        private void CreateNotifications(){
            int user = Convert.ToInt32(Session["id"]);
            String query = "select Users.name AS username, id_user ,job_title, jobType.type as job_type, description, OperationField.name as operating_field from UserNotifications inner join OperationField on UserNotifications.operation_field = OperationField.Id inner join Users on Users.id = UserNotifications.id_user inner join jobType on UserNotifications.job_type = jobType.Id  where operation_field in(select operatingField from User_Preferences where id_user = @id)";
            SqlConnection connect = UsersDB.GetConnection();
            SqlCommand command = new SqlCommand(query, connect);
            command.Parameters.AddWithValue("@id", user);
            connect.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                CreateDiv(Convert.ToString(reader["username"]), Convert.ToInt32(reader["id_user"]), Convert.ToString(reader["job_title"]), Convert.ToString(reader["job_type"]), Convert.ToString(reader["description"]), Convert.ToString(reader["operating_field"]));
                    
            }
        }

        private void CreateDiv(String username, int id_user, String jobtitle, String jobtype, String description, String opField)
        {
            HtmlGenericControl div = new HtmlGenericControl("div");
            //div.Attributes.Add("id", username);
          
                Label name = new Label();
                name.Text = username + " kerkon te punesohet si ";
                div.Controls.Add(name);
                Label title = new Label();
                title.Text = jobtitle;
                div.Controls.Add(title);
                Label field = new Label();
                field.Text = " ne fushen e " + opField;
                div.Controls.Add(field);
                Label type = new Label();
                type.Text = " me " + jobtype + "." + "<br />";
                div.Controls.Add(type);
                Label desc = new Label();
                desc.Text = "Cfare ofron? " + "<br />" + description + "<br /> Per me teper informacione <br />";
                div.Controls.Add(desc);

                Button btn = new Button();
                btn.Text = "Vizito profilin";
                btn.ID = id_user.ToString() + "_" + description.IndexOf("a") + description.IndexOf("i");
                btn.CssClass = "btn btn-primary";
                btn.Style.Add("margin", "10px");
                btn.Click += new EventHandler(Button1_Click);
                div.Controls.Add(btn);
                Button button = new Button();
                button.Text = "Dergo email";
                button.ID = id_user.ToString() + "_" + description.IndexOf("a");
                button.CssClass = "btn btn-primary";
                button.Click += new EventHandler(Button2_Click);
                div.Controls.Add(button);

                mainDiv.Controls.Add(div);
            
          
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String btnclicked = ((Button)sender).ID;
            int id = Convert.ToInt32(btnclicked.Split('_')[0]);
            Response.Redirect("UserProfile.aspx?id=" + id.ToString());
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String btnclicked = ((Button)sender).ID;
            int id = Convert.ToInt32(btnclicked.Split('_')[0]);
            Response.Redirect("SendEmail.aspx?id=" + id.ToString());
            
        }
      
    }
}