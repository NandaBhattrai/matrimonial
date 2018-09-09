using matrimonial_project.model;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI.WebControls;

namespace matrimonial_project.View
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                this.partnerdata();
                this.recommendation();
            }
            catch (Exception ex)
            {

     
            }
        }

        private void partnerdata()
        {
            try
            {
                DataTable dt = new DataTable();
                string strQuery = "SELECT * FROM dbo.Partner where RegisterId=@RegisterId AND PartnerStatus=1";
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@RegisterId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserId"]);
                DBconnection conn_ = new DBconnection();
                dt = conn_.SelectData(cmd);
                if (dt.Rows.Count > 0)
                {
                    DataRow row = dt.Rows[0];
                    Gender.Value = row["Gender"].ToString();
                    AgeFrom.Value = row["AgeFrom"].ToString();
                    AgeTo.Value = row["AgeTo"].ToString();
                    HeightFrom.Value = row["HeightFrom"].ToString();
                    HeightTo.Value = row["HeightTo"].ToString();
                    Marital.Value = row["MaritalStatus"].ToString();
                    Religion.Value = row["Religion"].ToString();
                    Caste.Value = row["Caste"].ToString();
                    Country.Value = row["Country"].ToString();
                    Education.Value = row["Education"].ToString();
                    Occupation.Value = row["Profession"].ToString();
                    Complexion.Value = row["Complexion"].ToString();
                    Diet.Value = row["Diet"].ToString();
                    Drink.Value = row["Drink"].ToString();
                    Smoke.Value = row["Smoke"].ToString();
                }
            }
            catch (Exception ex)
            {

            }
        }

        private void recommendation()
        {
            try
            {
              
                string str = "SELECT * FROM dbo.UserProfile where Religion=@Religion ";
                str += " AND Gender = @Gender AND(Age BETWEEN @AgeFrom AND @AgeTo) AND(Height BETWEEN @HeightFrom AND @HeightTo) AND";
                str += " MaritalStatus = @MaritalStatus AND Country = @Country AND Profession =@Profession AND ProfileStatus = 1 AND VerifiedStatus = 1 AND(";
      str += "(Caste LIKE '%' + @Caste + '%')";
                str += "OR (Education LIKE '%' + @Education + '%')";
     // str += " OR (Profession = @Profession)";
      str += " OR (Complexion LIKE '%' + @Complexion + '%')";
                str += " OR Diet = @Diet";
     str += " OR Drink = @Drink";
     str += " OR Smoker = @Smoker)";
                SqlCommand cmd = new SqlCommand(str);                
                cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = Gender.Value.ToString();
                cmd.Parameters.Add("@AgeFrom", SqlDbType.Int).Value = AgeFrom.Value.ToString();
                cmd.Parameters.Add("@AgeTo", SqlDbType.Int).Value = AgeTo.Value.ToString();
                cmd.Parameters.Add("@HeightFrom", SqlDbType.Float).Value = HeightFrom.Value.ToString();
                cmd.Parameters.Add("@HeightTo", SqlDbType.Float).Value = HeightTo.Value.ToString();
                cmd.Parameters.Add("@MaritalStatus", SqlDbType.VarChar).Value = Marital.Value.ToString();
                cmd.Parameters.Add("@Religion", SqlDbType.VarChar).Value = Religion.Value.ToString();
                cmd.Parameters.Add("Caste", SqlDbType.VarChar).Value = Caste.Value.ToString();
                cmd.Parameters.Add("@Country", SqlDbType.VarChar).Value =Country.Value.ToString();
                cmd.Parameters.Add("Education", SqlDbType.VarChar).Value =Education.Value.ToString();
                cmd.Parameters.Add("Profession", SqlDbType.VarChar).Value = Occupation.Value.ToString();
                cmd.Parameters.Add("@Complexion", SqlDbType.VarChar).Value = Complexion.Value.ToString();
                cmd.Parameters.Add("@Diet", SqlDbType.VarChar).Value = Diet.Value.ToString();
                cmd.Parameters.Add("@Drink", SqlDbType.VarChar).Value = Drink.Value.ToString();
                cmd.Parameters.Add("@Smoker", SqlDbType.VarChar).Value = Smoke.Value.ToString();
                DBconnection conn_ = new DBconnection();
                DataTable dt = conn_.SelectData(cmd);
                StringBuilder html = new StringBuilder();
                if (dt.Rows.Count > 0)
                {
                    int i = 0;
                    foreach (DataRow data in dt.Rows)
                    {                        
                        if (i % 6 == 0)
                        html.Append("<li>");
                        html.Append("<div class='col-md-4 biseller-column'>");
                        html.Append("<a href = 'SearchProfile.aspx?id=" + data["ProfileID"] + "'>");
                        html.Append("<div class='profile-image'>");
                        html.Append("<img src='../Upload/" + data["ProfileImage"] + "' class='img-responsive' alt='profile image' height='300' width='250'>");
                        html.Append("<div class='agile-overlay'>");
                        html.Append("<h4>Profile Name:" + data["Name"] + "</h4>");
                        html.Append("<br />");
                        html.Append("<b style='Color:White;'><span>Age / Height</span>: " + data["Age"] + "/" + data["Height"] + "</b><br />");
                        html.Append("<span>Caste</span>: " + data["Caste"] + "<br />");
                        html.Append("<span>Religion</span>: " + data["Religion"] + "<br />");
                        html.Append("<span>Profession</span>: " + data["Profession"] + "<br />");
                        html.Append("<span>Country</span>: " + data["Country"] + "<br />");
                        //html.Append("<li><span>Profile Created By</span>:" + data["Created"] + "</li>");
                       // html.Append("</ul>");
                        html.Append("</div>");
                        html.Append("</div>");
                        html.Append("</a>");
                        html.Append("</div>");
                        if (i + 5 % 6 == 0)
                            html.Append("</li>");
                        i++;
                    }
                    string dynaDiv = html.ToString();
                    test.Controls.Add(new Literal { Text = html.ToString() });
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

                throw;
            }
        }
    }
}