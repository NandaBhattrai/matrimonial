using matrimonial_project.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace matrimonial_project.View.Admin
{
    public partial class UserList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getFeedbackData();
            }
        }

        private void getFeedbackData()
        {
            try
            {
                string strquery = "SELECT ProfileId,Name,Email,Mobile,Country,ProfileStatus,RegisterId from dbo.UserProfile order by RegisterId";
                SqlCommand cmd = new SqlCommand(strquery);
                DBconnection conn_ = new DBconnection();
                DataTable dt = conn_.SelectData(cmd);
                if (dt != null && dt.Rows.Count > 0)
                {
                    UserData.DataSource = dt;
                    UserData.DataBind();
                }
            }
            catch (Exception ex)
            {
                success.Visible = true;
                success.Text = ex.ToString();
                success.CssClass = "alert alert-danger";
            }
        }

        protected void UserData_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            UserData.PageIndex = e.NewPageIndex;
            this.getFeedbackData();
        }

        protected void UserData_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.ToString() == "Show")
                {
                    string args = e.CommandArgument.ToString();
                    Session["Id"] = args;
                    Response.Redirect("UserDetail.aspx", false);
                }
            }
            catch (Exception ex)
            {
                success.Text = Convert.ToString(ex);
            }
        }
    }
}