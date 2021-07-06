using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maimai_progect
{
    public partial class remakepaswoerd : System.Web.UI.Page
    {
        public string ProtectedLink = "";
        public string greeting = "";
        public string newwone = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["user"]) == null && Session["isAdmin"] == null)//אם משתמש לא ביצע כניסה
            {
                Response.Redirect("accessDenied.aspx");
            }
            else
            {
                string fileName = "Database1.mdf";//שם הקובץ
                string tableName = "Users";//שם הטבלה

                string selectQuery = "";
                string sql = "";
                if (Request.Form["submit"] != null)//אם נלחץ כפתור submit
                {
                    string name = Request.Form["name"];
                    string pass = Request.Form["oldpass"];
                    string repass = Request.Form["newpass"];

                    selectQuery = "select * from Users where name = '";//, שאלתה למסד נתונים
                    selectQuery += name + "' and pass = '" + pass + "'";
                    if (MyAdoHelper.IsExist(fileName, selectQuery))//אם משתמש קיים בבסיס נתונים 
                    {
                        sql = "UPDATE  " + tableName + "  SET pass='" + repass + "'where name='" + name + "' AND pass='" + pass + "'";
                        MyAdoHelper.DoQuery(fileName, sql);
                        newwone = "הפרטים עודכנו";
                    }
                    else
                        newwone = "שם משתמש לא  תקין או הססמה שגויה";
                }
            }
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
                ProtectedLink += (" | <a href='logout.aspx'>logout</a>");
                ProtectedLink += (" | <a href='onlyRegisteredUsers.aspx'>only-registered</a>");
            }
            else
            {
                greeting = " hello memeber ";

            }

        }
    }
}
