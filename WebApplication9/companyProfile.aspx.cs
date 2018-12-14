using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class companyProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (CompanyDB.companyInfo(Convert.ToInt32(Session["id"])) == true)
            {
                form1.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["id"]);
            CompanyDB.addCompanyInfo("test", "test", "test", "test",id , "test" ,"test", "test", "test");
            Response.Redirect("companyProfile.aspx");
        }
    }
}