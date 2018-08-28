using matrimonial_project.model;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace matrimonial_project.View
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    DataTable data = this.getreligion();
                    if (data.Rows.Count > 0)
                    {
                        Religion.DataSource = data;
                        Religion.DataBind();
                        Religion.DataTextField = "Religion";
                        Religion.DataValueField = "ReligionId";
                        Religion.DataBind();
                    }
                    DataTable value = this.getvalue();
                    {
                        if (value.Rows.Count > 0)
                        {
                            Country_list.DataSource = value;
                            Country_list.DataBind();
                            Country_list.DataTextField = "Country";
                            Country_list.DataValueField = "Country";
                            Country_list.DataBind();
                        }
                    }
                    DataTable Castevalue = this.getcaste();
                    {
                        if (Castevalue.Rows.Count > 0)
                        {
                            Caste.DataSource = Castevalue;
                            Caste.DataBind();
                            Caste.DataTextField = "Caste";
                            Caste.DataValueField = "Caste";
                            Caste.DataBind();
                        }
                    }
                    DataTable Professionvalue = this.getprofession();
                    {
                        if (Professionvalue.Rows.Count > 0)
                        {
                            Profession.DataSource = Professionvalue;
                            Profession.DataBind();
                            Profession.DataTextField = "Profession";
                            Profession.DataValueField = "Profession";
                            Profession.DataBind();
                        }
                    }
                    DataTable Stayvalue = this.getstay();
                    {
                        if (Stayvalue.Rows.Count > 0)
                        {
                            Stay.DataSource = Stayvalue;
                            Stay.DataBind();
                            Stay.DataTextField = "Stay";
                            Stay.DataValueField = "Stay";
                            Stay.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }

        private DataTable getstay()
        {
            DataTable dt = new DataTable();
            string strQuery = "SELECT DISTINCT Stay FROM dbo.UserProfile";
            SqlCommand cmd = new SqlCommand(strQuery);
            DBconnection conn_ = new DBconnection();
            dt = conn_.SelectData(cmd);
            return dt;
        }

        private DataTable getprofession()
        {
            DataTable dt = new DataTable();
            string strQuery = "SELECT DISTINCT Profession FROM dbo.UserProfile";
            SqlCommand cmd = new SqlCommand(strQuery);
            DBconnection conn_ = new DBconnection();
            dt = conn_.SelectData(cmd);
            return dt;
        }

        private DataTable getcaste()
        {
            DataTable dt = new DataTable();
            string strQuery = "SELECT DISTINCT Caste FROM dbo.UserProfile";
            SqlCommand cmd = new SqlCommand(strQuery);
            DBconnection conn_ = new DBconnection();
            dt = conn_.SelectData(cmd);
            return dt;
        }

        private DataTable getvalue()
        {
            DataTable dt = new DataTable();
            string strQuery = "SELECT DISTINCT Country FROM dbo.UserProfile";
            SqlCommand cmd = new SqlCommand(strQuery);
            DBconnection conn_ = new DBconnection();
            dt = conn_.SelectData(cmd);
            return dt;
        }

        private DataTable getreligion()
        {
            DataTable dt = new DataTable();
            string strQuery = "SELECT ReligionId,Religion FROM dbo.Religion";
            SqlCommand cmd = new SqlCommand(strQuery);
            DBconnection conn_ = new DBconnection();
            dt = conn_.SelectData(cmd);
            return dt;
        }

        protected void ContentPlaceHolder1_Cancel_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Search", false);
            }
            catch (Exception ex)
            {
                message.Text = Convert.ToString(ex);
            }
        }

        protected void ContentPlaceHolder1_Submit_Click(object sender, EventArgs e)
        {
            try
            {
                string Religious = Religion.SelectedItem.ToString();
                string SearchCountry = Country_list.SelectedItem.ToString();
                string SearchCaste = Caste.SelectedItem.ToString();
                string SearchProfession = Profession.SelectedItem.ToString();
                string Stay_Address = Stay.SelectedItem.ToString();
                bool male = rad_male.Checked;
                bool female = rad_female.Checked;
                string Gender;
                if (male)
                    Gender = "Male";
                else
                    Gender = "Female";

                string Marital;
                if (rad_single.Checked == true)
                    Marital = "Single";
                else if (rad_married.Checked == true)
                    Marital = "Married";
                else
                    Marital = "Divorced";
                int ageto = Convert.ToInt16(AgeTo.Value)+1;
                int agefrom = Convert.ToInt16(AgeFrom.Value)-1;
                double heightto = Convert.ToDouble(HeightTo.Value)+1.0;
                double heightfrom = Convert.ToDouble(HeightFrom.Value)-1.0;
                DataTable data = new DataTable();
                string Query = "SELECT * FROM dbo.UserProfile Where Gender=@Gender AND Country=@Country AND Caste=@Caste AND Profession=@Profession AND Stay=@Stay AND MaritalStatus=@MaritalStatus AND Religion=@Religion AND ProfileStatus=1 AND Age BETWEEN @minage AND @maxage AND Height BETWEEN @minheight AND @maxheight";
                SqlCommand cmmd = new SqlCommand(Query);
                cmmd.Parameters.Add("@Stay", SqlDbType.VarChar).Value = Stay_Address;
                cmmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = SearchCountry;
                cmmd.Parameters.Add("@Caste", SqlDbType.VarChar).Value = SearchCaste;
                cmmd.Parameters.Add("@Profession", SqlDbType.VarChar).Value = SearchProfession;
                cmmd.Parameters.Add("@Religion", SqlDbType.VarChar).Value = Religious;
                cmmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = Gender;
                cmmd.Parameters.Add("@MaritalStatus", SqlDbType.VarChar).Value = Marital;
                cmmd.Parameters.Add("@minage", SqlDbType.Int).Value = agefrom;
                cmmd.Parameters.Add("@maxage", SqlDbType.Int).Value = ageto;
                cmmd.Parameters.Add("@minheight", SqlDbType.Float).Value = heightfrom;
                cmmd.Parameters.Add("@maxheight", SqlDbType.Float).Value = heightto;
                DBconnection conn = new DBconnection();
                StringBuilder html = new StringBuilder();
                data = conn.SelectData(cmmd);
                if (data.Rows.Count > 0)
                {
                    Result_block.Visible = true;
                    Search_block.Visible = false;
                    foreach (DataRow dr in data.Rows)
                    {
                        string yourself;
                        if (dr["Yourself"].ToString().Length > 20)
                        {
                            yourself = dr["Yourself"].ToString().Substring(0, 20);
                        }
                        else
                        {
                            yourself = dr["Yourself"].ToString();
                        }
                        html.Append("<div class='col-md-6 one-w3-profile'>");
                        html.Append("<div class='profile-details'>");
                        html.Append("<h5>Name:" + dr["name"] + "</h5>");
                        html.Append("<img src = '../Upload/" + dr["ProfileImage"] + "' class='prf-img img-responsive' alt='profile image' height=20 />");
                        html.Append("<div class='w3-prfr'>");
                        html.Append("<p>" + dr["Age"] + ", " + dr["Religion"] + ", " + dr["Caste"] + ", " + dr["Education"] + ", " + dr["Profession"] + "</p>");
                        // html.Append("<h4>Contact Now:</h4>");
                        //html.Append("<a href ='#' data-toggle='modal' data-target='#myModal'>Login</a><span>or</span><a href = 'index.html' > Register </a>");
                        html.Append("</div>");
                        html.Append("<div class='clearfix'></div>");
                        html.Append("<p class='light'>" + yourself + "<a href = 'SearchProfile.aspx?id=" + dr["ProfileID"] + "'> read more</a></p>");
                        html.Append("</div>");
                        html.Append("</div>");
                    }
                    string dynaDiv = html.ToString();
                    test.Controls.Add(new Literal { Text = html.ToString() });
                }
                else
                {
                    Result_block.Visible = true;
                    Search_block.Visible = false;
                    html.Append("<h2>No Result Found.</h2>");
                    string dynaDiv = html.ToString();
                    test.Controls.Add(new Literal { Text = html.ToString() });
                }
            }
            catch (Exception ex)
            {
             
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {

        }
    }
}