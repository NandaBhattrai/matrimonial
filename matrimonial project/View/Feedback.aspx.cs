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
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                string Query = "INSERT INTO dbo.Feedback (Name,Email,Address,Username,Phone,Feedback,RegisterId) VALUES (@Name,@Email,@Address,@Username,@Phone,@Feedback,RegisterId)";
                SqlCommand cmmd = new SqlCommand(Query);
                cmmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = name.Value.Trim();
                cmmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = email.Value.Trim();
                cmmd.Parameters.Add("@Address", SqlDbType.VarChar).Value = name.Value.Trim();
                cmmd.Parameters.Add("@Username", SqlDbType.VarChar).Value = email.Value.Trim();
                cmmd.Parameters.Add("@Phone", SqlDbType.VarChar).Value = tel.Value.Trim();
                cmmd.Parameters.Add("@Feedback", SqlDbType.VarChar).Value = feedback.Value.Trim();
                cmmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserId"]);
                DBconnection conn = new DBconnection();
                bool result = conn.ExecuteData(cmmd);
                if (result)
                {
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
    }
}