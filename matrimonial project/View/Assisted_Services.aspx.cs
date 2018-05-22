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
    public partial class Assisted_Services : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                string Query = "INSERT INTO dbo.Assisted (Name,Email,Phone,Date,Status) VALUES (@Name,@Email,@Phone,@Date,@Status)";
                SqlCommand cmmd = new SqlCommand(Query);
                cmmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = name.Value.Trim();
                cmmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = email.Value.Trim();
                cmmd.Parameters.Add("@Phone", SqlDbType.VarChar).Value = tel.Value.Trim();
                cmmd.Parameters.Add("@Date", SqlDbType.VarChar).Value = DateTime.Now.ToString("yyyy-MM-dd");
                cmmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = "1";
                DBconnection conn = new DBconnection();
                bool result = conn.ExecuteData(cmmd);
                if (result)
                {
                    this.getclear();
                    message.Text = "Successfully Submited";
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

        private void getclear()
        {
            name.Value = "";
            email.Value = "";
            tel.Value = "";
        }
    }
}