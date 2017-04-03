using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE256demoWEEK1
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                #region
                List<MenuItem> lmi = Menus.GetAdminMenu();
                foreach (MenuItem mi in lmi)
                {
                    mnuMain.Items.Add(mi);

                }

                #endregion
            }

        }
    }
}