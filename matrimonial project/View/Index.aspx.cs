﻿using matrimonial_project.model;
using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI;

namespace matrimonial_project.View
{
    public partial class Index : System.Web.UI.Page
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

        protected void Submit_Click(object sender, EventArgs e)
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
                    register.Value = row["UserId"].ToString();

                    string Religious = Religion.SelectedItem.ToString();
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
                    else if (Married.Checked == true)
                        Marital = "Married";
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

                    HttpPostedFile file = Image.PostedFile;
                    string Photo = "no image";
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
                    int val;
                    string Query = "INSERT INTO dbo.UserProfile (Name,Gender,DateOfBirth,MaritalStatus,Nationality,Religion,Caste,MotherTongue,KnownLanguage,BloodGroup,Education,Profession,Country,State,District,Stay,Mobile,Email,Age,Height,Weight,Complexion,Diet,Drink,Smoker,ProfileImage,Family,Yourself,ProfileStatus,RegisterId) VALUES (@Name,@Gender,@DateOfBirth,@MaritalStatus,@Nationality,@Religion,@Caste,@MotherTongue,@KnownLanguage,@BloodGroup,@Education,@Profession,@Country,@State,@District,@Stay,@Mobile,@Email,@Age,@Height,@Weight,@Complexion,@Diet,@Drink,@Smoker,@ProfileImage,@Family,@Yourself,@ProfileStatus,@RegisterId)";
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
                    cmmd.Parameters.Add("@BloodGroup", SqlDbType.VarChar).Value = Blood.Value.Trim();
                    cmmd.Parameters.Add("@Education", SqlDbType.VarChar).Value = Education.Value.Trim();
                    cmmd.Parameters.Add("@Profession", SqlDbType.VarChar).Value = Profession.Value.Trim();
                    cmmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = Country.Value.Trim();
                    cmmd.Parameters.Add("@State", SqlDbType.VarChar).Value = State.Value.Trim();
                    cmmd.Parameters.Add("@District", SqlDbType.VarChar).Value = City.Value.Trim();
                    cmmd.Parameters.Add("@Stay", SqlDbType.VarChar).Value = Stay.Value.Trim();
                    cmmd.Parameters.Add("@Mobile", SqlDbType.VarChar).Value = Phone.Value.Trim();
                    cmmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = Email.Value.Trim();
                    cmmd.Parameters.Add("@Age", SqlDbType.Int).Value =int.TryParse(Age.Value,out val);
                    cmmd.Parameters.Add("@Height", SqlDbType.Int).Value =int.TryParse(Height.Value,out val);
                    cmmd.Parameters.Add("@Weight", SqlDbType.Int).Value = int.TryParse(Weight.Value,out val);
                    cmmd.Parameters.Add("@Complexion", SqlDbType.VarChar).Value = Complexion.Value.Trim();
                    cmmd.Parameters.Add("@Diet", SqlDbType.VarChar).Value = Diet;
                    cmmd.Parameters.Add("@Drink", SqlDbType.VarChar).Value = Drink;
                    cmmd.Parameters.Add("@Smoker", SqlDbType.VarChar).Value = Smoke;
                    cmmd.Parameters.Add("@ProfileImage", SqlDbType.VarChar).Value = Photo;
                    cmmd.Parameters.Add("@Family", SqlDbType.VarChar).Value = Textarea1.Value.Trim();
                    cmmd.Parameters.Add("@Yourself", SqlDbType.VarChar).Value = MySelf.Value.Trim();
                    cmmd.Parameters.Add("@ProfileStatus", SqlDbType.VarChar).Value = "1";
                    cmmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = int.TryParse(register.Value, out val);
                    //int.TryParse(RegisterId.Text,out val);
                    DBconnection conn = new DBconnection();
                    bool result = conn.ExecuteData(cmmd);
                    if (result)
                    {
                        Response.Redirect("DesiredPartner.aspx", false);
                    }
                    else
                    {
                        message.Text = "Sorry Something Went Wrong";
                    }
                }
                else
                {
                    message.Visible = true;
                    message.Text = "RegisterId is not defined!!!!!";
                }               
            }
            catch (Exception ex)
            {
                message.Text = Convert.ToString(ex);
            }
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {

        }

       
    }
}