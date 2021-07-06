using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maimai_progect
{
    public partial class accesDenied : System.Web.UI.Page
    {
         public string ProtectedLink = "";
        public string greeting = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isAdmin"] != null)
            {
                ProtectedLink += (" | <a href='logout.aspx'>logout</a>");
                ProtectedLink += (" | <a href='profileEdit.aspx'>change-id</a>");
                ProtectedLink += (" | <a href='onlyRegisteredUsers.aspx'>only-registered</a>");
                ProtectedLink += (" | <a href='admin.aspx'>admin-page</a>");
                greeting = " hello adminn! ";
            }
            else if (Session["user"] != null)
            {
                greeting = "hello , " + Session["name"].ToString();

            }
            else
            {
                greeting = " hello memeber ";

            }
        }
    }
}