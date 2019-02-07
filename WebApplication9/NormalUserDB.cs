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

        public static void addNottification(String jobTitle, String operationField, int type, String description, int id_user)
        {
            String query = "INSERT INTO UserNotifications(job_title,operation_field,job_type,description,id_user) VALUES(@jobTitle,@operationField,@type,@description, @id_user)";
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


        public static void normalUserInfo(String operationField, String contactNumber, String contactEmail, String description, int id_user)
        {
            String query = "INSERT INTO UserInfo(operation_field,contact_number,contact_email,description,id_user) VALUES(@operation_field,@contact_number,@contact_email,@description,@id_user)";
            SqlConnection connect = GetConnection();
            SqlCommand command = new SqlCommand(query, connect);
            command.Parameters.AddWithValue("@contact_number", contactNumber);
            command.Parameters.AddWithValue("@operation_field", operationField);
            command.Parameters.AddWithValue("@contact_email", contactEmail);
            command.Parameters.AddWithValue("@description", description);
            command.Parameters.AddWithValue("@id_user", id_user);
            try { connect.Open(); command.ExecuteNonQuery(); }
            catch (SqlException ex) { throw ex; }
            finally { connect.Close(); }
        }



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

        public static void addLanguage(String language, String listening, String speaking, String writing, int id_user)
        {
            String query = "INSERT INTO Language(language, speaking, listening, writing, id_user) VALUES(@language, @speaking, @listening, @writing, @id_user)";

            SqlConnection connect = GetConnection();
            SqlCommand cmd = new SqlCommand(query, connect);
            cmd.Parameters.AddWithValue("@language", language);
            cmd.Parameters.AddWithValue("@listening", listening);
            cmd.Parameters.AddWithValue("@speaking", speaking);
            cmd.Parameters.AddWithValue("@writing", writing);
            cmd.Parameters.AddWithValue("@id_user", id_user);
            try { connect.Open(); cmd.ExecuteNonQuery(); }
            catch (SqlException ex) { throw ex; }
            finally { connect.Close(); }
        }

        public static void addComputerSkill(String skill, int user){

            String query = "INSERT INTO ComputerSkills(computerSkills, id_user) VALUES(@skill, @user)";

            SqlConnection connect = GetConnection();
            SqlCommand cmd = new SqlCommand(query, connect);
            cmd.Parameters.AddWithValue("@skill", skill);
            cmd.Parameters.AddWithValue("@user", user);
            try { connect.Open(); cmd.ExecuteNonQuery(); }
            catch (SqlException ex) { throw ex; }
            finally { connect.Close(); }
        }

        public static void addOtherSkill(String skill, int user)
        {
            String query = "INSERT INTO Skills(skill_description, id_user) VALUES(@skill, @user)";

            SqlConnection connect = GetConnection();
            SqlCommand cmd = new SqlCommand(query, connect);
            cmd.Parameters.AddWithValue("@skill", skill);
            cmd.Parameters.AddWithValue("@user", user);
            try { connect.Open(); cmd.ExecuteNonQuery(); }
            catch (SqlException ex) { throw ex; }
            finally { connect.Close(); }
        }

        public static void addExperience(String experiences,DateTime start_date,DateTime end_date, int user)
        {
            String query = "INSERT INTO Experiences(experience_description, start_date, end_date, id_user) VALUES(@experience_description, @start_date, @end_date, @id_user)";

            SqlConnection connect = GetConnection();
            SqlCommand cmd = new SqlCommand(query, connect);
            cmd.Parameters.AddWithValue("@experience_description", experiences);
            cmd.Parameters.AddWithValue("@start_date", start_date);
            cmd.Parameters.AddWithValue("@end_date", end_date);
            cmd.Parameters.AddWithValue("@id_user", user);
            try { connect.Open(); cmd.ExecuteNonQuery(); }
            catch (SqlException ex) { throw ex; }
            finally { connect.Close(); }
        }

        public static void addEducation(String eduChoosed, String name, String city, String state, String degree, int user)
        {
            String query = "INSERT INTO Education(education, name, city, state, degree_name, id_user) VALUES(@eduChoosed, @name, @city, @state, @degree, @user)";

            SqlConnection connect = GetConnection();
            SqlCommand cmd = new SqlCommand(query, connect);
            cmd.Parameters.AddWithValue("@eduChoosed", eduChoosed);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@city", city);
            cmd.Parameters.AddWithValue("@state", state);
            cmd.Parameters.AddWithValue("@degree", degree);
            cmd.Parameters.AddWithValue("@user", user);
            try { connect.Open(); cmd.ExecuteNonQuery(); }
            catch (SqlException ex) { throw ex; }
            finally { connect.Close(); }
        }
    }
}