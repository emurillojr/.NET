using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE256demoWEEK1
{
    public class Menus
    {
        //returns a list of menu items
        public static List<MenuItem> GetMainMenu()
        {
            #region
            List<MenuItem> lstMenu = new List<MenuItem>();
            lstMenu.Add(new MenuItem("Home", "", "", "~/Home"));
            lstMenu.Add(new MenuItem("Lunch Menu", "", "", "~/Lunch-Menu"));
            lstMenu.Add(new MenuItem("Dinner Menu", "", "", "~/Dinner-Menu"));
            lstMenu.Add(new MenuItem("Reservations", "", "", "~/Reservations"));
            lstMenu.Add(new MenuItem("Directions", "", "", "~/Directions"));
            lstMenu.Add(new MenuItem("About", "", "", "~/About"));
            lstMenu.Add(new MenuItem("Contact", "", "", "~/Contact"));
            lstMenu.Add(new MenuItem("Sign In", "", "", "~/Sign-In"));
            return lstMenu;
            #endregion
        }
    }
}