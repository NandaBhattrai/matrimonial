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
    public partial class AdminList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getAdminData();
            }
        }

        private void getAdminData()
        {
            try
            {
                string strquery = "SELECT AdminId,Name,Gender,Address,Email,Mobile,AdminStatus,AdminImage from dbo.Admin order by AdminId";
                SqlCommand cmd = new SqlCommand(strquery);
                DBconnection conn_ = new DBconnection();
                DataTable dt = conn_.SelectData(cmd);
                if (dt != null && dt.Rows.Count > 0)
                {
                    Message.Visible = false;
                    AdminData.DataSource = dt;
                    AdminData.DataBind();
                }
            }
            catch (Exception ex)
            {
                success.Visible = true;
                success.Text = ex.ToString();
                success.CssClass = "alert alert-danger";
            }
        }

        protected void AdminData_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            AdminData.PageIndex = e.NewPageIndex;
            this.getAdminData();
        }

        protected void AdminData_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.ToString() == "Show")
                {
                    string args = e.CommandArgument.ToString();
                    string strQuery = "SELECT * FROM Admin WHERE AdminId = @AdminId";
                    SqlCommand cmd = new SqlCommand(strQuery);
                    cmd.Parameters.Add("@AdminId", SqlDbType.VarChar).Value = args;
                    DBconnection conn_ = new DBconnection();
                    DataTable dt = conn_.SelectData(cmd);
                    if (dt != null && dt.Rows.Count > 0)
                    {
                        Message.Visible = true;
                        foreach (DataRow row in dt.Rows)
                        {
                            Fid.Value = args.ToString();
                            Name.Text = row["Name"].ToString();                            
                            Email.Text = row["Mobile"].ToString();
                            Phone.Text = row["Email"].ToString();
                            var Image = row["AdminImage"].ToString();
                            Image = "../../Upload/" + Image;
                            Image = "<img src='" + Image + "'/>";
                            AdminImage.Text = Image;
                        }
                    }
                    else
                    {
                        success.Text = "Sorry No data found";
                    }
                }
                else
                {
                    success.Text = "Sorry something went wrong";
                }
            }
            catch (Exception ex)
            {
                success.Text = Convert.ToString(ex);
            }
        }
    }
}