﻿using matrimonial_project.model;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Web.UI;

namespace matrimonial_project.View
{
    public partial class Settings : System.Web.UI.Page
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
                    DataTable value = this.getValue();
                    if (value.Rows.Count > 0)
                    {
                        DataRow row = value.Rows[0];
                        Id.Value = row["UserId"].ToString();
                        Name.Value = row["Name"].ToString();
                        DateOfBirth.Value = row["DateOfBirth"].ToString();
                        Phone.Value = row["Mobile"].ToString();
                        Email.Value = row["Email"].ToString();
                        Religion.Items.FindByText(row["Religion"].ToString()).Selected = true;
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
                    }
                }
            }
            catch (Exception ex)
            {
                message.Text = Convert.ToString(ex);

            }
        }

        private DataTable getValue()
        {
            DataTable dt = new DataTable();
            string strQuery = "SELECT * FROM dbo.Register where UserId=@UserId";
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@UserId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserId"]);
            DBconnection conn_ = new DBconnection();
            dt = conn_.SelectData(cmd);
            return dt;
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
            string password= EncodePasswordToBase64(Pass.Value.ToString());
            DataTable dt = new DataTable();
            string strQuery = "SELECT UserName,Password FROM dbo.Register WHERE UserName=@UserName AND Password=@Password";
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = Username.Value.Trim();
            cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = password;
            DBconnection conn_ = new DBconnection();
            dt = conn_.SelectData(cmd);
            if (dt.Rows.Count > 0)
            {
                Password1.Disabled = false;
                Password2.Disabled = false;
                Name.Disabled = false;
                DateOfBirth.Disabled = false;
                rad_male.Disabled = false;
                rad_female.Disabled = false;
                Email.Disabled = false;
                Phone.Disabled = false;
                Update.Visible = true;
                Check.Visible = false;
                Pass.Disabled = true;
                message_block.Visible = true;
                message.Text = "Change Your Password!!!";
                message.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                message_block.Visible = true;
                message.Text = "Sorry Try Again Username and Password does not match";
                message.ForeColor = System.Drawing.Color.Red;
            }
        }

        public static string EncodePasswordToBase64(string password)
        {
            byte[] bytes = Encoding.Unicode.GetBytes(password);
            byte[] inArray = HashAlgorithm.Create("SHA1").ComputeHash(bytes);
            return Convert.ToBase64String(inArray);
        }

        protected void ContentPlaceHolder1_Update_Click1(object sender, EventArgs e)
        {
            try
            {
                string oldPass = EncodePasswordToBase64(Password1.Value.Trim().ToString());
                string confirmPass = EncodePasswordToBase64(Password2.Value.Trim().ToString());
                if (oldPass == confirmPass)
                {
                    string religious = Religion.SelectedItem.ToString();
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
                    string strQuery = "UPDATE dbo.Register SET Name=@Name, Gender=@Gender, DateOfBirth=@DateOfBirth, Religion=@Religion, Mobile=@Mobile, Email=@Email, UserName=@UserName, Password=@Password WHERE UserId=@UserId ";
                    SqlCommand cmd = new SqlCommand(strQuery);
                    cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = Name.Value.Trim();
                    cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = gender;
                    cmd.Parameters.Add("@DateOfBirth", SqlDbType.VarChar).Value = DateOfBirth.Value.Trim();
                    cmd.Parameters.Add("@Religion", SqlDbType.VarChar).Value = religious;
                    cmd.Parameters.Add("@Mobile", SqlDbType.VarChar).Value = Phone.Value.Trim();
                    cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = Email.Value.Trim();
                    cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = Username.Value.Trim();
                    cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = oldPass;
                    cmd.Parameters.Add("@UserId", SqlDbType.Int).Value = Id.Value.Trim();
                    DBconnection conn_ = new DBconnection();
                    bool result = conn_.ExecuteData(cmd);
                    if (result)
                    {
                        message_block.Visible = true;
                        message.Text = "Successfully changed";
                        message.ForeColor = System.Drawing.Color.Green;
                    }

                    else
                    {
                        message_block.Visible = true;
                        message.Text = "Something went wrong ";
                        message.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    message_block.Visible = true;
                    message.Text = "Password does not match";
                    message.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                message.Text = Convert.ToString(ex);
            }
        }
    }
}