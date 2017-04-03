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
            RegisterRoutes(RouteTable.Routes);  // call method we created for reg
            AdminRegisterRoutes(RouteTable.Routes);  //admin function  NEED TO CALL IT
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

        public static void AdminRegisterRoutes(RouteCollection route)
        {
            #region
            //ignore WebResource.adx file
            route.Ignore("{resource}.axd/{*pathInfo}");
            //nickname,  url display , url of aspx
            //map static pages for Admin    * middle needs to match end of menu list class 
            //    route.MapPageRoute("AdminHome", "Admin/Home", "~/DefaultAdmin.aspx");
            route.MapPageRoute("AdminMenuItems", "Admin/Menu-Items", "~/MenuItems.aspx");
            route.MapPageRoute("AdminMenuItem", "Admin/Menu-Item", "~/Menu-Item.aspx");   //need to fix Menus.cs
            route.MapPageRoute("AdminSections", "Admin/Sections", "~/Sections.aspx");
            route.MapPageRoute("AdminSection", "Admin/Section", "~/Section.aspx");
            route.MapPageRoute("AdminTables", "Admin/Tables", "~/Tables.aspx");
            route.MapPageRoute("AdminTable", "Admin/Table", "~/Table.aspx");
            route.MapPageRoute("AdminResMgmt", "Admin/Res-Management", "~/ResMgmt.aspx");
            route.MapPageRoute("AdminUser", "Admin/User", "~/User.aspx");
            route.MapPageRoute("AdminUsers", "Admin/Users", "~/Users.aspx");


            // route.MapPageRoute()
            #endregion
        }

    }
}