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
    public partial class UserDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    this.ProfileData();
                    this.PartnerData();
                }
            }
            catch (Exception ex)
            {
                mes.Text = Convert.ToString(ex);
            }
        }

        private void PartnerData()
        {
            try
            {
                DataTable Partrner = this.getPartner();
                if (Partrner.Rows.Count > 0)
                {
                    DataRow row = Partrner.Rows[0];
                    PartnerGender.Text = row["Gender"].ToString();
                    PartnerAgeFrom.Text = row["AgeFrom"].ToString();
                    PartnerAgeTo.Text = row["AgeTo"].ToString();
                    PartnerHeightFrom.Text = row["HeightFrom"].ToString();
                    PartnerHeightTo.Text = row["HeightTo"].ToString();
                    PartnerMarital.Text = row["MaritalStatus"].ToString();
                    PartnerReligion.Text = row["Religion"].ToString();
                    PartnerCaste.Text = row["Caste"].ToString();
                    PartnerCountry.Text = row["Country"].ToString();
                    PartnerEducation.Text = row["Education"].ToString();
                    PartnerOccupation.Text = row["Profession"].ToString();
                    PartnerComplexion.Text = row["Complexion"].ToString();
                    PartnerDiet.Text = row["Diet"].ToString();
                    PartnerDrink.Text = row["Drink"].ToString();
                    PartnerSmoke.Text = row["Smoke"].ToString();
                }
            }
            catch (Exception ex)
            {
                mes.Text = Convert.ToString(ex);
            }
        }

        private DataTable getPartner()
        {
            DataTable dt = new DataTable();
            string strQuery = "SELECT * FROM dbo.Partner where RegisterId=@RegisterId";
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt32(Session["Id"]);
            DBconnection conn_ = new DBconnection();
            dt = conn_.SelectData(cmd);
            return dt;
        }

        private void ProfileData()
        {
            try
            {
                DataTable value = this.getValue();
                if (value.Rows.Count > 0)
                {
                    DataRow row = value.Rows[0];
                    Date.Text = row["Date"].ToString();
                    ProfileId.Text = row["ProfileId"].ToString();
                    Name.Text = row["Name"].ToString();                 
                    UserDateOfBirth.Text = row["DateOfBirth"].ToString();
                    UserPhone.Text = row["Mobile"].ToString();
                    UserEmail.Text = row["Email"].ToString();
                    UserAge.Text = row["Age"].ToString();
                    UserHeight.Text = row["Height"].ToString();
                    UserWeight.Text = row["Weight"].ToString();
                    AboutMe.Text = row["Yourself"].ToString();
                    AboutFamily.Text = row["Family"].ToString();
                    UserEducation.Text = row["Education"].ToString();
                    Occupation.Text = row["Profession"].ToString();
                    Apperance.Text = row["Complexion"].ToString();
                    UserDrink.Text = row["Drink"].ToString();
                    UserDiet.Text = row["Diet"].ToString();
                    UserSmoke.Text = row["Smoker"].ToString();
                    UserMarital.Text = row["MaritalStatus"].ToString();
                    UserNationality.Text = row["Nationality"].ToString();
                    UserReligion.Text = row["Religion"].ToString();
                    UserCaste.Text = row["Caste"].ToString();
                    UserMotherTongue.Text = row["MotherTongue"].ToString();
                    Languages.Text = row["KnownLanguage"].ToString();
                    Blood.Text = row["BloodGroup"].ToString();
                    UserCountry.Text = row["Country"].ToString();
                    UserState.Text = row["State"].ToString();
                    UserDistrict.Text = row["District"].ToString();
                    UserStay.Text = row["Stay"].ToString();
                    string Image = row["ProfileImage"].ToString();
                    Image = "../../Upload/" + Image;
                    Image = "<img src='" + Image + "' height='250px' />";
                    UserImage.Text = Image;
                    string Front = row["Front"].ToString();
                    Front = "../../Upload/" + Front;
                    Front = "<img src='" + Front + "' height='350px' />";
                    FrontImage.Text = Front;
                    string Back = row["Back"].ToString();
                    Back = "../../Upload/" + Back;
                    Back = "<img src='" + Back + "' height='350px' />";
                    BackImage.Text = Back;
                }
            }
            catch (Exception ex)
            {
                mes.Text = Convert.ToString(ex);
            }
        }

        private DataTable getValue()
        {
            DataTable dt = new DataTable();
            string strQuery = "SELECT * FROM dbo.UserProfile where RegisterId=@RegisterId";
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt32(Session["Id"]);
            DBconnection conn_ = new DBconnection();
            dt = conn_.SelectData(cmd);
            return dt;
        }

        protected void Read_Click(object sender, EventArgs e)
        {
            try
            {
                getPartnerUpdate();
                string strQuery = "update UserProfile set ProfileStatus=0 where RegisterId = @RegisterId "; 
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt32(Session["Id"]); 
                DBconnection conn_ = new DBconnection();
                bool result = conn_.ExecuteData(cmd);
                if (result)
                {
                    Response.Redirect("UserList.aspx",false);
                }
            }
            catch (Exception ex)
            {
                mes.Text = Convert.ToString(ex);
            }
        }

        private void getPartnerUpdate()
        {
            string strQuery = "update Partner set PartnerStatus=0 where RegisterId = @RegisterId ";
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt32(Session["Id"]);
            DBconnection conn_ = new DBconnection();
            bool result = conn_.ExecuteData(cmd);
        }

        protected void Verified_Click(object sender, EventArgs e)
        {
            try
            {
                string strQuery = "update UserProfile set VerifiedStatus=1 where RegisterId = @RegisterId ";
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt32(Session["Id"]);
                DBconnection conn_ = new DBconnection();
                bool result = conn_.ExecuteData(cmd);
                if (result)
                {
                    Response.Redirect("UserList.aspx", false);
                }
            }
            catch (Exception ex)
            {
                mes.Text = Convert.ToString(ex);
            }
        }
    }
}