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
               // this.getDistinct();
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
            else
            {

            }
            if (!string.IsNullOrEmpty(Session["UserName"].ToString()))
            {
                this.getStory();
                this.checkResponse();
                string UserName_ = (string)(Session["UserName"]);
                UserName.Text = UserName_.ToString();               
            }
            else
                Response.Redirect("../Home.aspx", false);
        }

        //private void getDistinct()
        //{
        //    DataTable dt = new DataTable();
        //    string strQuery = "SELECT DISTINCT Country FROM UserProfile";
        //    SqlCommand cmd = new SqlCommand(strQuery);
        //    DBconnection conn_ = new DBconnection();
        //    dt = conn_.SelectData(cmd);
        //    if (dt.Rows.Count > 0)
        //    {
        //        countrylist.Text = "</span><li class='has-children'><a href='#'>Country</a><ul class='cd-secondary-dropdown is-hidden'><li class='go-back'><a href='#'>Menu</a></li>";
        //        int countrow = dt.Rows.Count;                
        //        foreach (DataRow dr in dt.Rows)
        //        {

        //            var sb = new StringBuilder();                    
        //            var htw = new HtmlTextWriter(new System.IO.StringWriter(sb, System.Globalization.CultureInfo.InvariantCulture));
        //            LinkButton lb = new LinkButton();
        //            lb.ID = dr["Country"].ToString();
        //            lb.Text = dr["Country"].ToString();
        //            lb.CommandName = "country";
        //            lb.CommandArgument = dr["Country"].ToString();
        //            lb.Command += new CommandEventHandler(ViewList);
        //            lb.RenderControl(htw);                  
        //            countrylist.Text = countrylist.Text + "<li> <a href='searchresult?param1=Female&param2=Hindu&param3=10&param4=100&country="+lb.ID+"'>" + lb.Text+"</a></li>";
        //        }
        //        countrylist.Text = countrylist.Text + "</ul></li><span>";                
        //    }
        //}

        //private void ViewList(object sender, EventArgs e)
        //{
        //    if (sender is LinkButton)
        //    {
        //        LinkButton linkButton = (LinkButton)sender;
        //        if (linkButton.CommandName == "country")
        //        {
        //            String country = linkButton.CommandArgument;
        //            Session["country"] = country;
        //            Response.Redirect("SearchResult.aspx", false);
        //        }

        //    }
        //}

        private void checkResponse()
        {
            DataTable value = this.getValue();
            if (value.Rows.Count > 0)
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
        }

        private void getStory()
        {
            DataTable value = this.getValue();
            if (value.Rows.Count > 0)
            {
                DataRow row = value.Rows[0];
                string name = row["Name"].ToString();
                string country = row["Country"].ToString();
                string email = row["Email"].ToString();
                string phone = row["Mobile"].ToString();
                DataTable data = new DataTable();
                string Query = "SELECT Story FROM dbo.Story Where ReceiverName=@ReceiverName AND RCountry=@RCountry AND REmail=@REmail AND RPhone=@RPhone AND Status=0";
                SqlCommand cmmd = new SqlCommand(Query);
                cmmd.Parameters.Add("@ReceiverName", SqlDbType.VarChar).Value = name;
                cmmd.Parameters.Add("@RCountry", SqlDbType.VarChar).Value = country;
                cmmd.Parameters.Add("@REmail", SqlDbType.VarChar).Value = email;
                cmmd.Parameters.Add("@RPhone", SqlDbType.VarChar).Value = phone;
                DBconnection conn = new DBconnection();
                data = conn.SelectData(cmmd);
                if (data.Rows.Count > 0)
                {
                    DataRow rw = data.Rows[0];
                    Stories.Visible = true;
                    Count.Text = data.Rows.Count.ToString();
                }                                
            }
        }
        private DataTable getValue()
        {
            DataTable dt = new DataTable();
            string strQuery = "SELECT Name,Country,Email,Mobile FROM UserProfile where RegisterId=@RegisterId";
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("RegisterId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserId"]);
            DBconnection conn_ = new DBconnection();
            dt = conn_.SelectData(cmd);
            return dt;
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
            Response.Redirect(string.Format("SearchResult.aspx?param1={0}&param2={1}&param3={2}&param4={3}", gender, Religious, from,to));
           
                        
            }           
        }
    }
