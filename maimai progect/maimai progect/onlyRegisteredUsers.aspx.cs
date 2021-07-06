using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maimai_progect
{
    public partial class onlyRegisteredUsers : System.Web.UI.Page
    {
        public string ProtectedLink = "";
        public string greeting = "";
        public string tableString = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["user"]) == null && Session["isAdmin"] == null)//אם משתמש לא ביצע כניסה
            {
                Response.Redirect("accessDenied.aspx");
            }
            else
            {

                string fileName = "Database1.mdf";//שם הקובץ
                string selectQuery = "";

                if (Request.Form["select"] != null)//אם נלחץ כפתור submit
                {
                    selectQuery = "select name,age,basketballTEAM from Users";  // שאילתת בחירה

                    DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);
                    int length = table.Rows.Count; // מספר הרשומות בטבלה

                    if (length > 0)
                    {
                        tableString = "<table>";
                        tableString += "<tr>";
                        tableString += "<th>|</th>";
                        tableString += "<th>client name</th>";
                        tableString += "<th>|</th>";
                        tableString += "<th>age</th>";
                        tableString += "<th>|</th>";
                        tableString += "<th>basketballTEAM</th>";
                        tableString += "<th>|</th>";
                        tableString += "</tr>";
                        for (int i = 0; i < length; i++)
                        { // הדפסת כל הרשומות בטבלה

                            tableString += "<tr>";
                            tableString += "<th>|</th>";
                            tableString += "<td>" + table.Rows[i]["name"] + "</td>";
                            tableString += "<th>|</th>";
                            tableString += "<td>" + table.Rows[i]["age"] + "</td>";
                            tableString += "<th>|</th>";
                            tableString += "<td>" + table.Rows[i]["basketballTEAM"] + "</td>";
                            tableString += "<th>|</th>";
                            tableString += "</tr>";
                        }
                        tableString += "</table>";
                    }
                    else
                        tableString = "לא נמצאו רשומות";
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