using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE256demoWEEK1
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int user_id = Convert.ToInt32(RouteData.Values["user_id"]);
            UserCS mt = new UserCS(user_id);

            lblUser_ID.Text = String.Concat("User_ID: ", mt.User_ID).ToString();
            lblUser_Email.Text = String.Concat("User_Email: ", mt.User_Email).ToString();
            lblUser_First.Text = String.Concat("User_First: ", mt.User_First).ToString();
            lblUser_Last.Text = String.Concat("User_Last: ", mt.User_Last).ToString();
            lblUser_Add1.Text = String.Concat("User_Add1: ", mt.User_Add1).ToString();
            lblUser_Add2.Text = String.Concat("User_Add2: ", mt.User_Add2).ToString();
            lblUser_City.Text = String.Concat("User_City: ", mt.User_City).ToString();
            lblState_ID.Text = String.Concat("State_ID: ", mt.State_ID).ToString();
            lblUser_Zip.Text = String.Concat("User_Zip: ", mt.User_Zip).ToString();
            lblUser_Phone.Text = String.Concat("User_Phone: ", mt.User_Phone).ToString();
            lblUser_Active.Text = String.Concat("User_Active: ", mt.User_Active).ToString();







        }


        // added function for response redirect for Cancel button

        protected void lbtnCancelClick(object sender, EventArgs e)
        {
            Response.Redirect("/Home");
        }



    }
}