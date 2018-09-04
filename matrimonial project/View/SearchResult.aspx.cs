using matrimonial_project.model;
using System;
using System.Data;
using System.Text;
using System.Web.UI.WebControls;

namespace matrimonial_project.View
{
    public partial class SearchResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Request.QueryString["param1"] != null && Request.QueryString["param2"] != null) && Request.QueryString["param3"] != null && Request.QueryString["param4"] != null)
            {
                string gender = Request.QueryString["param1"];
                string religion = Request.QueryString["param2"];
                int from = Convert.ToInt16(Request.QueryString["param3"])-1;
                int to = Convert.ToInt16(Request.QueryString["param4"]+1);
                string str = "SELECT * FROM dbo.UserProfile where Religion LIKE @Religion AND Gender LIKE @Gender AND Age BETWEEN @min AND @max AND ProfileStatus=1 AND VerifiedStatus=1";
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(str);
                cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = gender;
                cmd.Parameters.Add("@Religion", SqlDbType.VarChar).Value = religion;
                cmd.Parameters.Add("@min", SqlDbType.Int).Value = from;
                cmd.Parameters.Add("@max", SqlDbType.VarChar).Value = to;
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
                        html.Append("<h5>Name:"+data["name"]+"</h5>");
                        html.Append("<img src = '../Upload/"+data["ProfileImage"]+ "' class='prf-img img-responsive' alt='profile image'/>");
                        html.Append("<div class='w3-prfr'>");
                        html.Append("<p>"+data["Age"]+", "+data["Religion"]+ ", " + data["Caste"] + ", "+data["Education"]+", " + data["Profession"] + "</p>");
                       // html.Append("<h4>Contact Now:</h4>");
                        //html.Append("<a href ='#' data-toggle='modal' data-target='#myModal'>Login</a><span>or</span><a href = 'index.html' > Register </a>");
                        html.Append("</div>");
                        html.Append("<div class='clearfix'></div>");
                        html.Append("<p class='light'>"+yourself+"<a href = 'SearchProfile.aspx?id="+data["ProfileID"]+"'> read more</a></p>");
                        html.Append("</div>");
                        html.Append("</div>");
                    }
                    string dynaDiv = html.ToString();
                    test.Controls.Add(new Literal { Text=html.ToString()});
                }
                else
                {
                    html.Append("<h2>No Result Found.</h2>");
                    string dynaDiv = html.ToString();
                    test.Controls.Add(new Literal { Text = html.ToString() });
                }
            }
        }
        public void SearchResultShow(DataTable dt)
        {

            if (PreviousPage != null)
            {
                TextBox SourceTextBox =
                    (TextBox)PreviousPage.FindControl("ids");
                if (SourceTextBox != null)
                {
                    //profileID.Text = SourceTextBox.Text;
                }
            }
           
        }

    }

   
}