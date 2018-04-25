using matrimonial_project.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace matrimonial_project.view
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    DataTable data = this.getreligion();
                    if (data.Rows.Count > 0)
                    {
                        religion.DataSource = data;
                        religion.DataBind();
                        religion.DataTextField = "Religion";
                        religion.DataValueField = "ReligionId";
                        religion.DataBind();
                    }
                }
            }
            catch (Exception)
            {


            }
        }

        private DataTable getreligion()
        {
            DataTable dt = new DataTable();
            string strQuery = "SELECT * FROM dbo.Religion";
            SqlCommand cmd = new SqlCommand(strQuery);
            DBconnection conn_ = new DBconnection();
            dt = conn_.SelectData(cmd);
            return dt;
        }

        protected void register_Click(object sender, EventArgs e)
        {
            try
            {
                string religious = religion.SelectedItem.ToString();
                bool male = rad_male.Checked;
                bool female = rad_female.Checked;
                string gender;
                if (male)
                {
                    gender = "Male";
                }
                else
                {
                    gender = "Female";
                }

                string strQuery = "INSERT INTO dbo.Register (Name,Gender,DateOfBirth,Religion,Mobile,Email,Password,UserStatus) VALUES (@Name,@Gender,@DateOfBirth,@Religion,@Mobile,@Email,@Password,@UserStatus)";
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = name.Value.Trim();
                cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = gender;
                cmd.Parameters.Add("@DateOfBirth", SqlDbType.VarChar).Value = datepick.Value.Trim();
                cmd.Parameters.Add("@Religion", SqlDbType.VarChar).Value = religious.Trim();
                cmd.Parameters.Add("@Mobile", SqlDbType.VarChar).Value = phone.Value.Trim();
                cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = email.Value.Trim();
                cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = password.Value.Trim();
                cmd.Parameters.Add("@UserStatus", SqlDbType.VarChar).Value = "1";
                DBconnection conn_ = new DBconnection();

                bool result = conn_.ExecuteData(cmd);
                if (result)
                {

                    Response.Redirect("home.aspx", false);

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

        protected void login_Click(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(user.Value) && !string.IsNullOrEmpty(pass.Value))
                {
                    //username and & password logic
                    DataTable dt = new DataTable();
                    string strQuery = "SELECT Name,Password FROM dbo.Register WHERE Name=@Name AND Password=@Password";
                    SqlCommand cmd = new SqlCommand(strQuery);
                    cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = user.Value.Trim();
                    cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = pass.Value.Trim();
                    DBconnection conn_ = new DBconnection();
                    dt = conn_.SelectData(cmd);
                    if (dt.Rows.Count > 0)
                    {
                        DataRow row = dt.Rows[0];
                        Session["Name"] = row["Name"].ToString();
                        Session["Password"] = row["Password"].ToString();
                        Response.Redirect("home.aspx", false);
                    }
                    else
                    {
                        message.Visible = true;
                        message.Text = "username and password doesnot match";
                    }

                }
            }
            catch (Exception ex)
            {
                message.Visible = true;
                message.Text = ex.ToString();
            }
        }
    }
}