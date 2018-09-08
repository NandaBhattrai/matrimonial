
using matrimonial_project.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Web.UI.WebControls;

namespace matrimonial_project.View
{
    public partial class SearchResult : System.Web.UI.Page
    {
        private int PageSize = 2;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getList(1);
            }
            //if ((Request.QueryString["param1"] != null && Request.QueryString["param2"] != null) && Request.QueryString["param3"] != null && Request.QueryString["param4"] != null)
            //{
            //    string gender = Request.QueryString["param1"];
            //    string religion = Request.QueryString["param2"];
            //    int from = Convert.ToInt16(Request.QueryString["param3"]) - 1;
            //    int to = Convert.ToInt16(Request.QueryString["param4"] + 1);
            //    string str = "SELECT * FROM dbo.UserProfile where Religion LIKE @Religion AND Gender LIKE @Gender AND Age BETWEEN @min AND @max AND ProfileStatus=1 AND VerifiedStatus=1";
            //    System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(str);
            //    cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = gender;
            //    cmd.Parameters.Add("@Religion", SqlDbType.VarChar).Value = religion;
            //    cmd.Parameters.Add("@min", SqlDbType.Int).Value = from;
            //    cmd.Parameters.Add("@max", SqlDbType.VarChar).Value = to;
            //    DBconnection conn_ = new DBconnection();
            //    DataTable dt = conn_.SelectData(cmd);
            //    StringBuilder html = new StringBuilder();
            //    if (dt.Rows.Count > 0)
            //    {
            //        foreach (DataRow data in dt.Rows)
            //        {
            //            string yourself;
            //            if (data["Yourself"].ToString().Length > 20)
            //            {
            //                yourself = data["Yourself"].ToString().Substring(0, 20);
            //            }
            //            else
            //            {
            //                yourself = data["Yourself"].ToString();
            //            }
            //            html.Append("<div class='col-md-6 one-w3-profile'>");
            //            html.Append("<div class='profile-details'>");
            //            html.Append("<h5>Name:" + data["name"] + "</h5>");
            //            html.Append("<img src = '../Upload/" + data["ProfileImage"] + "' class='prf-img img-responsive' alt='profile image'/>");
            //            html.Append("<div class='w3-prfr'>");
            //            html.Append("<p>" + data["Age"] + ", " + data["Religion"] + ", " + data["Caste"] + ", " + data["Education"] + ", " + data["Profession"] + "</p>");
            //            // html.Append("<h4>Contact Now:</h4>");
            //            //html.Append("<a href ='#' data-toggle='modal' data-target='#myModal'>Login</a><span>or</span><a href = 'index.html' > Register </a>");
            //            html.Append("</div>");
            //            html.Append("<div class='clearfix'></div>");
            //            html.Append("<p class='light'>" + yourself + "<a href = 'SearchProfile.aspx?id=" + data["ProfileID"] + "'> read more</a></p>");
            //            html.Append("</div>");
            //            html.Append("</div>");
            //        }
            //        string dynaDiv = html.ToString();
            //        test.Controls.Add(new Literal { Text = html.ToString() });
            //    }
            //    else
            //    {
            //        html.Append("<h2>No Result Found.</h2>");
            //        string dynaDiv = html.ToString();
            //        test.Controls.Add(new Literal { Text = html.ToString() });
            //    }
           // }
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


        protected void linkpage_Click(object sender, EventArgs e)
        {
            int pageIndex = int.Parse((sender as LinkButton).CommandArgument);
            this.getList(pageIndex);
        }
        private void getList(int pageIndex)
        {
            if ((Request.QueryString["param1"] != null && Request.QueryString["param2"] != null) && Request.QueryString["param3"] != null && Request.QueryString["param4"] != null)
            {
                string gender = Request.QueryString["param1"];
                string religion = Request.QueryString["param2"];
                int from = Convert.ToInt16(Request.QueryString["param3"]) - 1;
                int to = Convert.ToInt16(Request.QueryString["param4"] + 1);
                string str2 = "SELECT * FROM dbo.UserProfile where Religion LIKE @Religion AND Gender=@Gender AND Age BETWEEN @min AND @max AND ProfileStatus=1 AND VerifiedStatus=1";
                string str = "SELECT * FROM dbo.UserProfile where Religion LIKE @Religion AND Gender=@Gender AND Age BETWEEN @min AND @max AND ProfileStatus=1 AND VerifiedStatus=1 order by ProfileId  OFFSET "+PageSize*pageIndex+" ROWS FETCH NEXT "+PageSize+" ROWS ONLY";
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(str);
                System.Data.SqlClient.SqlCommand cmd2 = new System.Data.SqlClient.SqlCommand(str2);
                cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = gender;
                cmd.Parameters.Add("@Religion", SqlDbType.VarChar).Value = religion;
                cmd.Parameters.Add("@min", SqlDbType.Int).Value = from;
                cmd.Parameters.Add("@max", SqlDbType.VarChar).Value = to;

                cmd2.Parameters.Add("@Gender", SqlDbType.VarChar).Value = gender;
                cmd2.Parameters.Add("@Religion", SqlDbType.VarChar).Value = religion;
                cmd2.Parameters.Add("@min", SqlDbType.Int).Value = from;
                cmd2.Parameters.Add("@max", SqlDbType.VarChar).Value = to;
                DBconnection conn2_ = new DBconnection();
                DataTable dt2 = conn2_.SelectData(cmd2);
                DBconnection conn_ = new DBconnection();
                DataTable dt = conn_.SelectData(cmd);
                StringBuilder html = new StringBuilder();
                if (dt.Rows.Count > 0)
                {
                    int rows = dt2.Rows.Count;
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
                    this.PopulatePager(rows, pageIndex);
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

        private void PopulatePager(int recordCount, int currentPage)
        {
            double dblPageCount = (double)((decimal)recordCount / Convert.ToDecimal(PageSize));
            int pageCount = (int)Math.Ceiling(dblPageCount);
            List<ListItem> pages = new List<ListItem>();
            if (pageCount > 0)
            {
                for (int i = 1; i <= pageCount; i++)
                {
                    pages.Add(new ListItem(i.ToString(), i.ToString(), i != currentPage));
                }
            }
            rptpager.DataSource = pages;
            rptpager.DataBind();
        }
    }

   
}