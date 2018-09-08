using matrimonial_project.model;
using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI;

namespace matrimonial_project.View
{
    public partial class Story : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Req_Block.Visible = true;
                this.CheckRequest();
                this.checkResponse();
                this.WaitResponse();
                this.LongWait();
            }
        }

        private void LongWait()
        {
            DataTable dt = new DataTable();
            string strquery = "SELECT SUserName,SRegisterId,Date,Story,StoryId from Story WHERE SUserName=@SUserName AND Status=0";
            SqlCommand cmd = new SqlCommand(strquery);
            cmd.Parameters.Add("@SUserName", SqlDbType.VarChar).Value = Session["UserName"].ToString();
            DBconnection conn_ = new DBconnection();
            dt = conn_.SelectData(cmd);
            if (dt.Rows.Count > 0)
            {
                Req_Block.Visible = false;
                Block_first.Visible = false;
                Request_Block.Visible = false;
                Response_Block.Visible = true;
                response.Text = "Your Request Has Been Sent Wait For Your Partner Response!!!";
            }
        }

        private void WaitResponse()
        {
            DataTable dt = new DataTable();
            string strquery = "SELECT SUserName,SRegisterId,Date,Story,StoryId from Story WHERE SUserName=@SUserName AND Status=1";
            SqlCommand cmd = new SqlCommand(strquery);
            cmd.Parameters.Add("@SUserName", SqlDbType.VarChar).Value = Session["UserName"].ToString();
            DBconnection conn_ = new DBconnection();
            dt = conn_.SelectData(cmd);
            if (dt.Rows.Count > 0)
            {
                Req_Block.Visible = false;
                Block_first.Visible = false;
                Request_Block.Visible = false;
                Response_Block.Visible = true;
                response.Text = "Your Request Has Been Approved!!!";
            }
        }

        private void checkResponse()
        {
            DataTable dt = new DataTable();
            string strquery = "SELECT SUserName,SRegisterId,Date,Story,StoryId from Story WHERE SUserName=@SUserName AND Status=2";
            SqlCommand cmd = new SqlCommand(strquery);
            cmd.Parameters.Add("@SUserName", SqlDbType.VarChar).Value = Session["UserName"].ToString();
            DBconnection conn_ = new DBconnection();
            dt = conn_.SelectData(cmd);
            if (dt.Rows.Count > 0)
            {
                Req_Block.Visible = false;
                Block_first.Visible = false;
                Request_Block.Visible = false;
                Response_Block.Visible = true;
                response.Text = "Your Request Has Been Cancelled!!";
            }
        }

        private void CheckRequest()
        {
            try
            {
                 DataTable dt = new DataTable();
                string strquery = "SELECT SUserName,SRegisterId,Date,Story,WeddingDate,StoryId from Story WHERE RUserName=@RUserName AND Status=0";
                SqlCommand cmd = new SqlCommand(strquery);
                cmd.Parameters.Add("@RUserName", SqlDbType.VarChar).Value = Session["UserName"].ToString();
                DBconnection conn_ = new DBconnection();
                dt = conn_.SelectData(cmd);
                if (dt.Rows.Count > 0)
                {
                    DataRow row = dt.Rows[0];
                    string SUser = row["SUserName"].ToString();
                    string SId = row["SRegisterId"].ToString();
                    Sid.Value = row["StoryId"].ToString();
                    weddate.Value = row["WeddingDate"].ToString();
                        DataTable data = new DataTable();
                        string query = "SELECT Name,Email,Mobile,Country,ProfileImage from UserProfile WHERE RegisterId=@RegisterId  AND ProfileStatus=1 AND VerifiedStatus=1";
                        SqlCommand cmmd = new SqlCommand(query);
                        cmmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt32(SId.ToString());
                        DBconnection conn = new DBconnection();
                        data = conn.SelectData(cmmd);
                        if (data.Rows.Count > 0)
                        {
                             Req_Block.Visible = false;
                            Request_Block.Visible = true;
                            Block_first.Visible = false;
                            DataRow rw = data.Rows[0];
                            Pname.Text = rw["Name"].ToString();
                            Pcountry.Text = rw["Country"].ToString();
                            Pemail.Text = rw["Email"].ToString();
                            Pphone.Text = rw["Mobile"].ToString();
                            string Image = rw["ProfileImage"].ToString();
                            Image = "../Upload/" + Image;
                            Image = "<img src='" + Image + "'  height=200px width=200px/>";
                            Pimage.Text = Image;
                        }
                    }
                
            }
            catch (Exception ex)
            {
                response.Text = "Sorry Something went wrong!!!!!";
            }
        }

        protected void Savebtn_Click(object sender, EventArgs e)
        {
            HttpPostedFile file = image_edit.PostedFile;
            string Photo = old_image.Value;
            if (file != null)
            {
                if (!Directory.Exists(Server.MapPath("~/Upload")))
                {
                    Directory.CreateDirectory(Server.MapPath("~/Upload"));
                }

                var extension = Path.GetExtension(file.FileName).ToLower();
                if (extension == ".png" || extension == ".jpg" || extension == ".jpeg")
                {
                    var filezize = file.ContentLength;
                    if (filezize <= 1024 * 1024 * 5)
                    {
                        var filename = Guid.NewGuid().ToString() + extension;
                        file.SaveAs(Server.MapPath($"~/Upload/{filename}"));
                        Photo = $"{filename}";
                    }
                    else
                    {
                        message.Visible = true;
                        message.Text = "Image Size is large Please select small size image";
                    }
                }
            }
            string strQuery = "UPDATE Story SET Story=@Story , Status=1 , SImage=@SImage, WeddingDate=@WeddingDate WHERE StoryId=@StoryId";
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@Story", SqlDbType.VarChar).Value = story_edit.Value.Trim();
            cmd.Parameters.Add("@StoryId", SqlDbType.Int).Value = Sid.Value.Trim();
            cmd.Parameters.Add("@SImage", SqlDbType.VarChar).Value = Photo;
            cmd.Parameters.Add("@WeddingDate", SqlDbType.VarChar).Value = weddate.Value.Trim();
            DBconnection conn_ = new DBconnection();
            bool result = conn_.ExecuteData(cmd);
            if (result)
            {
                Div2.Visible = true;
                updatemsg.Text = "successfully changed";
                updatemsg.ForeColor = System.Drawing.Color.Green;
            }

            else
            {
                updatemsg.Text = "something went wrong ";
                updatemsg.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void Btn_btnNo_Click(object sender, EventArgs e)
        {
            try
            {
                string strQuery = "update story set Status=2 where StoryId = @StoryId ";
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@StoryId", SqlDbType.Int).Value = Convert.ToInt32(Sid.Value);
                DBconnection conn_ = new DBconnection();
                bool result = conn_.ExecuteData(cmd);
                if (result)
                {
                    messg.Visible = true;
                    msge.Text = "Your Response has been sent";
                }          
            }
            catch (Exception ex)
            {
                msge.Text = Convert.ToString(ex);
            }
        }

        protected void Btn_btnYes_Click(object sender, EventArgs e)
        {
            try
            {
                string strQuery = "select * from story where StoryId = @StoryId ";
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@StoryId", SqlDbType.Int).Value = Convert.ToInt32(Sid.Value);
                DBconnection conn_ = new DBconnection();
                DataTable dt = conn_.SelectData(cmd);
                if (dt.Rows.Count > 0)
                {
                    DataRow rw = dt.Rows[0];
                    Req_Block.Visible = false;
                    Request_Block.Visible = false;
                    NO_Block.Visible = false;
                    Yes_Block.Visible = false;
                    Updateblock.Visible = true;
                    string image = rw["SImage"].ToString();
                    old_image.Value = image;
                    show_image.Text = "<img src='../Upload/" + image + "' height=50px width=50px/>";
                    story_edit.Value = rw["Story"].ToString();
                    weddate.Value = rw["WeddingDate"].ToString();

                }



            }
            catch (Exception ex)
            {
                message.Text = Convert.ToString(ex);
            }
        }

        protected void Submitbtn_Click(object sender, EventArgs e)
        {
            try
            {
              HttpPostedFile file = upload.PostedFile;
                string Photo = "no image";
                if (file != null)
                {
                    if (!Directory.Exists(Server.MapPath("~/Upload")))
                    {
                        Directory.CreateDirectory(Server.MapPath("~/Upload"));
                    }

                    var extension = Path.GetExtension(file.FileName).ToLower();
                    if (extension == ".png" || extension == ".jpg" || extension == ".jpeg")
                    {
                        var filezize = file.ContentLength;
                        if (filezize <= 1024 * 1024 * 5)
                        {
                            var filename = Guid.NewGuid().ToString() + extension;
                            file.SaveAs(Server.MapPath($"~/Upload/{filename}"));
                            Photo = $"{filename}";
                        }
                        else
                        {
                            message.Visible = true;
                            message.Text = "Image Size is large Please select small size image";
                        }
                    }
                }


                DataTable dt = new DataTable();
                string strquery = "SELECT ProfileId from UserProfile WHERE Name=@Name  AND Email=@Email AND Mobile=@Mobile AND ProfileStatus=1 AND VerifiedStatus=1";
                SqlCommand cmd = new SqlCommand(strquery);
                cmd.Parameters.Add("Name", SqlDbType.VarChar).Value = name.Value.Trim();
                cmd.Parameters.Add("Email", SqlDbType.VarChar).Value = email.Value.Trim();
                cmd.Parameters.Add("Mobile", SqlDbType.VarChar).Value = tel.Value.Trim();
                DBconnection conn_ = new DBconnection();
                dt = conn_.SelectData(cmd);
                if (dt.Rows.Count > 0)
                {
                    string Query = "INSERT INTO dbo.Story (ReceiverName,RUserName,REmail,WeddingDate,SUsername,RPhone,Story,Date,Status,SRegisterId,SImage) VALUES (@ReceiverName,@RUserName,@REmail,@WeddingDate,@SUsername,@RPhone,@Story,@Date,@Status,@SRegisterId,@SImage)";
                    SqlCommand cmmd = new SqlCommand(Query);
                    cmmd.Parameters.Add("@ReceiverName", SqlDbType.VarChar).Value = name.Value.Trim();
                    cmmd.Parameters.Add("@RUserName", SqlDbType.VarChar).Value = User.Value.Trim();
                    cmmd.Parameters.Add("@REmail", SqlDbType.VarChar).Value = email.Value.Trim();
                    cmmd.Parameters.Add("@RPhone", SqlDbType.VarChar).Value = tel.Value.Trim();
                    cmmd.Parameters.Add("@WeddingDate", SqlDbType.VarChar).Value = WDate.Value.Trim();
                    cmmd.Parameters.Add("@Story", SqlDbType.VarChar).Value = story.Value.Trim();
                    cmmd.Parameters.Add("@Date", SqlDbType.VarChar).Value = DateTime.Now.ToString("yyyy-MM-dd");
                    cmmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = "0";
                    cmmd.Parameters.Add("@SRegisterId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserId"].ToString());
                    cmmd.Parameters.Add("@SUsername", SqlDbType.VarChar).Value = Session["UserName"].ToString();
                    cmmd.Parameters.Add("@SImage", SqlDbType.VarChar).Value = Photo;
                    DBconnection conn = new DBconnection();
                    bool result = conn.ExecuteData(cmmd);
                    if (result)
                    {
                        msg.Visible = true;
                        message.Text = "Wait for Your Partner response!!!!";
                    }
                    else
                    {
                        msg.Visible = true;
                        message.Text = "Sorry Something Went Wrong";
                    }
                }
                else
                {
                    msg.Visible = true;
                    message.Text = "User cannot be Found or select your picture!!!!!";
                }
            }
            catch (Exception ex)
            {
                message.Text = Convert.ToString(ex);
            }
        
    }

        protected void btn_yesPartner_Click(object sender, EventArgs e)
        {
            try
            {
                Req_Block.Visible = false;
                NO_Block.Visible = false;
                Yes_Block.Visible = true;
            }
            catch (Exception ex)
            {
            message.Text = Convert.ToString(ex);
        }
        }

        protected void btn_noPartner_Click(object sender, EventArgs e)
        {
            try
            {
                Req_Block.Visible = false;
                NO_Block.Visible = true;
                Yes_Block.Visible = false;
            }
            catch (Exception ex)
            {
            message.Text = Convert.ToString(ex);
        }
        }
    }
}