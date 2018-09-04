using matrimonial_project.model;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace matrimonial_project.view
{
    public partial class matrimonial : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.browsedata();
                DataTable data = this.getreligion();
                if(data.Rows.Count > 0)
                {
                    religion.DataSource = data;
                    religion.DataBind();
                    religion.DataTextField = "Religion";
                    religion.DataValueField = "ReligionId";
                    religion.DataBind();
                }
            }

            if ((Session["UserName"]!=null)&&(!string.IsNullOrEmpty(Session["UserName"].ToString())))
            {
                this.getStory();
                this.checkResponse();
                this.getInterest();
                string UserName_ = (string)(Session["UserName"]);
                UserName.Text = UserName_.ToString();               
            }
            else
                Response.Redirect("../Home.aspx", false);
        }

        private void browsedata()
        {
            DataTable data = new DataTable();
            string StrQuery = "select Gender from UserProfile where RegisterId=@RegisterId AND VerifiedStatus=1 AND ProfileStatus=1";
            SqlCommand cmmd = new SqlCommand(StrQuery);
            cmmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt16(Session["UserId"].ToString());
            DBconnection conn = new DBconnection();
            StringBuilder html = new StringBuilder();
            data = conn.SelectData(cmmd);
            if (data.Rows.Count > 0)
            {
                DataRow row = data.Rows[0];
                sex.Value = row["Gender"].ToString();
                this.Country_Browse();
                this.Profession_list();
                this.Caste_list();
            }
        }

        private void Caste_list()
        {
            DataTable data = new DataTable();
            string StrQuery = "select distinct(Caste) from UserProfile where Gender<>@Gender AND VerifiedStatus=1 AND ProfileStatus=1";
            SqlCommand cmmd = new SqlCommand(StrQuery);
            cmmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = sex.Value;
            DBconnection conn = new DBconnection();
            StringBuilder html = new StringBuilder();
            data = conn.SelectData(cmmd);
            if (data.Rows.Count > 0)
            {
                foreach (DataRow dr in data.Rows)
                {
                    html.Append("<li><a href ='CountryList.aspx?param1=&param2=&param3=" + dr["Caste"] + "'>" + dr["Caste"] + "</a></li>");
                }
                string dynaDiv = html.ToString();
                CasteTest.Controls.Add(new Literal { Text = html.ToString() });
            }
            else
            {
                html.Append("<h2>No Result Found.</h2>");
                string dynaDiv = html.ToString();
                CasteTest.Controls.Add(new Literal { Text = html.ToString() });
            }
        }

        private void Profession_list()
        {
            DataTable data = new DataTable();
            string StrQuery = "select distinct(Profession) from UserProfile where Gender<>@Gender AND VerifiedStatus=1 AND ProfileStatus=1";
            SqlCommand cmmd = new SqlCommand(StrQuery);
            cmmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = sex.Value;
            DBconnection conn = new DBconnection();
            StringBuilder html = new StringBuilder();
            data = conn.SelectData(cmmd);
            if (data.Rows.Count > 0)
            {
                foreach (DataRow dr in data.Rows)
                {
                    html.Append("<li><a href ='CountryList.aspx?param1=&param2=" + dr["Profession"] + "&param3='>" + dr["Profession"] + "</a></li>");
                }
                string dynaDiv = html.ToString();
                ProfessionTest.Controls.Add(new Literal { Text = html.ToString() });
            }
            else
            {
                html.Append("<h2>No Result Found.</h2>");
                string dynaDiv = html.ToString();
                ProfessionTest.Controls.Add(new Literal { Text = html.ToString() });
            }
        }

        private void Country_Browse()
        {
            DataTable data = new DataTable();
            string StrQuery = "select distinct(Country) from UserProfile where Gender <> @Gender AND VerifiedStatus=1 AND ProfileStatus=1";
            SqlCommand cmmd = new SqlCommand(StrQuery);
            cmmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = sex.Value;
            DBconnection conn = new DBconnection();
            StringBuilder html = new StringBuilder();
            data = conn.SelectData(cmmd);
            if (data.Rows.Count > 0)
            {
                foreach (DataRow dr in data.Rows)
                {
                    html.Append("<li><a href ='CountryList.aspx?param1=" + dr["Country"] + "&param2=&param3='>" + dr["Country"] + "</a></li>");
                }
                string dynaDiv = html.ToString();
                CountryTest.Controls.Add(new Literal { Text = html.ToString() });
            }
            else
            {
                html.Append("<h2>No Result Found.</h2>");
                string dynaDiv = html.ToString();
                CountryTest.Controls.Add(new Literal { Text = html.ToString() });
            }

        }

        private void getInterest()
        {
            string id = Session["UserId"].ToString();                           
                DataTable data = new DataTable();
                string Query = "SELECT InterestId FROM dbo.Interest Where ReceiverId=@ReceiverId AND InterestStatus=1";
                SqlCommand cmmd = new SqlCommand(Query);
            cmmd.Parameters.Add("@ReceiverId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserId"].ToString());
            DBconnection conn = new DBconnection();
                data = conn.SelectData(cmmd);
                if (data.Rows.Count > 0)
                {
                    DataRow rw = data.Rows[0];
                    Interest.Visible = true;
                InterestCount.Text = data.Rows.Count.ToString();
                }            
        }       

        private void checkResponse()
        {
           
                DataTable da = new DataTable();
                string strQuery = "SELECT Story FROM dbo.Story Where SUserName=@SUserName AND SRegisterId=@SRegisterId AND Status=2";
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@SUserName", SqlDbType.VarChar).Value = Session["UserName"].ToString();
                cmd.Parameters.Add("@SRegisterId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserId"].ToString());
                DBconnection con = new DBconnection();
                da = con.SelectData(cmd);
                if (da.Rows.Count > 0)
                {
                    DataRow rw = da.Rows[0];
                    Stories.Visible = true;
                    Count.Text = da.Rows.Count.ToString();
                }               
           
        }

        private void getStory()
        {
         
            DataTable data = new DataTable();
            string Query = "SELECT Story FROM dbo.Story Where (RUserName=@RUserName OR SRegisterId=@SRegisterId) AND (Status=1 OR Status=2 OR Status=0)";
            SqlCommand cmmd = new SqlCommand(Query);
            cmmd.Parameters.Add("@RUserName", SqlDbType.VarChar).Value = Session["UserName"].ToString();
            cmmd.Parameters.Add("@SRegisterId", SqlDbType.VarChar).Value = Convert.ToInt32(Session["UserId"].ToString());
            DBconnection conn = new DBconnection();
            data = conn.SelectData(cmmd);
            if ((data != null) && (data.Rows.Count > 0))
            {
                DataRow rw = data.Rows[0];
                Stories.Visible = true;
                Count.Text = data.Rows.Count.ToString();
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

        protected void Search_Click(object sender, EventArgs e)
        {           
                string Religious = religion.SelectedItem.ToString();
                string gender = Gender.Value.ToString();
                int from = Convert.ToInt16(AgeFrom.Value);
                int to = Convert.ToInt16(AgeTo.Value);
            Response.Redirect(string.Format("SearchResult.aspx?param1={0}&param2={1}&param3={2}&param4={3}",gender,Religious,from,to));
         }           
        }
    }
