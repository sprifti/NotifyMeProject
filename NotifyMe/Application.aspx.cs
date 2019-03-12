using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class Application : System.Web.UI.Page
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

            int idcomp = Convert.ToInt32(Session["id"]);
            String query = "SELECT * FROM Users WHERE id = @id";
            SqlConnection connect = UsersDB.GetConnection();
            SqlCommand command = new SqlCommand(query, connect);
            command.Parameters.AddWithValue("@id", idcomp);
            connect.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                ouremail.Text = Convert.ToString(reader["email"]);
            }

            int id = Convert.ToInt32(Request.QueryString["id"]);
            query = "SELECT * FROM Users WHERE id = @id";
            connect = UsersDB.GetConnection();
            command = new SqlCommand(query, connect);
            command.Parameters.AddWithValue("@id", id);
            connect.Open();
            reader = command.ExecuteReader();
            while (reader.Read())
            {
                useremail.Text = Convert.ToString(reader["email"]);

                subject.Text = "Pergjigje per lajmerimin";
            }

        }

        protected void send_Click(object sender, EventArgs e)
        {
            String email = "";
            int id = Convert.ToInt32(Session["id"]);
            String query = "SELECT * FROM Users WHERE id = @id";
            SqlConnection connect = UsersDB.GetConnection();
            SqlCommand command = new SqlCommand(query, connect);
            command.Parameters.AddWithValue("@id", id);
            connect.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                email = Convert.ToString(reader["Email"]);
            }

            System.Web.UI.HtmlControls.HtmlTextArea textArea = (System.Web.UI.HtmlControls.HtmlTextArea)(form1.FindControl("message"));
            String message = textArea.Value;
            String body = message;
            System.Net.Mail.MailMessage m = new System.Net.Mail.MailMessage();
            SmtpClient sc = new SmtpClient();
            try
            {
                m.From = new MailAddress("testingserena@gmail.com", "testingserena@gmail.com");
                m.To.Add(new MailAddress(useremail.Text, useremail.Text));
                m.Bcc.Add(new MailAddress(email, email));
                String usertype = "normal";
                m.Subject = subject.Text;
                m.IsBodyHtml = true;
                m.Body = body;
                sc.Host = "smtp.gmail.com";
                sc.Port = 587;
                sc.Credentials = new
                System.Net.NetworkCredential("testingserena@gmail.com", "Serena123!");
                sc.EnableSsl = true;
                sc.Send(m);
                textArea.Value = "";
                Label5.Text = "Email-i u dergua me sukses!";

            }
            catch (Exception ex)
            {

            }
        }
    }
}