using matrimonial_project.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace matrimonial_project.View
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.getvalue();
        }

        private void getvalue()
        {
            DataTable dt = new DataTable();
            string strQuery = "SELECT * FROM dbo.Register where UserId=@UserId";
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@UserId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserId"].ToString());
            DBconnection conn_ = new DBconnection();
            dt = conn_.SelectData(cmd);
            if (dt.Rows.Count > 0)
            {
                DataRow row = dt.Rows[0];
                name.Value = row["Name"].ToString();
                tel.Value = row["Mobile"].ToString();
                email.Value = row["Email"].ToString();
                username.Value = row["UserName"].ToString();
            }
            
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                string Query = "INSERT INTO dbo.Feedback (Name,Email,Username,Phone,Feedback,Date,Status,RegisterId) VALUES (@Name,@Email,@Username,@Phone,@Feedback,@Date,@Status,@RegisterId)";
                SqlCommand cmmd = new SqlCommand(Query);
                cmmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = name.Value.Trim();
                cmmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = email.Value.Trim();            
                cmmd.Parameters.Add("@Username", SqlDbType.VarChar).Value = username.Value.Trim();
                cmmd.Parameters.Add("@Phone", SqlDbType.VarChar).Value = tel.Value.Trim();
                cmmd.Parameters.Add("@Feedback", SqlDbType.VarChar).Value = feedback.Value.Trim();
                cmmd.Parameters.Add("@Date", SqlDbType.VarChar).Value = DateTime.Now.ToString("yyyy-MM-dd");
                cmmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = "1";
                cmmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserId"]);
                DBconnection conn = new DBconnection();
                bool result = conn.ExecuteData(cmmd);
                if (result)
                {                    
                    message.Text = "Successfully Submited";
                    feedback.Value = "";
                }
                else
                {
                    message.Text = "Sorry Something Went Wrong";
                }
            }
            catch (Exception ex)
            {
                message.Text = Convert.ToString(ex);
            }
        }
       
    }
}