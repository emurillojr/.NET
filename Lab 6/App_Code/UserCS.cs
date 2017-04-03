using System;
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
        public string User_Phone { get; set; }

        public bool User_Active = false;

        #endregion

        #region Constructors
        public UserCS() { }

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
        #endregion
    }
}
