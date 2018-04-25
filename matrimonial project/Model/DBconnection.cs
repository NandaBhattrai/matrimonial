using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace matrimonial_project.model
{
    public class DBconnection
    {
        SqlConnection conn = new SqlConnection();
        public DataTable SQL_dt = new DataTable();


        /// <summary>
        /// constructor for database connection
        /// </summary>
        public DBconnection()
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        }
        /// <summary>
        /// method for exicuting select satement
        /// </summary>
        public DataTable SelectData(SqlCommand command)
        {
            try
            {
                conn.Open();
                SqlDataAdapter DA = new SqlDataAdapter();
                command.CommandType = CommandType.Text;
                command.Connection = conn;
                DA.SelectCommand = command;
                DA.Fill(SQL_dt);
                return SQL_dt;
            }
            catch (Exception ex)
            {
                string error = ex.ToString();
                HttpContext.Current.Response.Write("<script>alert('" + error + "');</script>");
                return null;

            }
            finally
            {
                conn.Close();
            }
        }

        internal bool ExecuteData(object cmd)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// data execute
        /// </summary>
        /// <param name="command"></param>
        /// <returns></returns>
        public Boolean ExecuteData(SqlCommand command)
        {
            try
            {
                conn.Open();
                command.CommandType = CommandType.Text;
                command.Connection = conn;

                int getRows = command.ExecuteNonQuery();
                if (getRows > 0)
                {
                    return true;
                }
                else
                {
                    return false;

                }
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                conn.Close();
            }
        }

    }
}