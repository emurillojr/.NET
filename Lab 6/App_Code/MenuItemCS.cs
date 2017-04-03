using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

// Menu Item Class to pull from DB menu item by ID

namespace SE256demoWEEK1
{
    public class MenuItemCS

    {
        #region Properties
        //match
        public int Item_ID { get; set; }
        public int Menu_Id { get; set; }
        public int Cat_Id { get; set; }
        public string Item_Name { get; set; }
        public string Item_Desc { get; set; }
        public string Item_Allergens { get; set; }
        public decimal Item_Price { get; set; }
        public bool Item_Gluten_Free { get; set; }

        public bool Item_Active = false;

        #endregion

        #region Constructors
        public MenuItemCS() { }

        public MenuItemCS(int item_id)
        {
            DataTable dt = GetMenuItemsID(item_id);  //match

            if (dt.Rows.Count > 0)
            {
                //match
                this.Item_ID = (int)dt.Rows[0]["item_id"];
                this.Menu_Id = (int)dt.Rows[0]["menu_id"];
                this.Cat_Id = (int)dt.Rows[0]["cat_id"];
                this.Item_Name = dt.Rows[0]["item_name"].ToString();
                this.Item_Desc = dt.Rows[0]["item_desc"].ToString();
                this.Item_Allergens = dt.Rows[0]["item_allergens"].ToString();
                this.Item_Price = (decimal)dt.Rows[0]["item_price"];
                this.Item_Gluten_Free = (bool)dt.Rows[0]["item_gluten_free"];
                this.Item_Active = (bool)dt.Rows[0]["item_active"];
            }
        }
        #endregion

        #region Methods/Functions
        private static DataTable GetMenuItemsID(int item_id)   //match
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["SE256_MurilloConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("menu_items_getbyID", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@item_id", SqlDbType.Int).Value = item_id;

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
