using matrimonial_project.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI.WebControls;

namespace matrimonial_project.View
{
    public partial class Partner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
            }
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

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            string dynamicsql = "";

            string gender;
            if (rad_male.Checked)
                gender = "Male";
            else
                gender = "Female";
            string sql = "SELECT * FROM UserProfile  WHERE (Gender='"+gender+"'";
            string partreligion_ = Religion.SelectedItem.ToString();
            dynamicsql += " AND Religion ='" + partreligion_ + "'";
            string partdiet_ = diet.Value;
            int count = 0;
            if (!string.IsNullOrEmpty(partdiet_))
            {
                dynamicsql += " AND Diet ='" + diet.Value+"'";
            }
            if (!string.IsNullOrEmpty(drink.Value))
            {
                dynamicsql += " AND Drink ='" + drink.Value+"'";
            }
            if (!string.IsNullOrEmpty(smoke.Value))
            {
                dynamicsql += " AND Smoker ='" + smoke.Value +"'";
            }
            dynamicsql += ")";
            var p_marital = partnermarital.SelectedItem;
            var partcaste_ = part_caste.Items;
            var partcountry_ = part_country.Items;
            var parteducation_ = part_education.Items;
            var partprofession_ = part_profession.Items;
            var partcomplexion_ = part_complexion.Items;
            List<string> maritalstatus = new List<string>();
            List<string> caste = new List<string>();
            List<string> country = new List<string>();
            List<string> education = new List<string>();
            List<string> profession = new List<string>();
            List<string> complexion = new List<string>();
            for (int i = partnermarital.Items.Count-1; i >= 0; i--)
            {
                if (partnermarital.Items[i].Selected == true)
                {
                    if (count == 0)
                        dynamicsql += " AND (";
                    else
                        dynamicsql += " OR";
                    dynamicsql += " MaritalStatus='" + partnermarital.Items[i].Value+"'";
                    count = 1;
                }
            }
            count = 0;
                        dynamicsql += ")";

            
            for (int i = part_caste.Items.Count-1; i >= 0; i--)
            {
                if (part_caste.Items[i].Selected == true)
                {
                    if (count == 0)
                        dynamicsql += " AND (";
                    else
                        dynamicsql += " OR";
                    dynamicsql += " Caste='" + part_caste.Items[i].Value+"'";
                    count = 1;
                }
            }
            count = 0;
           // dynamicsql += ")";
            for (int i = part_country.Items.Count - 1; i >= 0; i--)
            {
                if (part_country.Items[i].Selected == true)
                {
                    if (count == 0)
                        dynamicsql += " AND ";
                    else
                        dynamicsql += " OR";
                    dynamicsql += "  Country='" + part_country.Items[i].Value + "'";
                    count = 1;
                }
            }
            count = 0;
            dynamicsql += ")";
            for (int i = part_education.Items.Count - 1; i >= 0; i--)
            {
                if (part_education.Items[i].Selected == true)
                {
                    if (count == 0)
                        dynamicsql += " AND (";
                    else
                        dynamicsql += " OR";
                    dynamicsql += " Education='" + part_education.Items[i].Value + "'";
                    count = 1;
                }
            }
            count = 0;
           // dynamicsql += ")";

            for (int i = part_profession.Items.Count - 1; i >= 0; i--)
            {
                if (part_profession.Items[i].Selected == true)
                {
                    if (count == 0)
                        dynamicsql += " AND ";
                    else
                        dynamicsql += " OR";
                    dynamicsql += " Profession='" + part_profession.Items[i].Value + "'";
                    count = 1;
                }
            }
            count = 0;
            dynamicsql += ")";

            for (int i = part_complexion.Items.Count - 1; i >= 0; i--)
            {

                if (part_complexion.Items[i].Selected == true)
                {
                    if (count == 0)
                        dynamicsql += " AND (";
                    else
                        dynamicsql += " OR";
                    dynamicsql += " Complexion='" + part_complexion.Items[i].Value + "'";
                    count = 1;
                }
            }
            dynamicsql += ")";
            //dynamicsql += "(";
            dynamicsql += " AND ( Age BETWEEN " + AgeFrom.Value + " AND " + AgeTo.Value + " AND Height BETWEEN " + HeightFrom.Value + " AND " + HeightTo.Value + "";
            dynamicsql += ")";
            sql += dynamicsql;
            SqlCommand cmmd = new SqlCommand(sql);
            DBconnection conn = new DBconnection();
            StringBuilder html = new StringBuilder();
            DataTable data = conn.SelectData(cmmd);
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



            }
    }
