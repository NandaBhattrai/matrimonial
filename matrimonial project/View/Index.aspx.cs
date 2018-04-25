﻿using matrimonial_project.model;
using System;
using System.Data;
using System.Data.SqlClient;
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
                        religion.DataSource = data;
                        religion.DataBind();
                        religion.DataTextField = "Religion";
                        religion.DataValueField = "ReligionId";
                        religion.DataBind();
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
                string religious = religion.SelectedItem.ToString();
                bool male = rad_male.Checked;
                bool female = rad_female.Checked;
                string gender;
                if (male)
                {
                    gender = "Male";
                }
                else
                {
                    gender = "Female";
                }

                string strQuery = "INSERT INTO dbo.Register (Name,Gender,DateOfBirth,Religion,Mobile,Email,Password,UserStatus) VALUES (@Name,@Gender,@DateOfBirth,@Religion,@Mobile,@Email,@Password,@UserStatus)";
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = Name.Value.Trim();
                cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = gender;
                cmd.Parameters.Add("@DateOfBirth", SqlDbType.VarChar).Value = DateOfBirth.Value.Trim();
                cmd.Parameters.Add("@MaritalStatus", SqlDbType.VarChar).Value = 
                cmd.Parameters.Add("@Nationality", SqlDbType.VarChar).Value = Nationality.Value.Trim();
                cmd.Parameters.Add("@Religion", SqlDbType.VarChar).Value = religious.Trim();
                cmd.Parameters.Add("@MotherTongue", SqlDbType.VarChar).Value = Mothertongue.Value.Trim();
                cmd.Parameters.Add("@Education", SqlDbType.VarChar).Value = Education.Value.Trim();
                cmd.Parameters.Add("@Profession", SqlDbType.VarChar).Value = Profession.Value.Trim();
                cmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = country.Value.Trim();
                cmd.Parameters.Add("@State", SqlDbType.VarChar).Value = State.Value.Trim();
                cmd.Parameters.Add("@District", SqlDbType.VarChar).Value = city.Value.Trim();
                cmd.Parameters.Add("@Mobile", SqlDbType.VarChar).Value = Phone.Value.Trim();
                cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = Email.Value.Trim();
                cmd.Parameters.Add("@Age", SqlDbType.Int).Value = age.Value.Trim();
                cmd.Parameters.Add("@Height", SqlDbType.Int).Value = height.Value.Trim();
                cmd.Parameters.Add("@Weight", SqlDbType.Int).Value = Weight.Value.Trim();
                cmd.Parameters.Add("@Complexion", SqlDbType.VarChar).Value = Complexion.Value.Trim();
                cmd.Parameters.Add("@Diet", SqlDbType.VarChar).Value =
                cmd.Parameters.Add("@Drink", SqlDbType.VarChar).Value =
                cmd.Parameters.Add("@Smoker", SqlDbType.VarChar).Value =
                cmd.Parameters.Add("@ProfileImage", SqlDbType.VarChar).Value = image.Value.Trim();
                cmd.Parameters.Add("@UserStatus", SqlDbType.VarChar).Value = "1";
                DBconnection conn_ = new DBconnection();

                bool result = conn_.ExecuteData(cmd);
                if (result)
                {

                    Response.Redirect("home.aspx", false);

                }
                else
                {

                    //message.Text = "Sorry Something Went Wrong";


                }
            }
            catch (Exception ex)
            {

                
            }
        }

       

        protected void Cancel_Click(object sender, EventArgs e)
        {

        }
    }
}