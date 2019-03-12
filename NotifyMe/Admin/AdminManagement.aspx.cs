using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Mail;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9.Admin
{
    public partial class AdminManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void InsertButton_Click(object sender, EventArgs e)
        {
            
            System.Net.Mail.MailMessage m = new System.Net.Mail.MailMessage();
            SmtpClient sc = new SmtpClient();
            try
            {

                String email = UsersDB.getLastAdmin();
                m.From = new MailAddress("testingserena@gmail.com", "testingserena@gmail.com");
                m.To.Add(new MailAddress("serena@tegeria.com", "serena@tegeria.com"));

                m.Subject = "Ndrysho fjalekalimin";
                m.IsBodyHtml = true;
                String body = "Ju mund te ndryshoni fjalekalimin tuaj duke klikuar <html><body><a href='http://localhost:59525/confirmPassword.aspx?&email=" + email + "&user_type=" + "admin" + "'>ketu</a></body></html>";
                m.Body = body;
                sc.Host = "smtp.gmail.com";
                sc.Port = 587;
                sc.Credentials = new
                System.Net.NetworkCredential("testingserena@gmail.com", "Serena123!");
                sc.EnableSsl = true;
                sc.Send(m);

            }
            catch (Exception ex)
            {

            }
        }

      

        
    }
}