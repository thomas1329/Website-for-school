using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace maimai_progect
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            //Session["user"] = null;
            Session["name"] = null;
            // Session["isAdmin"] = null;
            Response.Redirect("informiton.aspx");

        }
    }
}
