using matrimonial_project.model;
using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Web.UI;

namespace matrimonial_project.View
{
    public partial class Home : System.Web.UI.Page
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

      

        

        protected void login_Click(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(user.Value) && !string.IsNullOrEmpty(pass.Value))
                {
                   
                    //username and & password logic
                    DataTable dt = new DataTable();
                    string strQuery = "SELECT UserName,Password,UserId FROM dbo.Register WHERE UserName=@UserName AND Password=@Password";
                    SqlCommand cmd = new SqlCommand(strQuery);
                    cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = user.Value.Trim();
                    cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = pass.Value.Trim();
                    DBconnection conn_ = new DBconnection();
                    dt = conn_.SelectData(cmd);
                    if (dt.Rows.Count > 0)
                    {
                        DataRow row = dt.Rows[0];
                        Session["UserName"] = row["UserName"].ToString();
                        Session["Password"] = row["Password"].ToString();
                        Session["UserId"] = row["UserId"].ToString();
                        Response.Redirect("Index.aspx", false);
                    }
                    else
                    {
                        string admin = user.Value.Trim();
                        string adminpass = pass.Value.Trim();
                        DBconnection conn1_ = new DBconnection();
                        DataTable dt1 = new DataTable();
                        string strQuery1 = "SELECT Name,Password FROM dbo.Admin WHERE Name='" + admin + "' AND Password='" + adminpass + "'";
                        SqlCommand cmd1 = new SqlCommand(strQuery1);
                        dt1 = conn1_.SelectData(cmd1);
                        if (dt1.Rows.Count > 0)
                        {
                            DataRow row = dt1.Rows[0];
                            Session["UserName"] = row["Name"].ToString();
                            Session["Password"] = row["Password"].ToString();
                            Response.Redirect("Admin/Home.aspx", false);
                        }
                        else
                        {
                            message.Text = "Username and Password mismatch";
                        }

                    }
                }
            }
            catch (Exception ex)
            {
                message.Visible = true;
                message.Text = ex.ToString();
            }
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
               
                string strQuery = "INSERT INTO dbo.Register (Name,UserName,Gender,DateOfBirth,Religion,Mobile,Email,Password,UserStatus) VALUES (@Name,@UserName,@Gender,@DateOfBirth,@Religion,@Mobile,@Email,@Password,@UserStatus)";
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = name.Value.Trim();
                cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = username.Value.Trim();
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
                    message.Visible = true;
                    message.Text = "Successfully Registered";                   
                }
                else
                {
                    message.Visible = true;
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