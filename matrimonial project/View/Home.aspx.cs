using matrimonial_project.model;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

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
                    this.SuccessStory();
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
            catch (Exception ex)
            {
                warning.Text = Convert.ToString(ex);
            }
        }

        private void SuccessStory()
        {
            string Str = "select * from Story where Status=5";
            SqlCommand cmd = new SqlCommand(Str);
            DBconnection conn_ = new DBconnection();
            DataTable dt = conn_.SelectData(cmd);
            StringBuilder html = new StringBuilder();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow data in dt.Rows)
                {                 
                    html.Append("<div class='col-md-4 biseller-column'>");
                    html.Append("<div class='profile-image'>");
                    html.Append("<img src='../Upload/"+data["SImage"]+"' class='img - responsive' alt='profile image'>");
                    html.Append("<div class='agile-overlay'>");
                    html.Append("<h3>" + data["ReceiverName"] + "<span> & </span>" + data["SUserName"] + "</h3>");
                    html.Append("<p>"+data["Story"]+"</p>");
                    html.Append("</div>");
                    html.Append("</div>");
                    html.Append("</div>");                                       
                }
                string dynaDiv = html.ToString();
                StoryPalace.Controls.Add(new Literal { Text = html.ToString() });
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
                    string strQuery = "SELECT UserName,Password,UserId FROM dbo.Register WHERE UserName=@UserName AND Password=@Password AND UserStatus=1";
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
                        this.getaddress();
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
                            warning.Text = "Username and Password mismatch";
                        }

                    }
                }
            }
            catch (Exception ex)
            {                
                warning.Text = ex.ToString();
            }
        }

        private void getaddress()
        {
            try
            {
                DataTable dt = new DataTable();
                string strQuery = "SELECT ProfileId FROM dbo.UserProfile WHERE RegisterId=@RegisterId AND ProfileStatus=1";
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserId"].ToString());
                DBconnection conn_ = new DBconnection();
                dt = conn_.SelectData(cmd);
                if (dt.Rows.Count > 0)
                {
                    DataRow row = dt.Rows[0];
                    this.getVarifiedProfile();                    
                }
                else
                {
                    Response.Redirect("ProfileMaking.aspx", false);
                }
            }
            catch (Exception ex)
            {
                warning.Text = Convert.ToString(ex);
            }
        }

        private void getVarifiedProfile()
        {
            try
            {
                DataTable dt = new DataTable();
                string strQuery = "SELECT ProfileId FROM dbo.UserProfile WHERE RegisterId=@RegisterId AND ProfileStatus=1 AND VerifiedStatus=1";
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserId"].ToString());
                DBconnection conn_ = new DBconnection();
                dt = conn_.SelectData(cmd);
                if (dt.Rows.Count > 0)
                {
                    DataRow row = dt.Rows[0];
                    Session["ProfileId"] = row["ProfileId"];
                    Response.Redirect("UserHome.aspx", false);
                }
                else
                {
                    warning.Text = "Profile does not Verified Wait!!!!";
                }             
            }
            catch (Exception ex)
            {
                warning.Text = Convert.ToString(ex);
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
                cmd.Parameters.Add("@DateOfBirth", SqlDbType.VarChar).Value = datebirth.Value.Trim();
                cmd.Parameters.Add("@Religion", SqlDbType.VarChar).Value = religious.Trim();
                cmd.Parameters.Add("@Mobile", SqlDbType.VarChar).Value = phone.Value.Trim();
                cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = email.Value.Trim();
                cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = password.Value.Trim();
                cmd.Parameters.Add("@UserStatus", SqlDbType.VarChar).Value = "1";
                DBconnection conn_ = new DBconnection();
                bool result = conn_.ExecuteData(cmd);
                if (result)
                {
                    popmsg.Text = "Successfully Registered!!Now LogIn";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);                    
                }
                else
                {                   
                    warning.Text = "Sorry Something Went Wrong";
                }
            }
            catch (Exception ex)
            {
                warning.Text = Convert.ToString(ex);
            }
        }
    }
}