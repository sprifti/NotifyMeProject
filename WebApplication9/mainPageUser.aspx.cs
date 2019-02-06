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


            }
            
            


            
        }
    }
}