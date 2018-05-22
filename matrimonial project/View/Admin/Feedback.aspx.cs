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
    public partial class Feedback : System.Web.UI.Page
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
                string strquery = "SELECT * from dbo.Feedback order by Id";
                SqlCommand cmd = new SqlCommand(strquery);
                DBconnection conn_ = new DBconnection();
                DataTable dt = conn_.SelectData(cmd);
                if (dt != null && dt.Rows.Count > 0)
                {
                    Message.Visible = false;
                    FeedbackData.DataSource = dt;
                    FeedbackData.DataBind();
                }
            }
            catch (Exception ex)
            {
                success.Visible = true;
                success.Text = ex.ToString();
                success.CssClass = "alert alert-danger";
            }
        }

        protected void FeedbackData_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            FeedbackData.PageIndex = e.NewPageIndex;
            this.getFeedbackData();
        }


        protected void FeedbackData_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.ToString() == "Show")
                {
                    string args = e.CommandArgument.ToString();
                    string strQuery = "SELECT * FROM Feedback WHERE Id = @Id";
                    SqlCommand cmd = new SqlCommand(strQuery);
                    cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = args;
                    DBconnection conn_ = new DBconnection();
                    DataTable dt = conn_.SelectData(cmd);
                    if (dt != null && dt.Rows.Count > 0)
                    {
                        Message.Visible = true;
                        foreach (DataRow row in dt.Rows)
                        {
                            Fid.Value = args.ToString();
                            Name.Text = row["Name"].ToString();
                            Date.Text = row["Date"].ToString();                            
                            UserName.Text = row["Username"].ToString();
                            FeedbackMessage.Text = row["Feedback"].ToString();                           
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

        protected void Read_Click(object sender, EventArgs e)
        {
            try
            {
                string strQuery = "update Feedback set Status=0 where Id = @Id "; ;
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@Id", SqlDbType.Int).Value =Fid.Value;
                DBconnection conn_ = new DBconnection();
                bool result = conn_.ExecuteData(cmd);
                if (result)
                {
                    getFeedbackData();
                }
            }
            catch (Exception ex)
            {
                success.Text = Convert.ToString(ex);
            }
        }
    }
}