using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE256demoWEEK1
{
    public partial class Menu_Item : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                // lblTableID.Text = RouteData.Values["tbl_id"].ToString();
                // int sect_id = Convert.ToInt32(RouteData.Values["sect_id"]);

                int item_id = Convert.ToInt32(RouteData.Values["item_id"]);
                MenuItemCS mt = new MenuItemCS(item_id);

                lblItem_ID.Text = String.Concat("Item_ID: ", mt.Item_ID).ToString();
                lblMenu_Id.Text = String.Concat("Menu_Id: ", mt.Menu_Id).ToString();
                lblCat_Id.Text = String.Concat("Cat_Id: ", mt.Cat_Id).ToString();
                lblItem_Name.Text = String.Concat("Item_Name: ", mt.Item_Name).ToString();
                //  txtName.Text = String.Concat(mt.Item_Name);
                lblItem_Desc.Text = String.Concat("Item_Desc: ", mt.Item_Desc).ToString();
                lblItem_Allergens.Text = String.Concat("Item_Allergens: ", mt.Item_Allergens).ToString();
                lblItem_Price.Text = String.Concat("Item_Price: ", mt.Item_Price).ToString();
                lblItem_Gluten_Free.Text = String.Concat("Item_Gluten_Free: ", mt.Item_Gluten_Free).ToString();
                lblItem_Active.Text = String.Concat("Item_Active: ", mt.Item_Active).ToString();

       //         txtName.Text = String.Concat(mt.Item_Name);
        //        txtDescription.Text = String.Concat(mt.Item_Desc);
         //       txtAllergens.Text = String.Concat(mt.Item_Allergens);
         //       txtPrice.Text = String.Concat(mt.Item_Price);
        //        txtMenu.Text = String.Concat(mt.Menu_Name);
         //       txtCategory.Text = String.Concat(mt.Cat_Name);
            }

        }

        protected void lbtnCancelClick(object sender, EventArgs e)
        {
            Response.Redirect("/Home");
        }


    }
}