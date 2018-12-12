using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["profile"] != "set")
            //{
            //    Label12.Visible = false;
            //}
            //else
            //{
            //    Label12.Visible = false;
            //} 
            if (NormalUserDB.userInfo(Convert.ToInt32(Session["id"])) == true)
            {
                form1.Visible = false;
            }
            
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer("mainPage.aspx", true);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

       

        protected void Button5_Click1(object sender, EventArgs e)
        {   
            
            TableRow row = new TableRow();
            TableCell cell = new TableCell();
            cell.Text = DropDownList1.SelectedValue;
            row.Cells.Add(cell);
            Table1.Rows.Add(row);
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

    }
}