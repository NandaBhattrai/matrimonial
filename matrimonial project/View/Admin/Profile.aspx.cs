using matrimonial_project.model;
using System;
using System.Data;
using System.Data.SqlClient;

namespace matrimonial_project.View.Admin
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
            }
        }

        private void GetData()
        {
            DataTable dt = new DataTable();
            string UserName = (string)(Session["Name"]);
            string Password = (string)(Session["Password"]);
            string strQuery = "SELECT * FROM dbo.Admin WHERE Name=@Name";
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = UserName;
            DBconnection conn_ = new DBconnection();
            dt = conn_.SelectData(cmd);
            if (dt.Rows.Count > 0)
            {
                DataRow row = dt.Rows[0];
                passwordid.Value = row["AdminId"].ToString();
                name.Value = row["Name"].ToString();
                gender.Value = row["Gender"].ToString();
                address.Value = row["Address"].ToString();
                mobile.Value = row["Mobile"].ToString();
                email.Value = row["Email"].ToString();

            }
        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            name.Disabled = false;
            gender.Disabled = false;
            address.Disabled = false;
            mobile.Disabled = false;
            email.Disabled = false;
            DataTable dt = new DataTable();
            string UserName = (string)(Session["Name"]);
            string Password = (string)(Session["Password"]);
            string strQuery = "SELECT * FROM dbo.Admin WHERE Name=@Name";
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = UserName;
            DBconnection conn_ = new DBconnection();
            dt = conn_.SelectData(cmd);
            if (dt.Rows.Count > 0)
            {
                DataRow row = dt.Rows[0];
                passwordid.Value = row["AdminId"].ToString();
                name.Value = row["Name"].ToString();
                gender.Value = row["Gender"].ToString();
                address.Value = row["Address"].ToString();
                mobile.Value = row["Mobile"].ToString();
                email.Value = row["Email"].ToString();
                EditDiv.Visible = false;
                UpdateDiv.Visible = true;
            }

        }

        protected void Update_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(passwordid.Value);


                string strQuery = "UPDATE dbo.Admin SET Name='" + name.Value.Trim() + "' , Gender='" + gender.Value.Trim() + "', Address = '" + address.Value.Trim() + "', Mobile = '" + mobile.Value.Trim() + "', Email = '"+ email.Value.Trim() + "' WHERE AdminId = '"+ id +"'" ;
               // string strQuery = "UPDATE dbo.Admin SET Name=@Name, Gender=@Gender, Address=@Address, Mobile=@Mobile, Email=@Email WHERE AdminId=@AdminId";
                SqlCommand cmd = new SqlCommand(strQuery);
               // cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = name.Value.Trim();
               // cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = gender.Value.Trim();
               // cmd.Parameters.Add("@Address", SqlDbType.VarChar).Value = address.Value.Trim();
               // cmd.Parameters.Add("@Mobile", SqlDbType.VarChar).Value = mobile.Value.Trim();
              //  cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = email.Value.Trim();
                DBconnection conn_ = new DBconnection();
                bool result = conn_.ExecuteData(cmd);
                if (result)
                {
                    message.Text = "successfully changed";
                    message.ForeColor = System.Drawing.Color.Red;
                }

                else
                {
                    message.Text = "something went wrong ";
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
