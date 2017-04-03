using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE256demoWEEK1
{
    public partial class Reservations1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int res_id = Convert.ToInt32(RouteData.Values["res_id"]);
            ReservationCS mt = new ReservationCS(res_id);



            lblRes_ID.Text = String.Concat("Res_ID: ", mt.Res_ID).ToString();
            lblGuest_ID.Text = String.Concat("Guest_ID: ", mt.Guest_ID).ToString();
            lblTbl_ID.Text = String.Concat("Tbl_ID: ", mt.Tbl_ID).ToString();
            lblUser_ID.Text = String.Concat("User_ID: ", mt.User_ID).ToString();
            //  txtName.Text = String.Concat(mt.Item_Name);
            lblRes_Date.Text = String.Concat("Res_Date: ", mt.Res_Date).ToString();
            lblRed_Time.Text = String.Concat("Red_Time: ", mt.Red_Time).ToString();
            lblRes_Guest_Cnt.Text = String.Concat("Res_Guest_Cnt: ", mt.Res_Guest_Cnt).ToString();
            lblRes_Spec_Req.Text = String.Concat("Res_Spec_Req: ", mt.Res_Spec_Req).ToString();
        }
    }
}