﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["sessionValue"]) == "set")
            {
                if (Convert.ToInt32(UsersDB.userType(Convert.ToString(Session["email"]))) == 1)
                {

                    home.NavigateUrl = "~/mainPageCompany.aspx";
                    notification.NavigateUrl = "~/UserNotifications.aspx";

                }
                else
                    if (Convert.ToInt32(UsersDB.userType(Convert.ToString(Session["email"]))) != 1)
                    {

                        home.NavigateUrl = "~/mainPageUser.aspx";
                        notification.NavigateUrl = "~/CompanyNotifications.aspx";
                    }
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Kjo faqe nuk mund te aksesohet sepse ju nuk jeni te loguar!");
                Response.Redirect("Login.aspx");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Web.UI.HtmlControls.HtmlTextArea textArea = (System.Web.UI.HtmlControls.HtmlTextArea)(form1.FindControl("description"));
            String description = textArea.Value;
            int user = Convert.ToInt32(Session["id"]);
            if(name.Text.Equals("") || contactnumber.Text.Equals("") || contactemail.Text.Equals("") || description.Equals("") || state.Text.Equals("") || city.Text.Equals("") || street.Text.Equals("")){
                Label8.Text = "Ju lutem plotesoni te gjitha fushat!";
            }else{
                //CompanyDB.addCompanyInfo()
            }
        }

    }
}