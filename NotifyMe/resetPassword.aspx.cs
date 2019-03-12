using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class resetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Net.Mail.MailMessage m = new System.Net.Mail.MailMessage();
            SmtpClient sc = new SmtpClient();
            try
            {
                m.From = new MailAddress("testingserena@gmail.com", "testingserena@gmail.com");
                m.To.Add(new MailAddress(email.Text, email.Text));
                String usertype = "normal";
                m.Subject = "Ndrysho Password";
                m.IsBodyHtml = true;
                String body = "Ju mund te ndryshoni fjalekalimin tuaj duke klikuar <html><body><a href='http://localhost:59525/confirmPassword.aspx?&email=" + email.Text + "&usertype=" + usertype + "'>ketu</a></body></html>";
                m.Body = body;
                sc.Host = "smtp.gmail.com";
                sc.Port = 587;
                sc.Credentials = new
                System.Net.NetworkCredential("testingserena@gmail.com", "Serena123!");
                sc.EnableSsl = true;
                sc.Send(m);
                email.Text = "";
            }
            catch (Exception ex)
            {

            }
        }
    }
}