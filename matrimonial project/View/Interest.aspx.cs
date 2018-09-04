using matrimonial_project.model;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI.WebControls;

namespace matrimonial_project.View
{
    public partial class Interest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string str = "SELECT * FROM dbo.Interest where ReceiverId=@ReceiverId AND InterestStatus=1";
                SqlCommand cmd = new SqlCommand(str);
                cmd.Parameters.Add("@ReceiverId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserId"]).ToString();
                DBconnection conn_ = new DBconnection();
                DataTable dt = conn_.SelectData(cmd);
                StringBuilder html = new StringBuilder();
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        string SenderId = row["SRegisterId"].ToString();
                        string query = "SELECT * FROM dbo.UserProfile where RegisterId=@RegisterId AND VerifiedStatus=1 AND ProfileStatus=1";
                        SqlCommand cmmd = new SqlCommand(query);
                        cmmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt32(SenderId);
                        DBconnection conn = new DBconnection();
                        DataTable dt1 = conn.SelectData(cmmd);
                        if (dt1.Rows.Count > 0)
                        {
                            foreach (DataRow data in dt1.Rows)
                            {
                                string self;
                                if (data["Yourself"].ToString().Length > 20)
                                {
                                    self = data["Yourself"].ToString().Substring(0, 20);
                                }
                                else
                                {
                                    self = data["Yourself"].ToString();
                                }
                                html.Append("<div class='col-md-6 one-w3-profile'>");
                                html.Append("<div class='profile-details'>");
                                html.Append("<h5>Name:" + data["name"] + "</h5>");
                                html.Append("<img src = '../Upload/" + data["ProfileImage"] + "' class='prf-img img-responsive' alt='profile image' height='100px' width='100px' />");
                                html.Append("<div class='w3-prfr'>");
                                html.Append("<p>" + data["Age"] + ", " + data["Religion"] + ", " + data["Caste"] + ", " + data["Education"] + ", " + data["Profession"] + "</p>");
                                html.Append("</div>");
                                html.Append("<div class='clearfix'></div>");
                                html.Append("<p class='light'>" + self + "<a href = 'SearchProfile.aspx?id=" + data["ProfileID"] + "'> read more</a></p>");
                                html.Append("</div>");
                                html.Append("</div>");
                            }
                        }
                        string dynaDiv = html.ToString();
                        test.Controls.Add(new Literal { Text = html.ToString() });
                    }
                }
                else
                {
                    html.Append("<h2>No Result Found.</h2>");
                    string dynaDiv = html.ToString();
                    test.Controls.Add(new Literal { Text = html.ToString() });
                }
            
            }
            catch (Exception ex)
            {
                Msg.Visible = true;
                Msg.Text="Sorry Something went wromg!!!";
            }
        }       
    }    
}