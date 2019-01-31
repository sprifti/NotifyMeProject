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
            //create a shuffle code that we save it in database and then retrieve it to send it with the confirmation email.
            
            String str = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM123456789!()";
            //When clicking the email send them to Login where you will get the email and confirm_code and check the database for it. once you find it created will become 0 and user can login.
            String confirm_code = shuffle(str);
            confirm_code = confirm_code.Substring(0, 12); //substrin(confirm_code, 0, 12);
            String created = "0";
            String query = "INSERT INTO Users(Name,Email,Password,Company,Normal_user, confirm_code, created) VALUES(@Name, @Email, @Password, @Company, @Normal_user, @confirm_code, @created)";
            SqlConnection connect = GetConnection();
            SqlCommand command = new SqlCommand(query, connect);
            command.Parameters.AddWithValue("@Name", Name);
            command.Parameters.AddWithValue("@Email", Email);
            command.Parameters.AddWithValue("@Password", Password);
            command.Parameters.AddWithValue("@Company", Company);
            command.Parameters.AddWithValue("@Normal_user", Normal_user);
            command.Parameters.AddWithValue("@confirm_code", confirm_code);
            command.Parameters.AddWithValue("@created", created);
            try { connect.Open(); command.ExecuteNonQuery(); }
            catch (SqlException ex) { throw ex; }
            finally { connect.Close(); }
        }


        public static String userLogin(String Email, String Password)
        {
            String query = "SELECT Password FROM Users WHERE Email = @Email and created = '1'";
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

        public static String userId(String Email) {
            String query = "SELECT Id FROM Users WHERE Email = @Email";
            SqlConnection connect = GetConnection();
            SqlCommand command = new SqlCommand(query, connect);
            command.Parameters.AddWithValue("@Email", Email);
            connect.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                return String.Format("{0}", reader["Id"]);
            }

            return "";
 
        }

        public static String userType(String Email)
        {
            String query = "SELECT company FROM Users WHERE Email = @Email";
            SqlConnection connect = GetConnection();
            SqlCommand command = new SqlCommand(query, connect);
            command.Parameters.AddWithValue("@Email", Email);
            connect.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                return String.Format("{0}", reader["company"]);
            }

            return "";

        }


        public static void addAddress(String state, String town, String street, int id)
        {
            SqlConnection connect = GetConnection();
            String sql = "Insert into Address(State, Town, Street, id_user) Values(@state, @town, @street, @id)";
            SqlCommand result = new SqlCommand(sql, connect);
            result.Parameters.AddWithValue("@State", state);
            result.Parameters.AddWithValue("@Town", town);
            result.Parameters.AddWithValue("@Street", street);
            result.Parameters.AddWithValue("@id", id);
            try
            {
                connect.Open(); result.ExecuteNonQuery();
            }
            catch (SqlException ex) { throw ex; }
            finally { connect.Close(); }
        }

        public static String shuffle(this string str)
        {
            char[] array = str.ToCharArray();
            Random rng = new Random();
            int n = array.Length;
            while (n > 1)
            {
                n--;
                int k = rng.Next(n + 1);
                var value = array[k];
                array[k] = array[n];
                array[n] = value;
            }
            return new string(array);
        }


        public static String retrieveConfirmCode(String email)
        {
            SqlConnection connect = GetConnection();
            String query = "SELECT confirm_code FROM Users WHERE email = @email";
            SqlCommand result = new SqlCommand(query, connect);
            result.Parameters.AddWithValue("@email", email);
            connect.Open();
            SqlDataReader reader = result.ExecuteReader();
            while (reader.Read())
            {
                return String.Format("{0}", reader["confirm_code"]);
            }
            //f it is empty that means that the user has confirmed his account
            return "";
           
        }

        public static void confirmUser(String email, String confirm_code)
        {
            SqlConnection connect = GetConnection();
            String query = "UPDATE Users SET created = '1', confirm_code = '0' WHERE email = @email and confirm_code = @confirm_code";
            SqlCommand result = new SqlCommand(query, connect);
            result.Parameters.AddWithValue("@email", email);
            result.Parameters.AddWithValue("@confirm_code", confirm_code);
            try
            {
                connect.Open();
                result.ExecuteNonQuery();
            }
            catch(SqlException ex)
            {
                throw ex;
            }
            finally
            {
                connect.Close();
            }
            
            
        }

        public static int admin(String email)
        {
            SqlConnection connect = GetConnection();
            String query = "SELECT admin FROM Users WHERE email = @email";
            SqlCommand result = new SqlCommand(query, connect);
            result.Parameters.AddWithValue("@email", email);
            connect.Open();
            SqlDataReader reader = result.ExecuteReader();
            while (reader.Read())
            {
                return Convert.ToInt32(reader["admin"]);
            }
            return -1;
        }

    }
}