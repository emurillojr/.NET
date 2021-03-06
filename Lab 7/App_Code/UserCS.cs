﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

// User Class to pull from DB user by ID

namespace SE256demoWEEK1
{
    public class UserCS
    {
        #region Properties
        //match
        public int User_ID { get; set; }
        public string User_Email { get; set; }
        public string User_First { get; set; }
        public string User_Last { get; set; }
        public string User_Add1 { get; set; }
        public string User_Add2 { get; set; }
        public string User_City { get; set; }
        public string State_ID { get; set; }
        public string User_Zip { get; set; }

        public string User_Salt { get; set; }
        public string User_Pwd { get; set; }
        public string User_Phone { get; set; }

        public bool User_Active = false;

        #endregion

        #region Constructors
        public UserCS() {
            this.User_Salt = CreateSalt();  // set salt propert value using Salt function
        }

        public UserCS(int user_id)
        {
            DataTable dt = GetUserByID(user_id);  //match

            if (dt.Rows.Count > 0)
            {
                //match
                this.User_ID = (int)dt.Rows[0]["user_id"];
                this.User_Email = dt.Rows[0]["user_email"].ToString();
                this.User_First = dt.Rows[0]["user_first"].ToString();
                this.User_Last = dt.Rows[0]["user_last"].ToString();
                this.User_Add1 = dt.Rows[0]["user_add1"].ToString();
                this.User_Add2 = dt.Rows[0]["user_add2"].ToString();
                this.User_City = dt.Rows[0]["user_city"].ToString();
                this.State_ID = dt.Rows[0]["state_id"].ToString();
                this.User_Zip = dt.Rows[0]["user_zip"].ToString();
                this.User_Salt = dt.Rows[0]["user_salt"].ToString();
                this.User_Pwd = dt.Rows[0]["user_pwd"].ToString();
                this.User_Phone = dt.Rows[0]["user_phone"].ToString();
                this.User_Active = (bool)dt.Rows[0]["user_active"];
            }
        }
        #endregion

        #region Methods/Functions
        private static DataTable GetUserByID(int user_id)   //match
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["SE256_MurilloConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("users_getbyID", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@user_id", SqlDbType.Int).Value = user_id;

            DataTable dt = new DataTable();
            try
            {
                cn.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }
            catch
            {

            }
            finally
            {
                cn.Close();
            }
            return dt;
        }



        public static bool UpdateUser(UserCS sr)
        {
            //declare return variable
            bool blnSuccess = false;
            //connection object -> ConfigurationManager namespace
            //access web.config setting -> connection strings & key values
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["SE256_MurilloConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("users_update", cn);
            // Mark the Command -> Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;

            // Add Parameters -> Stored Procedure
            cmd.Parameters.Add(
                  "@user_id", SqlDbType.Int).Value = sr.User_ID;
          
            cmd.Parameters.Add(
                  "@user_email", SqlDbType.VarChar).Value = sr.User_Email;
            cmd.Parameters.Add(
                "@user_first", SqlDbType.VarChar).Value = sr.User_First;
            cmd.Parameters.Add(
                "@user_last", SqlDbType.VarChar).Value = sr.User_Last;
            cmd.Parameters.Add(
                "@user_add1", SqlDbType.VarChar).Value = sr.User_Add1;
            cmd.Parameters.Add(
                "@user_add2", SqlDbType.VarChar).Value = sr.User_Add2;
            cmd.Parameters.Add(
                "@user_city", SqlDbType.VarChar).Value = sr.User_City;

            cmd.Parameters.Add(
                "@state_id", SqlDbType.VarChar).Value = sr.State_ID;
            cmd.Parameters.Add(
                "@user_zip", SqlDbType.VarChar).Value = sr.User_Zip;

            cmd.Parameters.Add(
                "@user_pwd", SqlDbType.VarChar).Value = sr.User_Pwd;
            cmd.Parameters.Add(
               "@user_phone", SqlDbType.VarChar).Value = sr.User_Phone;
            cmd.Parameters.Add(
                "@user_active", SqlDbType.Bit).Value = sr.User_Active;

            // Open database connection -> execute command
            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
                blnSuccess = true;
            }
            catch (Exception exc)
            {
                //error -> notify user
                exc.ToString();
                blnSuccess = false;
            }
            finally
            {
                cn.Close();
            }
            return blnSuccess;
        }


        //insert function here
        public static bool InsertUser(UserCS sr)
        {
            //declare return variable
            bool blnSuccess = false;
            //connection object -> ConfigurationManager namespace
            //access to web.config -> connection strings & key values
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["SE256_MurilloConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("users_insert", cn);
            // Mark the Command -> Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;

          
            cmd.Parameters.Add(
                  "@user_email", SqlDbType.VarChar).Value = sr.User_Email;
            cmd.Parameters.Add(
                "@user_first", SqlDbType.VarChar).Value = sr.User_First;
            cmd.Parameters.Add(
                "@user_last", SqlDbType.VarChar).Value = sr.User_Last;
            cmd.Parameters.Add(
                "@user_add1", SqlDbType.VarChar).Value = sr.User_Add1;
            cmd.Parameters.Add(
                "@user_add2", SqlDbType.VarChar).Value = sr.User_Add2;
            cmd.Parameters.Add(
                "@user_city", SqlDbType.VarChar).Value = sr.User_City;
            cmd.Parameters.Add(
                "@state_id", SqlDbType.VarChar).Value = sr.State_ID;
            cmd.Parameters.Add(
                "@user_zip", SqlDbType.VarChar).Value = sr.User_Zip;

            cmd.Parameters.Add(
                "@user_salt", SqlDbType.VarChar).Value = sr.User_Salt;

            cmd.Parameters.Add(
                "@user_pwd", SqlDbType.VarChar).Value = sr.User_Pwd;
            cmd.Parameters.Add(
               "@user_phone", SqlDbType.VarChar).Value = sr.User_Phone;
            cmd.Parameters.Add(
                "@user_active", SqlDbType.Bit).Value = sr.User_Active;

            // Open database connection -> execute command
            try
            {
                cn.Open();
                //execute -> stored procedure
                cmd.ExecuteNonQuery();
                blnSuccess = true;
            }
            catch (Exception exc)
            {
                //error -> notify user
                exc.ToString();
                blnSuccess = false;
            }
            finally
            {
                cn.Close();
            }
            return blnSuccess;
        }

        public static string CreateSalt()
        {
            // Generate a cryptographic random number using the cryptographic service provider
            byte[] saltBytes = new byte[16];
            // RNGCryptoServiceProvider rng = 
            RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
            rng.GetBytes(saltBytes);
            // Return a Base64 string representation of the random number
            return Convert.ToBase64String(saltBytes);  // returns string
        }

        // Return Type: string  Name:  CreatePasswordHash method
        public static string CreatePasswordHash(string salt, string password)
        {
            string saltAndPwd = string.Concat(salt, password);
            // Create a new instance of the hash crypto service provider.
            HashAlgorithm hashAlg = new SHA256CryptoServiceProvider();
            // Convert the data to hash to an array of Bytes.
            byte[] bytValue = System.Text.Encoding.UTF8.GetBytes(saltAndPwd);
            // Compute the Hash. This returns an array of Bytes.
            byte[] bytHash = hashAlg.ComputeHash(bytValue);
            // Optionally, represent the hash value as a base64-encoded string, For example, if you need to display the value or transmit it over a network.
            return Convert.ToBase64String(bytHash);  // returns string
        }


        #endregion
    }
}
