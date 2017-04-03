using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;

namespace SE256demoWEEK1
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoutes(RouteTable.Routes);  // call method we created
        }

        public static void RegisterRoutes(RouteCollection routes)  // function   map page route
        {
            #region
            //ignore WebResource.axd file
            routes.Ignore("{resource}.axd/{*pathInfo}");
            //map static pages
            routes.MapPageRoute("Home", "Home", "~/Default.aspx");     //nickname,  url display , url of aspx
            routes.MapPageRoute("LunchMenu", "Lunch-Menu", "~/LunchMenu.aspx");
            routes.MapPageRoute("DinnerMenu", "Dinner-Menu", "~/DinnerMenu.aspx");
            routes.MapPageRoute("Reservations", "Reservations", "~/Reservations.aspx");
            routes.MapPageRoute("Directions", "Directions", "~/Directions.aspx");
            routes.MapPageRoute("About", "About", "~/About.aspx");
            routes.MapPageRoute("Contact", "Contact", "~/Contact.aspx");
            routes.MapPageRoute("Signin", "Sign-In", "~/Login.aspx");
            //extras
            //routes.MapPageRoute("LunchMenu", "Lunch-Menu", "~/LunchMenu.aspx");
            //routes.MapPageRoute("LunchMenu", "Lunch-Menu", "~/LunchMenu.aspx");
            #endregion
        }


    }
}