using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Security.Cryptography;

namespace WebApplication9
{
    public static class UsersDB
    {
        public static SqlConnection GetConnection()
        {
            string connect = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ARMSON\Documents\Visual Studio 2013\Projects\NotifyMe\WebApplication9\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connect);
            return conn;
        }

        public static void addUser(String Name, String Email, String Password, String Company, String Normal_user)
        {
            String query = "INSERT INTO Users(Name,Email,Password,Company,Normal_user) VALUES(@Name, @Email, @Password, @Company, @Normal_user )";
            SqlConnection connect = GetConnection();
            SqlCommand command = new SqlCommand(query, connect);
            command.Parameters.AddWithValue("@Name", Name);
            command.Parameters.AddWithValue("@Email", Email);
            command.Parameters.AddWithValue("@Password", Password);
            command.Parameters.AddWithValue("@Company", Company);
            command.Parameters.AddWithValue("@Normal_user", Normal_user);
            try { connect.Open(); command.ExecuteNonQuery(); }
            catch (SqlException ex) { throw ex; }
            finally { connect.Close(); }
        }


        public static String userLogin(String Email, String Password)
        {
            String query = "SELECT Password FROM Users WHERE Email = @Email";
            SqlConnection connect = GetConnection();
            SqlCommand command = new SqlCommand(query, connect);
            command.Parameters.AddWithValue("@Email", Email);
            String pass = "empty";
            connect.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                pass = String.Format("{0}", reader["Password"]);
                byte[] hashBytes = Convert.FromBase64String(pass);
                /* Get the salt */
                byte[] salt = new byte[16];
                Array.Copy(hashBytes, 0, salt, 0, 16);
                /* Compute the hash on the password the user entered */
                var pbkdf2 = new Rfc2898DeriveBytes(Password, salt, 10000);
                byte[] hash = pbkdf2.GetBytes(20);
                /* Compare the results */
                for (int i = 0; i < 20; i++)
                {
                    if (hashBytes[i + 16] != hash[i])
                        pass = "wrong";

                }
                if (!pass.Equals("wrong"))
                {
                    pass = "found";
                }

            }
            connect.Close();
            return pass;
        }

        public static bool getUser(String Email){
            String query = "SELECT Email FROM Users WHERE Email = @Email";
            SqlConnection connect = GetConnection();
            SqlCommand command = new SqlCommand(query, connect);
            command.Parameters.AddWithValue("@Email", Email);
            connect.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (!reader.HasRows)
            {
                connect.Close();
                return false;
            }
            connect.Close();
            return true;
            
        }

        public static void userInfo() { }

       
        

    }
}