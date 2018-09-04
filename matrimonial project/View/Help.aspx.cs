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
    public partial class Help1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ContentPlaceHolder1_Submit_Click(object sender, EventArgs e)
        {
            try
            {
                string Query = "INSERT INTO dbo.Help (Message,Date,Status,RegisterId)VALUES (@Message,@Date,@Status,@RegisterId)";
                SqlCommand cmmd = new SqlCommand(Query);
                cmmd.Parameters.Add("@Message", SqlDbType.VarChar).Value = Message.Value.Trim();
                cmmd.Parameters.Add("@Date", SqlDbType.VarChar).Value = DateTime.Now.ToString("yyyy-MM-dd");
                cmmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = "1";
                cmmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserId"].ToString());
                DBconnection conn = new DBconnection();
                bool result = conn.ExecuteData(cmmd);
                if (result)
                {
                    this.getclear();
                    msg.Text = "Successfully Submited";
                }
                else
                {
                    msg.Text = "Sorry Something Went Wrong";
                }
            }
            catch (Exception ex)
            {
                msg.Text = Convert.ToString(ex);
            }
        }

        private void getclear()
        {
            Message.Value = "";
        }
    }
}