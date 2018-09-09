using matrimonial_project.model;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace matrimonial_project.View.Admin
{
    public partial class SuccessStory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getStoryData();
            }
        }

        private void getStoryData()
        {
            try
            {
                string strquery = "SELECT * from dbo.Story order by StoryId DESC";
                SqlCommand cmd = new SqlCommand(strquery);
                DBconnection conn_ = new DBconnection();
                DataTable dt = conn_.SelectData(cmd);
                if (dt != null && dt.Rows.Count > 0)
                {
                    Message.Visible = false;
                    StoryData.DataSource = dt;
                    StoryData.DataBind();
                }
            }
            catch (Exception ex)
            {
                success.Visible = true;
                success.Text = ex.ToString();
                success.CssClass = "alert alert-danger";
            }
        }

        protected void StoryData_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            StoryData.PageIndex = e.NewPageIndex;
            this.getStoryData();
        }

        protected void StoryData_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.ToString() == "Show")
                {
                    string args = e.CommandArgument.ToString();
                    string strQuery = "SELECT * FROM Story WHERE StoryId = @StoryId";
                    SqlCommand cmd = new SqlCommand(strQuery);
                    cmd.Parameters.Add("@StoryId", SqlDbType.VarChar).Value = args;
                    DBconnection conn_ = new DBconnection();
                    DataTable dt = conn_.SelectData(cmd);
                    if (dt != null && dt.Rows.Count > 0)
                    {
                        Message.Visible = true;
                        foreach (DataRow row in dt.Rows)
                        {
                            Sid.Value = args.ToString();
                            Date.Text = row["Date"].ToString();
                            ReceiverName.Text = row["RUsername"].ToString();
                            SenderName.Text = row["SUserName"].ToString();
                            StoryMessage.Text = row["Story"].ToString();
                            string Photo = row["SImage"].ToString();
                            Photo = "../../Upload/" + Photo;
                            Photo = "<img src='" + Photo + "' height:100px; width:100px;/>";
                            Image.Text = Photo;
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

        protected void Upload_Click(object sender, EventArgs e)
        {
            try
            {
                string strQuery = "update Story set Status=5 where StoryId = @StoryId "; 
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@StoryId", SqlDbType.Int).Value = Sid.Value;
                DBconnection conn_ = new DBconnection();
                bool result = conn_.ExecuteData(cmd);
                if (result)
                {
                    getStoryData();
                    //this.DeactiveProfile();
                }
            }
            catch (Exception ex)
            {
                success.Text = Convert.ToString(ex);
            }
        }

        //private void DeactiveProfile()
        //{
        //    string strQuery = "update UserProfile set ProfileStatus=0 where RUserName = @RUserName";
        //    string Query = "update UserProfile set ProfileStatus=0 where SUserName = @SUserName";
        //    SqlCommand cmd = new SqlCommand(strQuery);
        //    SqlCommand cmmd = new SqlCommand(Query);
        //    cmd.Parameters.Add("@RUserName", SqlDbType.VarChar).Value = ReceiverName.Text;
        //    cmmd.Parameters.Add("@SUserName", SqlDbType.VarChar).Value = SenderName.Text;
        //    DBconnection conn_ = new DBconnection();
        //    bool result1 = conn_.ExecuteData(cmd);
        //    bool result2 = conn_.ExecuteData(cmmd);
        //    if (result1 & result2)
        //    {
        //        getStoryData();
        //    }
        //}
    }
}