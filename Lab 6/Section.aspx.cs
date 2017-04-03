using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE256demoWEEK1
{
    public partial class Section : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int sect_id = Convert.ToInt32(RouteData.Values["sect_id"]);
            SectionCS mt = new SectionCS(sect_id);

            lblSect_ID.Text = String.Concat("Sect_ID: ", mt.Sect_ID).ToString();
            lblSect_Name.Text = String.Concat("Sect_Name: ", mt.Sect_Name).ToString();
            lblSect_Desc.Text = String.Concat("Sect_Desc: ", mt.Sect_Desc).ToString();
            lblSect_Active.Text = String.Concat("Sect_Active: ", mt.Sect_Active).ToString();
        }

        protected void lbtnCancelClick(object sender, EventArgs e)
        {
            Response.Redirect("/Home");
        }
    }
}