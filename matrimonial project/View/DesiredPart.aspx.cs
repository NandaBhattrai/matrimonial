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
    public partial class DesiredPart : System.Web.UI.Page
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
            catch (Exception ex)
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

                string Query = "INSERT INTO dbo.Partner (Gender,MaritalStatus,Religion,Caste,Education,Profession,Country,Agefrom,AgeTo,HeightFrom,HeightTo,Complexion,Diet,Drink,Smoke,RegisterId) VALUES (@Gender,@MaritalStatus,@Religion,@Caste,@Education,@Profession,@Country,@Agefrom,@AgeTo,@HeightFrom,@HeightTo,@Complexion,@Diet,@Drink,@Smoke,@RegisterId)";
                SqlCommand cmmd = new SqlCommand(Query);
                cmmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = Gender;
                cmmd.Parameters.Add("@MaritalStatus", SqlDbType.VarChar).Value = Marital;
                cmmd.Parameters.Add("@Religion", SqlDbType.VarChar).Value = Religious;
                cmmd.Parameters.Add("@Caste", SqlDbType.VarChar).Value = Caste.Value.Trim();
                cmmd.Parameters.Add("@Education", SqlDbType.VarChar).Value = Education.Value.Trim();
                cmmd.Parameters.Add("@Profession", SqlDbType.VarChar).Value = Profession.Value.Trim();
                cmmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = Country.Value.Trim();
                cmmd.Parameters.Add("@AgeFrom", SqlDbType.Int).Value = Convert.ToInt32(AgeFrom.Value);
                cmmd.Parameters.Add("@AgeTo", SqlDbType.Int).Value = Convert.ToInt32(AgeTo.Value);
                cmmd.Parameters.Add("@HeightFrom", SqlDbType.Float).Value = Convert.ToDouble(HeightFrom.Value);
                cmmd.Parameters.Add("@HeightTo", SqlDbType.Float).Value = Convert.ToDouble(HeightTo.Value);
                cmmd.Parameters.Add("@Complexion", SqlDbType.VarChar).Value = complexion.Value.Trim();
                cmmd.Parameters.Add("@Diet", SqlDbType.VarChar).Value = Diet;
                cmmd.Parameters.Add("@Drink", SqlDbType.VarChar).Value = Drink;
                cmmd.Parameters.Add("@Smoke", SqlDbType.VarChar).Value = Smoke;
                cmmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserId"]);
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
            catch (Exception ex)
            {
                message.Text = Convert.ToString(ex);
            }
        }

        protected void ContentPlaceHolder1_Cancel_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("DesiredPart.aspx", false);
            }
            catch (Exception ex)
            {
                message.Text = Convert.ToString(ex);
            }
        }
    }
}