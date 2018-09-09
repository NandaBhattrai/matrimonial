using matrimonial_project.model;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Net.Mail;
using System.Net;

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
                int i = 0;
                foreach (DataRow data in dt.Rows)
                {
                    if (i % 6 == 0)
                        html.Append("<li>");
                    string StoryView;
                    if (data["Story"].ToString().Length > 800)
                    {
                        StoryView = data["Story"].ToString().Substring(0, 800);
                    }
                    else
                    {
                        StoryView = data["Story"].ToString();
                    }
                    html.Append("<div class='col-md-4 biseller-column'>");
                    html.Append("<div class='profile-image'>");
                    html.Append("<img src='../Upload/"+data["SImage"]+"' class='img - responsive' alt='profile image' height='300' width='250'>");
                    html.Append("<div class='agile-overlay'>");
                    html.Append("<h3>" + data["ReceiverName"] + "<span> & </span>" + data["SUserName"] + "</h3>");
                    html.Append("<p style='Color:White'>"+StoryView+".....</p>");
                    html.Append("</div>");
                    html.Append("</div>");
                    html.Append("</div>");
                    if (i+5 % 6 == 0)
                        html.Append("</li>");
                    i++;
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
                    string word = EncodePasswordToBase64(pass.Value);
                    //username and & password logic
                    DataTable dt = new DataTable();
                    string strQuery = "SELECT UserName,Password,UserId FROM dbo.Register WHERE UserName=@UserName AND Password=@Password";
                    SqlCommand cmd = new SqlCommand(strQuery);
                    cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = user.Value.Trim();
                    cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = word;
                    DBconnection conn_ = new DBconnection();
                    dt = conn_.SelectData(cmd);
                    if (dt.Rows.Count > 0)
                    {
                        this.CheckedUserStatus();                       
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
                            string msg = "UserName and Password does not match";
                            Response.Write("<script>alert('" + msg + "')</script>");
                        }

                    }
                }
            }
            catch (Exception ex)
            {                
                warning.Text = ex.ToString();
            }
        }

        private void CheckedUserStatus()
        {
            try
            {                
                string strQuery = "SELECT UserName,Password,UserId FROM dbo.Register WHERE UserStatus=1 AND UserName=@UserName";
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = user.Value.Trim();
                DBconnection conn_ = new DBconnection();
                DataTable dt = conn_.SelectData(cmd);
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
                    Session["UserName"] = user.Value.Trim().ToString();
                    Response.Redirect("UserVerification.aspx", false);
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
                    string msg = "Profile does not Verified Wait!!!!";
                    Response.Write("<script>alert('" + msg + "')</script>");
                }             
            }
            catch (Exception ex)
            {
                warning.Text = Convert.ToString(ex);
            }
        }

        protected async void register_Click(object sender, EventArgs e)
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
                string user = name.Value;
                string @email = mailblock.Value;                
                Random r = new Random();
                int num = r.Next(1000, 9999);
                string pass = EncodePasswordToBase64(password.Value);
                string token = EncodePasswordToBase64(num.ToString());
                string strQuery = "INSERT INTO dbo.Register (Name,UserName,Gender,DateOfBirth,Religion,Mobile,Email,Password,UserStatus,Token) VALUES (@Name,@UserName,@Gender,@DateOfBirth,@Religion,@Mobile,@Email,@Password,@UserStatus,@Token)";
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = name.Value.Trim();
                cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = Username_change.Text.Trim();
                cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = gender;
                cmd.Parameters.Add("@DateOfBirth", SqlDbType.VarChar).Value = datebirth.Value.Trim();
                cmd.Parameters.Add("@Religion", SqlDbType.VarChar).Value = religious.Trim();
                cmd.Parameters.Add("@Mobile", SqlDbType.VarChar).Value = phone.Value.Trim();
                cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = @email;
                cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = pass;
                cmd.Parameters.Add("@UserStatus", SqlDbType.VarChar).Value = "0";
                cmd.Parameters.Add("@Token", SqlDbType.VarChar).Value = token;
                DBconnection conn_ = new DBconnection();
                bool result = conn_.ExecuteData(cmd);
                if (result)
                {
                    var body = "<p>Dear: {0} ({1})</p><p>Please Verify Your Email Address:</p><p>Enter this verification Code: {2}</p><br/><p>Regards,</p><p>CatchYourMatch</p>";
                    var message = new MailMessage();
                    message.To.Add(new MailAddress(@email));  // replace with valid value 
                    message.From = new MailAddress("noreply@shpud.com");  // replace with valid value
                    message.Subject = "Verify Your Emailaddress";
                    message.Body = string.Format(body, user, @email, token);
                    message.IsBodyHtml = true;
                    message.Priority = MailPriority.High;

                    SmtpClient smtp = new SmtpClient();
                    var credential = new NetworkCredential
                    {
                        UserName = "shpud@tilottama.edu.np",  // replace with valid value
                        Password = "2e@oN;g.tvAA"  // replace with valid value
                    };
                    smtp.Credentials = credential;
                    smtp.Host = "mail.tilottama.edu.np";
                    smtp.Port = 587;
                    smtp.EnableSsl = false;
                    try
                    {
                        smtp.Send(message);
                        Session["UserName"] = Username_change.Text.ToString();
                        string msg = "Verify your registration!!!";
                        Response.Write("<script>alert('" + msg + "')</script>");
                    }
                    catch (Exception ex)
                    {
                        Exception ex2 = ex;
                        string errorMessage = string.Empty;
                        while (ex2 != null)
                        {
                            errorMessage += ex2.ToString();
                            ex2 = ex2.InnerException;
                        }
                        test.Text = "<script> alert("+ex2+")</script>";
                    }                    
                }
                else
                {
                    string msg = "Sorry Something Went Wrong";
                    Response.Write("<script>alert('" + msg + "')</script>");
                }
            }
            catch (Exception ex)
            {
                warning.Text = Convert.ToString(ex);
            }
        }
        

    public static string EncodePasswordToBase64(string password)
    {
        byte[] bytes = Encoding.Unicode.GetBytes(password);
        byte[] inArray = HashAlgorithm.Create("SHA1").ComputeHash(bytes);
        return Convert.ToBase64String(inArray);
    }

        protected void Username_change_TextChanged(object sender, EventArgs e)
        {
            string strQuery1 = "select UserId from  dbo.Register where UserName = @UserName";
            SqlCommand cmd1 = new SqlCommand(strQuery1);
            cmd1.Parameters.Add("@UserName", SqlDbType.VarChar).Value = Username_change.Text.Trim();
            DBconnection conn_ = new DBconnection();
            DataTable uname = conn_.SelectData(cmd1);
            if (uname.Rows.Count > 0)
            {
                usermessage.Visible = true;
            }
            else
            {
                usermessage.Visible = false;
            }

        }

        //protected void email_TextChanged(object sender, EventArgs e)
        //{
        //    string strQuery1 = "select UserId from  dbo.Register where Email = @Email";
        //    SqlCommand cmd1 = new SqlCommand(strQuery1);
        //    cmd1.Parameters.Add("@Email", SqlDbType.VarChar).Value = email.Text.Trim();
        //    DBconnection conn_ = new DBconnection();
        //    DataTable uname = conn_.SelectData(cmd1);
        //    if (uname.Rows.Count > 0)
        //    {
        //        emailmessage.Visible = true;
        //    }
        //    else
        //    {
        //        emailmessage.Visible = false;
        //    }
        //}
    }
}