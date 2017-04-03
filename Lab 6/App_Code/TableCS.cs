using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

// Table Class to pull from DB table by ID

namespace SE256demoWEEK1
{
    public class TableCS
    {
        #region Properties
        //match
        public int Tbl_ID { get; set; }
        public int Sect_ID { get; set; }
        public string Tbl_Name { get; set; }
        public string Tbl_Desc { get; set; }
        public int Tbl_Seat_Cnt { get; set; }

        public bool Tbl_Active = false;

        #endregion

        #region Constructors
        public TableCS() { }

        public TableCS(int tbl_id)
        {
            DataTable dt = GetTableByID(tbl_id);  //match

            if (dt.Rows.Count > 0)
            {
                //match
                this.Tbl_ID = (int)dt.Rows[0]["tbl_id"];
                this.Sect_ID = (int)dt.Rows[0]["sect_id"];
                this.Tbl_Name = dt.Rows[0]["tbl_name"].ToString();
                this.Tbl_Desc = dt.Rows[0]["tbl_desc"].ToString();
                this.Tbl_Seat_Cnt = (int)dt.Rows[0]["tbl_seat_cnt"];
                this.Tbl_Active = (bool)dt.Rows[0]["tbl_active"];
            }
        }
        #endregion
        
        #region Methods/Functions
        private static DataTable GetTableByID(int tbl_id)   //match
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["SE256_MurilloConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("[tables_getbyID]", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@tbl_id", SqlDbType.Int).Value = tbl_id;

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
