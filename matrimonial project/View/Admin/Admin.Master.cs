using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace matrimonial_project.View.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["Name"].ToString()))
            {
                string UserName_ = (string)(Session["Name"]);
                UserName.Text = UserName_.ToString();
                AdminName.Text = UserName_.ToString();
                AdminName.ForeColor = System.Drawing.Color.White;
            }
            else
                Response.Redirect("../Home.aspx", false);
        }
    }
}