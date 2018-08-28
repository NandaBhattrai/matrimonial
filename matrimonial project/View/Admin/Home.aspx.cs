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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getData();
                getTodayData();
            }
        }

        private void getTodayData()
        {
            getTodayHelp();
            getTodayFeedback();
            getTodayAssisted();
            getTodayRegister();
            getTodayProfile();
            getTodayReport();
        }

        private void getTodayReport()
        {
            string stq = "select count(ReportId) as count from Report where ReportStatus=1 AND Date=@Date ";
            SqlCommand cmd = new SqlCommand(stq);
            cmd.Parameters.Add("@Date", SqlDbType.VarChar).Value = DateTime.Now.ToString("yyyy-MM-dd");
            DBconnection conn_ = new DBconnection();
            DataTable dt = conn_.SelectData(cmd);
            int datacount = Convert.ToInt32(dt.Rows[0]["count"]);
            TodayReport.Text = datacount.ToString();
        }

        private void getTodayProfile()
        {
            string stq = "select count(ProfileId) as count from UserProfile where ProfileStatus=1 AND Date=@Date ";
            SqlCommand cmd = new SqlCommand(stq);
            cmd.Parameters.Add("@Date", SqlDbType.VarChar).Value = DateTime.Now.ToString("yyyy-MM-dd");
            DBconnection conn_ = new DBconnection();
            DataTable dt = conn_.SelectData(cmd);
            int datacount = Convert.ToInt32(dt.Rows[0]["count"]);
            TodayProfile.Text = datacount.ToString();
        }

        private void getTodayRegister()
        {
           
            string stq = "select count(UserId) as count from Register where UserStatus=1 AND  Date=@Date ";
            SqlCommand cmd = new SqlCommand(stq);
            cmd.Parameters.Add("@Date", SqlDbType.VarChar).Value = DateTime.Now.ToString("yyyy-MM-dd");
            DBconnection conn_ = new DBconnection();
            DataTable dt = conn_.SelectData(cmd);
            int datacount = Convert.ToInt32(dt.Rows[0]["count"]);
            TodayRegister.Text = datacount.ToString();
        }

       

        private void getTodayAssisted()
        {
            string stq = "select count(UId) as count from Assisted where Status=1 AND Date=@Date ";
            SqlCommand cmd = new SqlCommand(stq);
            cmd.Parameters.Add("@Date", SqlDbType.VarChar).Value = DateTime.Now.ToString("yyyy-MM-dd");
            DBconnection conn_ = new DBconnection();
            DataTable dt = conn_.SelectData(cmd);
            int datacount = Convert.ToInt32(dt.Rows[0]["count"]);
            TodayAssisted.Text = datacount.ToString();
        }

        private void getTodayFeedback()
        {
            string stq = "select count(Id) as count from Feedback where Status=1 AND Date=@Date ";
            SqlCommand cmd = new SqlCommand(stq);
            cmd.Parameters.Add("@Date", SqlDbType.VarChar).Value = DateTime.Now.ToString("yyyy-MM-dd");
            DBconnection conn_ = new DBconnection();
            DataTable dt = conn_.SelectData(cmd);
            int datacount = Convert.ToInt32(dt.Rows[0]["count"]);
            TodayFeedback.Text = datacount.ToString();
        }

        private void getTodayHelp()
        {
            string stq = "select count(Id) as count from Help where Status=1 AND Date=@Date ";
            SqlCommand cmd = new SqlCommand(stq);
            cmd.Parameters.Add("@Date", SqlDbType.VarChar).Value = DateTime.Now.ToString("yyyy-MM-dd");
            DBconnection conn_ = new DBconnection();
            DataTable dt = conn_.SelectData(cmd);
            int datacount = Convert.ToInt32(dt.Rows[0]["count"]);
            TodayHelp.Text = datacount.ToString();
        }

        private void getData()
        {
            getRegister();
            getProfile();
            getHelp();
            getAssisted();
            getFeedback();
            getReport();
        }

        private void getReport()
        {        
            string stq = "select count(ReportId) as count from Report where ReportStatus=1";
            SqlCommand cmd = new SqlCommand(stq);
            DBconnection conn_ = new DBconnection();
            DataTable dt = conn_.SelectData(cmd);
            int datacount = Convert.ToInt32(dt.Rows[0]["count"]);
            ReportCount.Text = datacount.ToString();
        }
    

        private void getFeedback()
        {
            string stq = "select count(Id) as count from Feedback where Status=1";
            SqlCommand cmd = new SqlCommand(stq);
            DBconnection conn_ = new DBconnection();
            DataTable dt = conn_.SelectData(cmd);
            int datacount = Convert.ToInt32(dt.Rows[0]["count"]);
            FeedbackCount.Text = datacount.ToString();
        }

        private void getAssisted()
        {
            string stq = "select count(UId) as count from Assisted  where Status=1";
            SqlCommand cmd = new SqlCommand(stq);
            DBconnection conn_ = new DBconnection();
            DataTable dt = conn_.SelectData(cmd);
            int datacount = Convert.ToInt32(dt.Rows[0]["count"]);
            AssistedCount.Text = datacount.ToString();
        }

        private void getHelp()
        {
            string stq = "select count(Id) as count from Help  where Status=1";
            SqlCommand cmd = new SqlCommand(stq);
            DBconnection conn_ = new DBconnection();
            DataTable dt = conn_.SelectData(cmd);
            int datacount = Convert.ToInt32(dt.Rows[0]["count"]);
            HelpCount.Text = datacount.ToString();
        }

        private void getProfile()
        {
            string stq = "select count(ProfileId) as count from UserProfile  where ProfileStatus=1";
            SqlCommand cmd = new SqlCommand(stq);
            DBconnection conn_ = new DBconnection();
            DataTable dt = conn_.SelectData(cmd);
            int datacount = Convert.ToInt32(dt.Rows[0]["count"]);
            ProfileCount.Text = datacount.ToString();
        }

        private void getRegister()
        {
            string stq = "select count(UserId) as count from Register where UserStatus=1";
            SqlCommand cmd = new SqlCommand(stq);
            DBconnection conn_ = new DBconnection();
            DataTable dt = conn_.SelectData(cmd);
            int datacount = Convert.ToInt32(dt.Rows[0]["count"]);
            RegisterCount.Text = datacount.ToString();
        }
    }
}