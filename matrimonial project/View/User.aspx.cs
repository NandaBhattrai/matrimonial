using matrimonial_project.model;
using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI;

namespace matrimonial_project.View
{
    public partial class User : System.Web.UI.Page
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
                message.Text = Convert.ToString(ex);
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
                message.Text = Convert.ToString(ex);
            }  
        }

        private void ProfileData()
        {
            try
            {
                DataTable value = this.getValue();
                if (value.Rows.Count > 0)
                {
                    DataRow row = value.Rows[0];
                    ProfileId.Text = row["ProfileId"].ToString();
                    UserName.Text = row["Name"].ToString();
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
                    Image = "../Upload/" + Image;
                    Image = "<img src='" + Image + "'/>";
                    UserImage.Text = Image;
                    string front = row["Front"].ToString();
                    front = "../Upload/" + front;
                    front = "<img src='" + front + "'/>";
                    frontImage.Text = front;
                    string back = row["Back"].ToString();
                    back = "../Upload/" + back;
                    back = "<img src='" + back + "'/>";
                    backImage.Text = back;
                }                
            }
            catch (Exception ex)
            {
                message.Text = Convert.ToString(ex);
            }
        }

        private DataTable getPartner()
        {
            DataTable dt = new DataTable();
            string strQuery = "SELECT * FROM dbo.Partner where RegisterId=@RegisterId AND PartnerStatus=1";
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserId"]);
            DBconnection conn_ = new DBconnection();
            dt = conn_.SelectData(cmd);
            return dt;
        }

        private DataTable getValue()
        {
            DataTable dt = new DataTable();           
            string strQuery = "SELECT * FROM dbo.UserProfile where RegisterId=@RegisterId AND ProfileStatus=1 AND VerifiedStatus=1";
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserId"]);           
            DBconnection conn_ = new DBconnection();
            dt = conn_.SelectData(cmd);
            return dt;
        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            try
            {
                Edit_Block.Visible = true;
                Profile_Block.Visible = false;
                DataTable data = this.getreligion();
                if (data.Rows.Count > 0)
                {
                    Religion.DataSource = data;
                    Religion.DataBind();
                    Religion.DataTextField = "Religion";
                    Religion.DataValueField = "ReligionId";
                    Religion.DataBind();
                }
                DataTable value = this.getValue();
                if (value.Rows.Count > 0)
                {
                    DataRow row = value.Rows[0];
                    Name.Value = row["Name"].ToString();
                    if (row["Gender"].ToString() == "Male")
                    {
                        rad_male.Checked = true;
                        rad_female.Checked = false;
                    }
                    else
                    {
                        rad_female.Checked = true;
                        rad_male.Checked = false;
                    }
                    DateOfBirth.Value = row["DateOfBirth"].ToString();
                    Phone.Value = row["Mobile"].ToString();
                    Email.Value = row["Email"].ToString();
                    MySelf.Value = row["Yourself"].ToString();
                    Textarea1.Value = row["Family"].ToString();
                    Education.Value = row["Education"].ToString();
                    Profession.Value = row["Profession"].ToString();
                    Age.Value = row["Age"].ToString();
                    Height.Value = row["Height"].ToString();
                    Weight.Value = row["Weight"].ToString();
                    Complexion.Value = row["Complexion"].ToString();
                    if (row["Drink"].ToString() == "Drinker")
                    {
                        Drinker.Checked = true;
                        Non_Drinker.Checked = false;
                    }
                    else
                    {
                        Drinker.Checked = false;
                        Non_Drinker.Checked = true;
                    }

                    if (row["Smoker"].ToString() == "Smoker")
                    {
                        Smoker.Checked = true;
                        Non_Smoker.Checked = false;
                    }
                    else
                    {
                        Smoker.Checked = false;
                        Non_Smoker.Checked = true;
                    }
                    if (row["Diet"].ToString() == "Non Vegetarian")
                    {
                        Vegetarian.Checked = false;
                        Non_Vegetarian.Checked = true;
                    }
                    else
                    {
                        Vegetarian.Checked = true;
                        Non_Vegetarian.Checked = false;
                    }
                   if (row["MaritalStatus"].ToString() == "Single")
                    {
                        Single.Checked = true;
                        Divorced.Checked = false;
                    }
                    else
                    {
                        Single.Checked = false;
                        Divorced.Checked = true;
                    }

                    Nationality.Value = row["Nationality"].ToString();
                    Religion.Items.FindByText(row["Religion"].ToString()).Selected = true;
                    Caste.Value = row["Caste"].ToString();
                    MotherTongue.Value = row["MotherTongue"].ToString();
                    KnownLanguage.Value = row["KnownLanguage"].ToString();
                    BloodGroup.Value = row["BloodGroup"].ToString();
                    Country.Value = row["Country"].ToString();
                    State.Value = row["State"].ToString();
                    City.Value = row["District"].ToString();
                    Stay.Value = row["Stay"].ToString();                    
                    string image = row["ProfileImage"].ToString();
                    old_image.Value = image;                                        
                    show_image.Text = "<img src='../Upload/" + image + "' height=50px width=50px/>";
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
                Response.Redirect("User.aspx", false);
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
                string Blood = BloodGroup.Value.ToString();
                bool male = rad_male.Checked;
                bool female = rad_female.Checked;
                string Gender;
                if (male)
                    Gender = "Male";
                else
                    Gender = "Female";

                string Marital;
                if (Single.Checked == true)
                    Marital = "Single";
                else
                    Marital = "Divorced";

                string Diet;
                if (Vegetarian.Checked == true)
                    Diet = "Vegetarian";
                else
                    Diet = "Non Vegetarian";

                string Drink;
                if (Drinker.Checked == true)
                    Drink = "Drinker";
                else
                    Drink = "Non Drinker";

                string Smoke;
                if (Smoker.Checked == true)
                    Smoke = "Smoker";
                else
                    Smoke = "Non Smoker";

                HttpPostedFile file = image_edit.PostedFile;
                string Photo = old_image.Value;               
                if (file != null)
                {
                    if (!Directory.Exists(Server.MapPath("~/Upload")))
                    {
                        Directory.CreateDirectory(Server.MapPath("~/Upload"));
                    }

                    var extension = Path.GetExtension(file.FileName).ToLower();
                    if (extension == ".png" || extension == ".jpg" || extension == ".jpeg")
                    {
                        var filezize = file.ContentLength;
                        if (filezize <= 1024 * 1024 * 5)
                        {
                            var filename = Guid.NewGuid().ToString() + extension;
                            file.SaveAs(Server.MapPath($"~/Upload/{filename}"));
                            Photo = $"{filename}";
                        }
                        else
                        {
                            message.Visible = true;
                            message.Text = "Image Size is large Please select small size image";
                        }
                    }
                }
                

                string Query = "Update dbo.UserProfile set Name=@Name ,Gender=@Gender,DateOfBirth=@DateOfBirth,MaritalStatus=@MaritalStatus,Nationality=@Nationality,Religion=@Religion,Caste=@Caste,MotherTongue=@MotherTongue,KnownLanguage=@KnownLanguage,BloodGroup=@BloodGroup,Education=@Education,Profession=@Profession,Country=@Country,State=@State,District=@District,Stay=@Stay,Mobile=@Mobile,Email=@Email,Age=@Age,Weight=@Weight,Complexion=@Complexion,Diet=@Diet,Drink=@Drink,Smoker=@Smoker,ProfileImage=@ProfileImage,Family=@Family,Yourself=@Yourself,ProfileStatus=@ProfileStatus,Height=@Height where RegisterId = @RegisterId";
                SqlCommand cmmd = new SqlCommand(Query);
                cmmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = Name.Value.Trim();
                cmmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = Gender;
                cmmd.Parameters.Add("@DateOfBirth", SqlDbType.VarChar).Value = DateOfBirth.Value.Trim();
                cmmd.Parameters.Add("@MaritalStatus", SqlDbType.VarChar).Value = Marital;
                cmmd.Parameters.Add("@Nationality", SqlDbType.VarChar).Value = Nationality.Value.Trim();
                cmmd.Parameters.Add("@Religion", SqlDbType.VarChar).Value = Religious;
                cmmd.Parameters.Add("@Caste", SqlDbType.VarChar).Value = Caste.Value.Trim();
                cmmd.Parameters.Add("@MotherTongue", SqlDbType.VarChar).Value = MotherTongue.Value.Trim();
                cmmd.Parameters.Add("@KnownLanguage", SqlDbType.VarChar).Value = KnownLanguage.Value.Trim();
                cmmd.Parameters.Add("@BloodGroup", SqlDbType.VarChar).Value = Blood;
                cmmd.Parameters.Add("@Education", SqlDbType.VarChar).Value = Education.Value.Trim();
                cmmd.Parameters.Add("@Profession", SqlDbType.VarChar).Value = Profession.Value.Trim();
                cmmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = Country.Value.Trim();
                cmmd.Parameters.Add("@State", SqlDbType.VarChar).Value = State.Value.Trim();
                cmmd.Parameters.Add("@District", SqlDbType.VarChar).Value = City.Value.Trim();
                cmmd.Parameters.Add("@Stay", SqlDbType.VarChar).Value = Stay.Value.Trim();
                cmmd.Parameters.Add("@Mobile", SqlDbType.VarChar).Value = Phone.Value.Trim();
                cmmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = Email.Value.Trim();
                cmmd.Parameters.Add("@Age", SqlDbType.Int).Value = Convert.ToInt16(Age.Value.Trim());
                cmmd.Parameters.Add("@Weight", SqlDbType.Int).Value = Convert.ToInt16(Weight.Value.Trim());
                cmmd.Parameters.Add("@Complexion", SqlDbType.VarChar).Value = Complexion.Value.Trim();
                cmmd.Parameters.Add("@Diet", SqlDbType.VarChar).Value = Diet;
                cmmd.Parameters.Add("@Drink", SqlDbType.VarChar).Value = Drink;
                cmmd.Parameters.Add("@Smoker", SqlDbType.VarChar).Value = Smoke;
                cmmd.Parameters.Add("@ProfileImage", SqlDbType.VarChar).Value = Photo;
                cmmd.Parameters.Add("@Family", SqlDbType.VarChar).Value = Textarea1.Value.Trim();
                cmmd.Parameters.Add("@Yourself", SqlDbType.VarChar).Value = MySelf.Value.Trim();
                cmmd.Parameters.Add("@ProfileStatus", SqlDbType.VarChar).Value = "1";
                cmmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserId"].ToString());
                cmmd.Parameters.Add("@Height", SqlDbType.Float).Value = Convert.ToDouble(Height.Value);

                DBconnection conn = new DBconnection();
                bool result = conn.ExecuteData(cmmd);
                if (result)
                {
                    Response.Redirect("User.aspx", false);
                }
                else
                {
                    message.Visible = true;
                    message.Text = "Sorry Something Went Wrong";
                }
            }
            catch (Exception ex)
            {
                message.Text = Convert.ToString(ex);
            }
        }     

        protected void PartnerCancel_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("User.aspx", false);
            }
            catch (Exception ex)
            {
                message.Text = Convert.ToString(ex);
            }
        }

        protected void PartnerSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string Religious = PartReligion.SelectedItem.ToString();
                bool male = radmale.Checked;
                bool female = radfemale.Checked;
                string Gender;
                if (male)
                    Gender = "Male";
                else
                    Gender = "Female";

                string Marital;
                if (rad_single.Checked == true)
                    Marital = "Single";               
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

                string Query = "update dbo.Partner set Gender=@Gender,MaritalStatus=@MaritalStatus,Religion=@Religion,Caste=@Caste,Education=@Education,Profession=@Profession,Country=@Country,Agefrom=@Agefrom,AgeTo=@AgeTo,HeightFrom=@HeightFrom,HeightTo=@HeightTo,Complexion=@Complexion,Diet=@Diet,Drink=@Drink,Smoke=@Smoke where RegisterId=@RegisterId AND VerifiedStatus=1";
                SqlCommand cmmd = new SqlCommand(Query);
                cmmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = Gender;
                cmmd.Parameters.Add("@MaritalStatus", SqlDbType.VarChar).Value = Marital;
                cmmd.Parameters.Add("@Religion", SqlDbType.VarChar).Value = Religious;
                cmmd.Parameters.Add("@Caste", SqlDbType.VarChar).Value = PartCaste.Value.Trim();
                cmmd.Parameters.Add("@Education", SqlDbType.VarChar).Value = PartEducation.Value.Trim();
                cmmd.Parameters.Add("@Profession", SqlDbType.VarChar).Value = PartOccupation.Value.Trim();
                cmmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = PartCountry.Value.Trim();
                cmmd.Parameters.Add("@AgeFrom", SqlDbType.Int).Value = Convert.ToInt32(PartAgeFrom.Value);
                cmmd.Parameters.Add("@AgeTo", SqlDbType.Int).Value = Convert.ToInt32(PartAgeTo.Value);
                cmmd.Parameters.Add("@HeightFrom", SqlDbType.Float).Value = Convert.ToDouble(PartHeightFrom.Value);
                cmmd.Parameters.Add("@HeightTo", SqlDbType.Float).Value = Convert.ToDouble(PartHeightTo.Value);
                cmmd.Parameters.Add("@Complexion", SqlDbType.VarChar).Value = PartComplexion.Value.Trim();
                cmmd.Parameters.Add("@Diet", SqlDbType.VarChar).Value = Diet;
                cmmd.Parameters.Add("@Drink", SqlDbType.VarChar).Value = Drink;
                cmmd.Parameters.Add("@Smoke", SqlDbType.VarChar).Value = Smoke;
                cmmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserId"]);
                DBconnection conn = new DBconnection();
                bool result = conn.ExecuteData(cmmd);
                if (result)
                {
                    Response.Redirect("User.aspx", false);
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

        protected void PartnerEdit_Click(object sender, EventArgs e)
        {
            try
            {
                Profile_Block.Visible = false;
                Partner_Edit.Visible = true;
                DataTable data = this.getreligion();
                if (data.Rows.Count > 0)
                {
                    PartReligion.DataSource = data;
                    PartReligion.DataBind();
                    PartReligion.DataTextField = "Religion";
                    PartReligion.DataValueField = "ReligionId";
                    PartReligion.DataBind();
                }
                DataTable Partrner = this.getPartner();
                if (Partrner.Rows.Count > 0)
                {
                    DataRow row = Partrner.Rows[0];
                    if(row["Diet"].ToString()=="Non Vegetarian")
                    {
                        rad_veg.Checked = false;
                        rad_non_veg.Checked = true;
                    }
                    else
                    {
                        rad_veg.Checked = true;
                        rad_non_veg.Checked = false;
                    }
                    PartAgeFrom.Value = row["AgeFrom"].ToString();
                    PartAgeTo.Value = row["AgeTo"].ToString();
                    PartHeightFrom.Value = row["HeightFrom"].ToString();
                    PartHeightTo.Value = row["HeightTo"].ToString();
                    if (row["MaritalStatus"].ToString() == "Single")
                    {
                        rad_single.Checked = true;
                        rad_divorced.Checked = false;
                    }
                    else if(row["MaritalStatus"].ToString() == "Divorced")
                    {
                        rad_single.Checked = false;
                        rad_divorced.Checked = true;
                    }
                    else
                    {
                        rad_single.Checked = false;
                        rad_divorced.Checked = false;
                    }
                    PartReligion.Items.FindByText(row["Religion"].ToString()).Selected = true;
                    PartCaste.Value = row["Caste"].ToString();
                    PartCountry.Value = row["Country"].ToString();
                    PartEducation.Value = row["Education"].ToString();
                    PartOccupation.Value = row["Profession"].ToString();
                    PartComplexion.Value= row["Complexion"].ToString();
                    if(row["Gender"].ToString()=="Male")
                    {
                        radmale.Checked = true;
                        radfemale.Checked = false;
                    }
                    else
                    {
                        radfemale.Checked = true;
                        radmale.Checked = false;
                    }
                   
                    if (row["Drink"].ToString() == "Drinker")
                    {
                        rad_drinker.Checked = true;
                        rad_non_drinker.Checked = false;
                    }
                    else
                    {
                        rad_drinker.Checked = false;
                        rad_non_drinker.Checked = true;
                    }
                    
                    if (row["Smoke"].ToString() == "Smoker")
                    {
                        rad_smoker.Checked = true;
                        rad_non_smoker.Checked = false;
                    }
                    else
                    {
                        rad_smoker.Checked = false;
                        rad_non_smoker.Checked = true;
                    }
                }
            }
            catch (Exception ex)
            {
                  message.Text = Convert.ToString(ex);
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
    }
}