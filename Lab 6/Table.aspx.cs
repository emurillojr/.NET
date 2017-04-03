using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE256demoWEEK1
{
    public partial class Table : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int tbl_id = Convert.ToInt32(RouteData.Values["tbl_id"]);
            TableCS mt = new TableCS(tbl_id);

            lblTbl_ID.Text = String.Concat("Item_ID: ", mt.Tbl_ID).ToString();
            lblSect_ID.Text = String.Concat("Menu_Id: ", mt.Sect_ID).ToString();
            lblTbl_Name.Text = String.Concat("Cat_Id: ", mt.Tbl_Name).ToString();
            lblTbl_Desc.Text = String.Concat("Item_Name: ", mt.Tbl_Desc).ToString();
            //  txtName.Text = String.Concat(mt.Item_Name);
            lblTbl_Seat_Cnt.Text = String.Concat("Item_Desc: ", mt.Tbl_Seat_Cnt).ToString();
            lblTbl_Active.Text = String.Concat("Item_Active: ", mt.Tbl_Active).ToString();
        }

        protected void lbtnCancelClick(object sender, EventArgs e)
        {
            Response.Redirect("/Home");
        }


    }
}