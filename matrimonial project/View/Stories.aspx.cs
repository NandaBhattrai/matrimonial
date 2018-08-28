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
    public partial class Stories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.CheckRequest();
                this.checkResponse();
                this.WaitResponse();
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
                Block_first.Visible = false;
                Request_Block.Visible = false;
                Response_Block.Visible = true;
                response.Text = "Your Request Has Been Cancelled!!";               
            }
        }

        private void CheckRequest()
        {

            DataTable dt = new DataTable();
            string strquery = "SELECT SUserName,SRegisterId,Date,Story,StoryId from Story WHERE RUserName=@RUserName AND Status=0";
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
                 date.Text = row["Date"].ToString();
                story_edit.Value = row["Story"].ToString();
                DataTable dta = new DataTable();
                string str = "SELECT SUserName,SRegisterId,Date,Story,StoryId from Story WHERE RUserName=@RUserName AND Status=0";
                SqlCommand comd = new SqlCommand(str);
                comd.Parameters.Add("@RUserName", SqlDbType.VarChar).Value = Session["UserName"].ToString();
                DBconnection con = new DBconnection();
                dta = con.SelectData(comd);
                if (dta.Rows.Count > 0)
                {
                    DataTable data = new DataTable();
                    string query = "SELECT Name,Email,Mobile,Country,ProfileImage from UserProfile WHERE RegisterId=@RegisterId  AND ProfileStatus=1";
                    SqlCommand cmmd = new SqlCommand(query);
                    cmmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt32(SId.ToString());
                    DBconnection conn = new DBconnection();
                    data = conn.SelectData(cmmd);
                    if (data.Rows.Count > 0)
                    {
                        Request_Block.Visible = true;
                        Block_first.Visible = false;
                        DataRow rw = data.Rows[0];
                        Pname.Text = rw["Name"].ToString();
                        Pcountry.Text = rw["Country"].ToString();
                        Pemail.Text = rw["Email"].ToString();
                        Pphone.Text = rw["Mobile"].ToString();
                        string Image = rw["ProfileImage"].ToString();
                        Image = "../Upload/" + Image;
                        Image = "<img src='" + Image + "'/>";
                        Pimage.Text = Image;
                    }
                }
                else
                {

                }
               
            }
        }
        
        protected void btn_no_Click(object sender, EventArgs e)
        {
            try
            {
                NO_Block.Visible = true;
                Yes_Block.Visible = false;
            }
            catch (Exception ex)
            {                
                throw;
            }
        }

        protected void btn_yes_Click(object sender, EventArgs e)
        {
            try
            {
                NO_Block.Visible = false;
                Yes_Block.Visible = true;
            }
            catch (Exception ex)
            {
                throw;
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
                else
                {

                }
            }
            catch (Exception ex)
            {
                msge.Text = Convert.ToString(ex);
            }
        }

        protected void Submit_Click1(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = new DataTable();
                string strquery = "SELECT ProfileId from UserProfile WHERE Name=@Name  AND Email=@Email AND Country=@Country AND Mobile=@Mobile AND ProfileStatus=1";
                SqlCommand cmd = new SqlCommand(strquery);
                cmd.Parameters.Add("Name", SqlDbType.VarChar).Value = name.Value.Trim();
                cmd.Parameters.Add("Email", SqlDbType.VarChar).Value = email.Value.Trim();
                cmd.Parameters.Add("Country", SqlDbType.VarChar).Value = country.Value.Trim();
                cmd.Parameters.Add("Mobile", SqlDbType.VarChar).Value = tel.Value.Trim();
                DBconnection conn_ = new DBconnection();
                dt = conn_.SelectData(cmd);
                if (dt.Rows.Count > 0)
                {
                    string Query = "INSERT INTO dbo.Story (ReceiverName,RUserName,REmail,RCountry,SUsername,RPhone,Story,Date,Status,SRegisterId) VALUES (@ReceiverName,@RUserName,@REmail,@RCountry,@SUsername,@RPhone,@Story,@Date,@Status,@SRegisterId)";
                    SqlCommand cmmd = new SqlCommand(Query);
                    cmmd.Parameters.Add("@ReceiverName", SqlDbType.VarChar).Value = name.Value.Trim();
                    cmmd.Parameters.Add("@RUserName", SqlDbType.VarChar).Value = User.Value.Trim();
                    cmmd.Parameters.Add("@REmail", SqlDbType.VarChar).Value = email.Value.Trim();
                    cmmd.Parameters.Add("@RPhone", SqlDbType.VarChar).Value = tel.Value.Trim();
                    cmmd.Parameters.Add("@RCountry", SqlDbType.VarChar).Value = country.Value.Trim();
                    cmmd.Parameters.Add("@Story", SqlDbType.VarChar).Value = story.Value.Trim();
                    cmmd.Parameters.Add("@Date", SqlDbType.VarChar).Value = DateTime.Now.ToString("yyyy-MM-dd");
                    cmmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = "0";
                    cmmd.Parameters.Add("@SRegisterId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserId"].ToString());
                    cmmd.Parameters.Add("@SUsername", SqlDbType.VarChar).Value = Session["UserName"].ToString();
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
                    message.Text = "User cannot be Found";
                }
            }
            catch (Exception ex)
            {
                message.Text = Convert.ToString(ex);
            }
        }

        

       

        protected void Save_Click(object sender, EventArgs e)
        {
            string strQuery = "UPDATE Story SET Story=@Story AND Status=1 WHERE StoryId=@StoryId ";
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@Story", SqlDbType.VarChar).Value = story_edit.Value.Trim();
            cmd.Parameters.Add("@StoryId", SqlDbType.Int).Value = Sid.Value.Trim();
            DBconnection conn_ = new DBconnection();
            bool result = conn_.ExecuteData(cmd);
            if (result)
            {
                messg.Visible = true;
                msge.Text = "successfully changed";
                msge.ForeColor = System.Drawing.Color.Green;
            }

            else
            {
                msge.Text = "something went wrong ";
                msge.ForeColor = System.Drawing.Color.Red;
            }
        }

       
    }
    }
