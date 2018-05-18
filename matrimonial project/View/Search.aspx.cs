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
    public partial class Search : System.Web.UI.Page
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

        protected void ContentPlaceHolder1_Cancel_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Search", false);
            }
            catch (Exception ex)
            {
                message.Text = Convert.ToString(ex);
            }
        }

        protected void ContentPlaceHolder1_Submit_Click(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {

        }
    }
}