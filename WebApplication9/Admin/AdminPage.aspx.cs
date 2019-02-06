using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Convert.ToInt32(Session["admin"]) == 1){

            }else{
                System.Windows.Forms.MessageBox.Show("Kjo faqe mund te aksesohet vetem nga admini!");
                Response.Redirect("~/Admin/AdminLogin.aspx");
            }
        }
    }
}