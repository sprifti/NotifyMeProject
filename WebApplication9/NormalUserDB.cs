using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication9
{
    public static class NormalUserDB
    {
        public static SqlConnection GetConnection()
        {
            string connect = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ARMSON\Documents\Visual Studio 2013\Projects\NotifyMe\WebApplication9\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connect);
            return conn;
        }

        public static void addNottification(String jobTitle, String operationField, String type, String description, int id_user)
        {
            String query = "INSERT INTO UserNotifications(jobTitle,operationField,type,description,id_user) VALUES(@jobTitle,@operationField,@type,@description, @id_user)";
            SqlConnection connect = GetConnection();
            SqlCommand command = new SqlCommand(query, connect);
            command.Parameters.AddWithValue("@jobTitle", jobTitle);
            command.Parameters.AddWithValue("@operationField", operationField);
            command.Parameters.AddWithValue("@type", type);
            command.Parameters.AddWithValue("@description", description);
            command.Parameters.AddWithValue("@id_user",id_user);
            try { connect.Open(); command.ExecuteNonQuery(); }
            catch (SqlException ex) { throw ex; }
            finally { connect.Close(); }
        }


        //public static void normalUserInfo(String operationField, String contactNumber, String contactEmail, String description, int id_user )
        //{
        //    String query = "INSERT INTO UserNotifications(jobTitle,operationField,type,description,id_user) VALUES(@jobTitle,@operationField,@type,@description, @id_user)";
        //    SqlConnection connect = GetConnection();
        //    SqlCommand command = new SqlCommand(query, connect);
        //    command.Parameters.AddWithValue("@jobTitle", jobTitle);
        //    command.Parameters.AddWithValue("@operationField", operationField);
        //    command.Parameters.AddWithValue("@type", type);
        //    command.Parameters.AddWithValue("@description", description);
        //    command.Parameters.AddWithValue("@id_user", id_user);
        //    try { connect.Open(); command.ExecuteNonQuery(); }
        //    catch (SqlException ex) { throw ex; }
        //    finally { connect.Close(); }
        //}



        public static bool userInfo(int id_user)
        {
            String query = "SELECT id FROM UserInfo WHERE id_user = id_user";
            SqlConnection connect = GetConnection();
            SqlCommand command = new SqlCommand(query, connect);
            command.Parameters.AddWithValue("@id_user", id_user);
            connect.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                return true;
            }

            return false;

        }
    }
}