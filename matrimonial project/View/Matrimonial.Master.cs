using matrimonial_project.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace matrimonial_project.view
{
    public partial class matrimonial : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
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
            if (!string.IsNullOrEmpty(Session["UserName"].ToString()))
            {
                string UserName_ = (string)(Session["UserName"]);
                UserName.Text = UserName_.ToString();               
            }
            else
                Response.Redirect("../Home.aspx", false);
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