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
    public partial class Chat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = new DataTable();
                DBconnection conn = new DBconnection();
                string str = "select DISTINCT SRegisterId from dbo.Interest where InterestStatus=1";
                SqlCommand cmd1 = new SqlCommand(str);
                dt = conn.SelectData(cmd1);
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow data in dt.Rows)
                    {
                        DataList1.DataSource = dt;
                        DataList1.DataBind();
                    }
                }
                else
                {
                    Label1.Text = "Exception";
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton lBtn = sender as LinkButton;
            string id = ((LinkButton)sender).CommandArgument.ToString();
            Label1.Text = lBtn.Text; //This lable used to display selected frend name.
            LoadChatbox();
        }

        private void LoadChatbox()
        {
            DataTable dt = new DataTable();
            DBconnection conn = new DBconnection();
            string str = "select Message , Date from dbo.Interest where InterestStatus=1 AND RegisterId=@RegisterId";
            SqlCommand cmd1 = new SqlCommand(str);
            cmd1.Parameters.Add("@RegisterId",SqlDbType.Int).Value = Label1.ToString();
            dt = conn.SelectData(cmd1);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow data in dt.Rows)
                {
                    DataList2.DataSource = dt;
                    DataList2.DataBind();
                }
            }
            else
            {
                Label1.Text = "Exception";
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            LoadChatbox();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}