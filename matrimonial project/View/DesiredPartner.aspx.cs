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
    public partial class DesiredPartner : System.Web.UI.Page
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
                }
            }
            catch (Exception)
            {


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

        protected void ContentPlaceHolder1_Submit_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = new DataTable();
                string UserName_ = (Session["Name"]).ToString();
                string strQuery = "SELECT  UserId FROM dbo.Register WHERE Name=@Name";
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = UserName_;
                DBconnection conn_ = new DBconnection();
                dt = conn_.SelectData(cmd);
                if (dt.Rows.Count > 0)
                {
                    DataRow row = dt.Rows[0];
                    ProfileId.Value = row["UserId"].ToString();

                    string Religious = Religion.SelectedItem.ToString();
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

                    string Diet;
                    if (rad_veg.Checked == true)
                        Diet = "Vegetarian";
                    else
                        Diet = "Non Vegetarian";

                    string Drink;
                    if (rad_drinker.Checked == true)
                        Drink = "Drinker";
                    else
                        Drink = "Non Drinker";

                    string Smoke;
                    if (rad_smoker.Checked == true)
                        Smoke = "Smoker";
                    else
                        Smoke = "Non Smoker";
                    int val;
                    string Query = "INSERT INTO dbo.UserProfile (Gender,MaritalStatus,Religion,Caste,Education,Profession,Country,Agefrom,AgeTo,HeightFrom,HeightTo,Complexion,Diet,Drink,Smoke,ProfileId) VALUES (@Gender,@MaritalStatus,@Religion,@Caste,@Education,@Profession,@Country,@Agefrom,@AgeTo,@HeightFrom,@HeightTo,@Complexion,@Diet,@Drink,@Smoke,@ProfileId)";
                    SqlCommand cmmd = new SqlCommand(Query);
                    cmmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value =Gender;
                    cmmd.Parameters.Add("@MaritalStatus", SqlDbType.VarChar).Value = Marital;
                    cmmd.Parameters.Add("@Religion", SqlDbType.VarChar).Value = Religious;
                    cmmd.Parameters.Add("@Caste", SqlDbType.VarChar).Value = Caste.Value.Trim();
                    cmmd.Parameters.Add("@Education", SqlDbType.VarChar).Value = Education.Value.Trim();
                    cmmd.Parameters.Add("@Profession", SqlDbType.VarChar).Value = Profession.Value.Trim();
                    cmmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = Country.Value.Trim();
                    cmmd.Parameters.Add("@AgeFrom", SqlDbType.Int).Value =int.TryParse(AgeFrom.Value,out val);
                    cmmd.Parameters.Add("@AgeTo", SqlDbType.Int).Value = int.TryParse(AgeTo.Value, out val);
                    cmmd.Parameters.Add("@HeightFrom", SqlDbType.Int).Value =int.TryParse(HeightFrom.Value,out val);
                    cmmd.Parameters.Add("@HeightTo", SqlDbType.Int).Value =int.TryParse(HeightTo.Value,out val);
                    cmmd.Parameters.Add("@Complexion", SqlDbType.VarChar).Value = complexion.Value.Trim();
                    cmmd.Parameters.Add("@Diet", SqlDbType.VarChar).Value = Diet;
                    cmmd.Parameters.Add("@Drink", SqlDbType.VarChar).Value = Drink;
                    cmmd.Parameters.Add("@Smoke", SqlDbType.VarChar).Value = Smoke;
                    cmmd.Parameters.Add("@ProfileId", SqlDbType.Int).Value = int.TryParse(ProfileId.Value, out val);
                    DBconnection conn = new DBconnection();
                    bool result = conn.ExecuteData(cmmd);
                    if (result)
                    {
                       Response.Redirect("SearchResult.aspx", false);
                    }
                    else
                    {
                        message.Text = "Sorry Something Went Wrong";
                    }
                }
                else
                {
                    message.Visible = true;
                    message.Text = "ProfileId is not defined!!!!!";
                }
           }
            catch (Exception ex)
            {
                message.Text = Convert.ToString(ex);
            }
        }

        protected void ContentPlaceHolder1_Cancel_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("DesiredPartner",false);
            }
            catch (Exception ex)
            {
                message.Text = Convert.ToString(ex);
            }
        }
    }
}