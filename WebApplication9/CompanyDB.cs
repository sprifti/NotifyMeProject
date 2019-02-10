using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication9
{
    public static class CompanyDB
    {
        public static SqlConnection GetConnection()
        {
            string connect = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ARMSON\Documents\Visual Studio 2013\Projects\NotifyMe\WebApplication9\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connect);
            return conn;
        }
        //add notiictaions and comapny info duke qene se jane pak fusha 
        public static void addCompanyInfo(String operationField, String contactNumber, String contactEmail,String description, int id_user, String name)
        {
            String query = "INSERT INTO CompanyInfo(operation_field,contact_number,contact_email,description,id_user, name) VALUES(@operationField,@contactNumber,@contactEmail,@description,@id_user,@name)";
            SqlConnection connect = GetConnection();
            SqlCommand command = new SqlCommand(query, connect);
            command.Parameters.AddWithValue("@operationField", operationField);
            command.Parameters.AddWithValue("@contactNumber", contactNumber);
            command.Parameters.AddWithValue("@contactEmail", contactEmail);
            command.Parameters.AddWithValue("@description", description);
            command.Parameters.AddWithValue("@id_user", id_user);
            command.Parameters.AddWithValue("@name", name);
            try { connect.Open(); command.ExecuteNonQuery();
            }
            catch (SqlException ex) { throw ex; }
            finally
            {
                connect.Close();
            }
        }


        

        public static bool companyInfo(int id_user)
        {
            String query = "SELECT id FROM CompanyInfo WHERE id_user = id_user";
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