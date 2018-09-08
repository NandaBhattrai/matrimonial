using matrimonial_project.model;
using System;
using System.Data;
using System.Data.SqlClient;

namespace matrimonial_project.View
{
    public partial class UserVerification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["UserName"].ToString()))
            {
                string UserName_ = (string)(Session["UserName"]);
            }
            else
                Response.Redirect("../Home.aspx", false);
        }

        protected void btn_Verify_Click(object sender, EventArgs e)
        {

            //username and & password logic
            DataTable dt = new DataTable();
            string strQuery = "SELECT Token,Name,UserId FROM dbo.Register WHERE Token=@Token AND UserName=@UserName";
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@Token", SqlDbType.VarChar).Value = TokenCode.Value.Trim();
            cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = Session["UserName"].ToString();
            DBconnection conn_ = new DBconnection();
            dt = conn_.SelectData(cmd);
            if (dt.Rows.Count > 0)
            {
                DataRow row = dt.Rows[0];
                string id = row["UserId"].ToString();
                Session["UserId"] = id;
                this.UpdateVerification();

            }
            else
            {
                string msg = "Something Went Wrong!!!";
                Response.Write("<script>alert('" + msg + "')</script>");
                Response.Redirect("Home.aspx", false);
            }
        }

        private void UpdateVerification()
        {
            string strQuery = "Update dbo.Register set UserStatus=1 WHERE UserName=@UserName";
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = Session["UserName"].ToString();
            DBconnection conn_ = new DBconnection();
            bool result = conn_.ExecuteData(cmd);
            if (result)
            {

                string msg = "Registration Verified Now LogIn!!!";
                Response.Write("<script>alert('" + msg + "')</script>");
                Response.Redirect("ProfileMaking.aspx", false);
            }
        }
    }
}