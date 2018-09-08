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
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getReportData();
            }
        }

        private void getReportData()
        {
            try
            {
                string strquery = "SELECT * from dbo.Report order by ReportId DESC";
                SqlCommand cmd = new SqlCommand(strquery);
                DBconnection conn_ = new DBconnection();
                DataTable dt = conn_.SelectData(cmd);
                if (dt != null && dt.Rows.Count > 0)
                {
                    ReportData.DataSource = dt;
                    ReportData.DataBind();
                }
            }
            catch (Exception ex)
            {
                success.Visible = true;
                success.Text = ex.ToString();
                success.CssClass = "alert alert-danger";
            }
        }

        protected void ReportData_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            ReportData.PageIndex = e.NewPageIndex;
            this.getReportData();
        }

        protected void ReportData_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.ToString() == "Read")
                {
                    string args = e.CommandArgument.ToString();
                    Fid.Value = args.ToString();                       
                    string str = "update Report set ReportStatus=0 where ReportId = @ReportId "; ;
                    SqlCommand cmmd = new SqlCommand(str);
                    cmmd.Parameters.Add("@ReportId", SqlDbType.Int).Value = Fid.Value;
                    DBconnection conn = new DBconnection();
                    bool result = conn.ExecuteData(cmmd);
                    if (result)
                    {
                        getReportData();
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