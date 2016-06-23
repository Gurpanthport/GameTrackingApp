using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gameTrackerFinal1
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            addActiveClass();
        }

        /**
         * This metho adds class of "active" to list items in the
         * main navbar depending on Page Title
         * 
         * @method addActiveClass
         * @return {string}
         */
        private string addActiveClass()
        {
            switch (Page.Title)
            {
                case "Home Page":
                    home.Attributes.Add("class", "active");
                    break;
                case "Register":
                    projects.Attributes.Add("class", "active");
                    break;
                case "Login":
                    services.Attributes.Add("class", "active");
                    break;
                case "Contact":
                    contact.Attributes.Add("class", "active");
                    break;
            }

            return Page.Title;
        }
    }
}