using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class notifications : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void notification_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["company"]) == 1)
            {
                Response.Redirect("companyNotification.aspx");
            }else
                if (Convert.ToInt32(Session["company"]) != 1)
                {
                    Response.Redirect("userNotification.aspx");
                }
            
            int id = Convert.ToInt32(Session["id"]);
            //NormalUserDB.addNottification("1", "1", "1", "1", id );
        }
    }
}