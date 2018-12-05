using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace WebApplication9
{
    public static class UsersDB
    {
        public static SqlConnection GetConnection()
        {
            string connect = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ARMSON\documents\visual studio 2013\Projects\WebApplication9\WebApplication9\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connect);
            return conn;
        }

        public static void addUser(String Name, String Email, String Password, String Company, String Normal_user)
        {
            String query = "INSERT INTO Users(Name,Email,Password,Company,Normal_user) VALUES(@Name, @Email, @Password, @Company, @Normal_user )";
            SqlConnection connect = GetConnection();
            SqlCommand comand = new SqlCommand(query, connect);
            comand.Parameters.AddWithValue("@Name", Name);
            comand.Parameters.AddWithValue("@Email", Email);
            comand.Parameters.AddWithValue("@Password", Password);
            comand.Parameters.AddWithValue("@Company", Company);
            comand.Parameters.AddWithValue("@Normal_user", Normal_user);
            try { connect.Open(); comand.ExecuteNonQuery(); }
            catch(SqlException ex){ throw ex; }
            finally { connect.Close(); }
        }

//krijo nje metode searchUser qe merr si parameter email dhe password dhe perdore per validime dhe per te loguar userin
       

        
    }
}