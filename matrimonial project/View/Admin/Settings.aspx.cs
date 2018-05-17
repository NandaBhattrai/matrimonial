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
    public partial class Settings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
            }
        }

        private void GetData()
        {
            try
            {
                DataTable dt = new DataTable();
                string UserName = (string)(Session["Name"]);
                string Password = (string)(Session["Password"]);
                string strQuery = "SELECT * FROM dbo.Admin WHERE Name=@Name";
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = UserName;
                DBconnection conn_ = new DBconnection();
                dt = conn_.SelectData(cmd);
                if (dt.Rows.Count > 0)
                {
                    DataRow row = dt.Rows[0];
                    passwordid.Value = row["AdminId"].ToString();
                    name.Value = row["Name"].ToString();
                    datapassword.Value = row["Password"].ToString();
                }
            }
            catch (Exception ex)
            {
                message.Text = Convert.ToString(ex);
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (changePassword.Value.Trim().ToString() == confirmPassword.Value.Trim().ToString())
            {

                string strQuery = "UPDATE dbo.Admin SET Password=@Password WHERE AdminId=@AdminId ";
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = changePassword.Value.Trim();
                cmd.Parameters.Add("@AdminId", SqlDbType.Int).Value = passwordid.Value.Trim();
                DBconnection conn_ = new DBconnection();
                bool result = conn_.ExecuteData(cmd);
                if (result)
                {
                    message.Text = "successfully changed";
                    message.ForeColor = System.Drawing.Color.Red;
                }

                else
                {
                    message.Text = "something went wrong ";
                    message.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                message.Text = "password does not match";
                message.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void checked_Click(object sender, EventArgs e)
        {
            try
            {
                string pass2 = datapassword.Value.Trim().ToString();
                string pass = currentpassword.Value.Trim().ToString();
                if (pass2 == pass)
                {
                    checking.Visible = true;
                    changePassword.Disabled = false;
                    confirmPassword.Disabled = false;
                    @checked.Visible = false;
                    currentpassword.Disabled = true;
                }
                else
                {
                    message.Text = "password does not match ";
                    message.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                message.Text = Convert.ToString(ex);
            }
        }
    }
}