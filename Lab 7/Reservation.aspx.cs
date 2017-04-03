using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE256demoWEEK1
{
    public partial class Reservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int res_id = Convert.ToInt32(RouteData.Values["res_id"]);
            if (!IsPostBack)
            {
                if (res_id > 0)  // if there is a res id
                {
                    lbtnUpdate.Text = "Update";
                    GUESTINFO.Visible = false; // hide guest information on update hide 

                    ReservationCS mt = new ReservationCS(res_id);
                    hidetxtGuestID.Value = mt.Guest_ID.ToString();   // make it hidden
                    //txtGuestID.Text = mt.Guest_ID.ToString();
                    hidetxtTblID.Value = mt.Tbl_ID.ToString();  // make it hidden
                    //txtTblID.Text = mt.Tbl_ID.ToString();
                    ddlEmployee.SelectedValue = mt.User_ID.ToString();   // changed it to ddl  user id to employee name   edited users get all sotred procedure
                    //txtUserID.Text = mt.User_ID.ToString();

                    txtResDate.Text = mt.Res_Date;
                    txtResTime.Text = mt.Res_Time;
                    txtResGuestCnt.Text = mt.Res_Guest_Cnt.ToString();
                    txtResSpecReq.Text = mt.Res_Spec_Req;
                }
                else  // if no res id go to add
                {
                    lbtnUpdate.Text = "Add";
                  
                    GuestCS ng = new GuestCS();
                    txtGuestEmail.Text = ng.Guest_Email;
                    txtGuestFirstName.Text = ng.Guest_First;
                    txtGuestLastName.Text = ng.Guest_Last;
                    txtGuestPhone.Text = ng.Guest_Phone;

                    ReservationCS mt = new ReservationCS(res_id);
                    ddlEmployee.SelectedValue = null;  // changed it to ddl  user id to employee name
                    txtResDate.Text = String.Empty;
                    txtResTime.Text = String.Empty;
                    txtResGuestCnt.Text = String.Empty;
                    txtResSpecReq.Text = String.Empty;
                }
            }
        }

        protected void lbtnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/Res-Management");
        }

        protected void lbtnUpdate_Click(object sender, EventArgs e)
        {
            string updateBUTTON = lbtnUpdate.Text;

            if (updateBUTTON == "Update")   // update reservation
            {
                ReservationCS sr = new ReservationCS();
                if (RouteData.Values["res_id"] != null)
                {
                    bool success = false;
                    sr.Res_ID = Convert.ToInt32(RouteData.Values["res_id"]);
                    sr.Guest_ID = Convert.ToInt32(hidetxtGuestID.Value);   // make it hidden
                    //sr.Guest_ID = Convert.ToInt32(txtGuestID.Text.Trim());
                    sr.Tbl_ID = Convert.ToInt32(hidetxtTblID.Value); // make it hidden
                    //sr.Tbl_ID = Convert.ToInt32(txtTblID.Text.Trim());
                    sr.User_ID = Convert.ToInt32(ddlEmployee.SelectedValue);  // changed it to ddl  user id to employee name
                    //sr.User_ID = Convert.ToInt32(txtUserID.Text.Trim());
                    sr.Res_Date = txtResDate.Text.ToString();
                    sr.Res_Time = txtResTime.Text.ToString();
                    sr.Res_Guest_Cnt = Convert.ToInt32(txtResGuestCnt.Text.Trim());
                    sr.Res_Spec_Req = txtResSpecReq.Text.Trim();

                    success = ReservationCS.UpdateReservation(sr);

                    if (success) // if update reservation is true
                    {
                        Response.Redirect("/Admin/Res-Management");
                    }

                }
            }

            else  // insert reservation
            {
                bool success = false;
                

                GuestCS gr = new GuestCS();
                gr.Guest_Pwd = UserCS.CreatePasswordHash(gr.Guest_Salt, "password");  // set password to password
                gr.Guest_Email = txtGuestEmail.Text.Trim();
                gr.Guest_First = txtGuestFirstName.Text.Trim();
                gr.Guest_Last = txtGuestLastName.Text.Trim();
                gr.Guest_Phone = txtGuestPhone.Text.Trim();

                ReservationCS sr = new ReservationCS();
                sr.Guest_ID = GuestCS.InsertGuest(gr);  // guest id = new id

                //sr.Guest_ID = Convert.ToInt32(hidetxtGuestID.Value);  // make it hidden

                // table id = get availble table (date, time, guestcount)
                sr.Tbl_ID = ReservationCS.GetAvailableTable(txtResDate.Text, txtResTime.Text, Convert.ToInt32(txtResGuestCnt.Text.Trim()));  // card coded for test


                //sr.Tbl_ID = Convert.ToInt32(hidetxtTblID.Value);  // make it hidden

                sr.User_ID = Convert.ToInt32(ddlEmployee.SelectedValue.ToString());  // changed it to ddl  user id to employee name
                //sr.User_ID = Convert.ToInt32(txtUserID.Text.Trim());
                sr.Res_Date = txtResDate.Text.Trim();
                sr.Res_Time = txtResTime.Text.Trim();
                sr.Res_Guest_Cnt = Convert.ToInt32(txtResGuestCnt.Text.Trim());
                sr.Res_Spec_Req = txtResSpecReq.Text.Trim();

                success = ReservationCS.InsertReservation(sr);

                if (success) // if insert guest and reservation is true
                {
                    Response.Redirect("/Admin/Res-Management");
                }
            }
        }
    }
}