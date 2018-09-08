using matrimonial_project.model;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI.WebControls;

namespace matrimonial_project.View
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                this.StoryData();

            }
            catch (Exception ex)
            {

            }


        }

        private void StoryData()
        {
            string Str = "select * from Story where Status=5";
            SqlCommand cmd = new SqlCommand(Str);
            DBconnection conn_ = new DBconnection();
            DataTable dt = conn_.SelectData(cmd);
            StringBuilder html = new StringBuilder();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow data in dt.Rows)
                {
                    string StoryView;
                    if (data["Story"].ToString().Length > 30)
                    {
                        StoryView = data["Story"].ToString().Substring(0, 30);
                    }
                    else
                    {
                        StoryView = data["Story"].ToString();
                    }
                    html.Append("<div class='w3l_about_left col-md-6 text-center'>");
                    html.Append("<img src = '../Upload/" + data["SImage"] + "' alt=' ' class='img - responsive' height=200px; width=200px; style='float:right;'/>");
                    html.Append("<div class='w3l_about_left_pos' style='float:left;'>");
                    html.Append("<h3>"+data["ReceiverName"]+"<span> & </span>"+data["SUserName"]+"</h3>");
                    html.Append("<p class='light'>" + StoryView + "<a href = 'StoryView.aspx?id=" + data["StoryID"] + "'>...read more</a></p>");
                    html.Append("</div>");
                    html.Append("</div>");                    
                }
                string dynaDiv = html.ToString();
                StoryPalace.Controls.Add(new Literal { Text = html.ToString() });
            }
          else
            {

            }
        }
    }
}