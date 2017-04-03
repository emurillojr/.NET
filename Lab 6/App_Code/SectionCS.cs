using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

// Section Class to pull from DB section by ID

namespace SE256demoWEEK1
{
    public class SectionCS
    {
        #region Properties
        //match
        public int Sect_ID { get; set; }
        public string Sect_Name { get; set; }
        public string Sect_Desc { get; set; }

        public bool Sect_Active = false;
        #endregion

        #region Constructors
        public SectionCS() { }

        public SectionCS(int sect_id)
        {
            DataTable dt = GetSectionByID(sect_id);  //match

            if (dt.Rows.Count > 0)
            {
                //match
                this.Sect_ID = (int)dt.Rows[0]["sect_id"];
                this.Sect_Name = dt.Rows[0]["sect_name"].ToString();
                this.Sect_Desc = dt.Rows[0]["sect_desc"].ToString();
                this.Sect_Active = (bool)dt.Rows[0]["sect_active"];
            }
        }
        #endregion

        #region Methods/Functions
        private static DataTable GetSectionByID(int sect_id)   //match
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["SE256_MurilloConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("[sections_getbyID]", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@sect_id", SqlDbType.Int).Value = sect_id;

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
