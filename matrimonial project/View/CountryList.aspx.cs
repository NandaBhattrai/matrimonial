using matrimonial_project.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace matrimonial_project.View
{
    public partial class CountryList : System.Web.UI.Page
    {        
        protected void Page_Load(object sender, EventArgs e)
        {
            string country = Request.QueryString["param1"];
            string Profession = Request.QueryString["param2"];
            string caste = Request.QueryString["param3"];
            if (Request.QueryString["param1"].ToString() != "")
            {
                this.countrydata();                
            }
            else if( Request.QueryString["param2"].ToString()!="")
            {
                this.professiondata();
            }
            else if(Request.QueryString["param3"].ToString()!="")
            {
                this.castedata();
            }
        }

        private void castedata()
        {
            this.getGender();
            string str = "SELECT * FROM dbo.UserProfile where Caste=@Caste AND Gender<>@Gender AND VerifiedStatus=1 AND ProfileStatus=1";
            SqlCommand cmd = new SqlCommand(str);
            cmd.Parameters.Add("@Caste", SqlDbType.VarChar).Value = Request.QueryString["param3"].ToString();
            cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = gender.Value;
            DBconnection conn_ = new DBconnection();
            DataTable dt = conn_.SelectData(cmd);
            StringBuilder html = new StringBuilder();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow data in dt.Rows)
                {
                    string yourself;
                    if (data["Yourself"].ToString().Length > 20)
                    {
                        yourself = data["Yourself"].ToString().Substring(0, 20);
                    }
                    else
                    {
                        yourself = data["Yourself"].ToString();
                    }
                    html.Append("<div class='col-md-6 one-w3-profile'>");
                    html.Append("<div class='profile-details'>");
                    html.Append("<h5>Name:" + data["name"] + "</h5>");
                    html.Append("<img src = '../Upload/" + data["ProfileImage"] + "' class='prf-img img-responsive' alt='profile image'/>");
                    html.Append("<div class='w3-prfr'>");
                    html.Append("<p>" + data["Age"] + ", " + data["Religion"] + ", " + data["Caste"] + ", " + data["Education"] + ", " + data["Profession"] + "</p>");
                    // html.Append("<h4>Contact Now:</h4>");
                    //html.Append("<a href ='#' data-toggle='modal' data-target='#myModal'>Login</a><span>or</span><a href = 'index.html' > Register </a>");
                    html.Append("</div>");
                    html.Append("<div class='clearfix'></div>");
                    html.Append("<p class='light'>" + yourself + "<a href = 'SearchProfile.aspx?id=" + data["ProfileID"] + "'> read more</a></p>");
                    html.Append("</div>");
                    html.Append("</div>");
                }
                string dynaDiv = html.ToString();
                test.Controls.Add(new Literal { Text = html.ToString() });
            }
            else
            {
                html.Append("<h2>No Result Found.</h2>");
                string dynaDiv = html.ToString();
                test.Controls.Add(new Literal { Text = html.ToString() });
            }
        }

        private void getGender()
        {
            DataTable data = new DataTable();
            string StrQuery = "select Gender from UserProfile where ProfileStatus=1 AND RegisterId=@RegisterId AND VerifiedStatus=1";
            SqlCommand cmmd = new SqlCommand(StrQuery);
            cmmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt16(Session["UserId"].ToString());
            DBconnection conn = new DBconnection();
            StringBuilder html = new StringBuilder();
            data = conn.SelectData(cmmd);
            if (data.Rows.Count > 0)
            {
                DataRow row = data.Rows[0];
                gender.Value = row["Gender"].ToString();
            }
       }

        private void professiondata()
        {
            this.getGender();
            string str = "SELECT * FROM dbo.UserProfile where Profession=@Profession AND Gender<>@Gender AND VerifiedStatus=1 AND ProfileStatus=1";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(str);
            cmd.Parameters.Add("@Profession", SqlDbType.VarChar).Value = Request.QueryString["param2"].ToString();
            cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = gender.Value;
            DBconnection conn_ = new DBconnection();
            DataTable dt = conn_.SelectData(cmd);
            StringBuilder html = new StringBuilder();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow data in dt.Rows)
                {
                    string yourself;
                    if (data["Yourself"].ToString().Length > 20)
                    {
                        yourself = data["Yourself"].ToString().Substring(0, 20);
                    }
                    else
                    {
                        yourself = data["Yourself"].ToString();
                    }
                    html.Append("<div class='col-md-6 one-w3-profile'>");
                    html.Append("<div class='profile-details'>");
                    html.Append("<h5>Name:" + data["name"] + "</h5>");
                    html.Append("<img src = '../Upload/" + data["ProfileImage"] + "' class='prf-img img-responsive' alt='profile image'/>");
                    html.Append("<div class='w3-prfr'>");
                    html.Append("<p>" + data["Age"] + ", " + data["Religion"] + ", " + data["Caste"] + ", " + data["Education"] + ", " + data["Profession"] + "</p>");
                    // html.Append("<h4>Contact Now:</h4>");
                    //html.Append("<a href ='#' data-toggle='modal' data-target='#myModal'>Login</a><span>or</span><a href = 'index.html' > Register </a>");
                    html.Append("</div>");
                    html.Append("<div class='clearfix'></div>");
                    html.Append("<p class='light'>" + yourself + "<a href = 'SearchProfile.aspx?id=" + data["ProfileID"] + "'> read more</a></p>");
                    html.Append("</div>");
                    html.Append("</div>");
                }
                string dynaDiv = html.ToString();
                test.Controls.Add(new Literal { Text = html.ToString() });
            }
            else
            {
                html.Append("<h2>No Result Found.</h2>");
                string dynaDiv = html.ToString();
                test.Controls.Add(new Literal { Text = html.ToString() });
            }
        }

        private void countrydata()
        {
            this.getGender();
            string str = "SELECT * FROM dbo.UserProfile where Country=@Country AND Gender<>@Gender AND VerifiedStatus=1 AND ProfileStatus=1";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(str);
            cmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = Request.QueryString["param1"].ToString();
            cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = gender.Value;
            DBconnection conn_ = new DBconnection();
            DataTable dt = conn_.SelectData(cmd);
            StringBuilder html = new StringBuilder();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow data in dt.Rows)
                {
                    string yourself;
                    if (data["Yourself"].ToString().Length > 20)
                    {
                        yourself = data["Yourself"].ToString().Substring(0, 20);
                    }
                    else
                    {
                        yourself = data["Yourself"].ToString();
                    }
                    html.Append("<div class='col-md-6 one-w3-profile'>");
                    html.Append("<div class='profile-details'>");
                    html.Append("<h5>Name:" + data["name"] + "</h5>");
                    html.Append("<img src = '../Upload/" + data["ProfileImage"] + "' class='prf-img img-responsive' alt='profile image'/>");
                    html.Append("<div class='w3-prfr'>");
                    html.Append("<p>" + data["Age"] + ", " + data["Religion"] + ", " + data["Caste"] + ", " + data["Education"] + ", " + data["Profession"] + "</p>");
                    // html.Append("<h4>Contact Now:</h4>");
                    //html.Append("<a href ='#' data-toggle='modal' data-target='#myModal'>Login</a><span>or</span><a href = 'index.html' > Register </a>");
                    html.Append("</div>");
                    html.Append("<div class='clearfix'></div>");
                    html.Append("<p class='light'>" + yourself + "<a href = 'SearchProfile.aspx?id=" + data["ProfileID"] + "'> read more</a></p>");
                    html.Append("</div>");
                    html.Append("</div>");
                }
                string dynaDiv = html.ToString();
                test.Controls.Add(new Literal { Text = html.ToString() });
            }
            else
            {
                html.Append("<h2>No Result Found.</h2>");
                string dynaDiv = html.ToString();
                test.Controls.Add(new Literal { Text = html.ToString() });
            }
        }
    }
}