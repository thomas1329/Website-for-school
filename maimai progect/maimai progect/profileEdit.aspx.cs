using System;
using System.Data;



namespace maimai_progect
{

    public partial class profileEdit : System.Web.UI.Page
    {
        public string greeting = "";
        public string userMsg = "";
        public string tableStringAll = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "Database1.mdf";//שם הקובץ
            string tableName = "Users";//שם הטבלה

            string selectQuery = "";
            string sql = "";
            if (Request.Form["select"] != null)//אם נלחץ כפתור submit
            {
                selectQuery = "select * from Users";  // שאילתת בחירה

                DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);
                int length = table.Rows.Count; // מספר הרשומות בטבלה

                if (length > 0)
                {
                    tableStringAll = "<table>";
                    tableStringAll += "<tr>";
                    tableStringAll += "<th>|</th>";
                    tableStringAll += "<th>id</th>";
                    tableStringAll += "<th>|</th>";
                    tableStringAll += "<th>username</th>";
                    tableStringAll += "<th>|</th>";
                    tableStringAll += "<th>pass</th>";
                    tableStringAll += "<th>|</th>";
                    tableStringAll += "<th>basketballTEAM</th>";
                    tableStringAll += "<th>|</th>";
                    tableStringAll += "<th>adress</th>";
                    tableStringAll += "<th>|</th>";
                    tableStringAll += "<th>age</th>";
                    tableStringAll += "<th>|</th>";
                    tableStringAll += "<th>isAdmin</th>";
                    tableStringAll += "<th>|</th>";
                    tableStringAll += "<th>fn</th>";
                    tableStringAll += "<th>|</th>";
                    tableStringAll += "<th>ln</th>";
                    tableStringAll += "<th>|</th>";
                    tableStringAll += "<th>time_registered</th>";
                    tableStringAll += "<th>|</th>";
                    tableStringAll += "</tr>";
                    for (int i = 0; i < length; i++)
                    { // הדפסת כל הרשומות בטבלה

                        tableStringAll += "<tr>";
                        tableStringAll += "<th>|</th>";
                        tableStringAll += "<td>" + table.Rows[i]["id"] + "</td>";
                        tableStringAll += "<th>|</th>";
                        tableStringAll += "<td>" + table.Rows[i]["name"] + "</td>";
                        tableStringAll += "<th>|</th>";
                        tableStringAll += "<td>" + table.Rows[i]["pass"] + "</td>";
                        tableStringAll += "<th>|</th>";
                        tableStringAll += "<td>" + table.Rows[i]["basketballTEAM"] + "</td>";
                        tableStringAll += "<th>|</th>";
                        tableStringAll += "<td>" + table.Rows[i]["adress"] + "</td>";
                        tableStringAll += "<th>|</th>";
                        tableStringAll += "<td>" + table.Rows[i]["age"] + "</td>";
                        tableStringAll += "<th>|</th>";
                        tableStringAll += "<td>" + table.Rows[i]["isAdmin"] + "</td>";
                        tableStringAll += "<th>|</th>";
                        tableStringAll += "<td>" + table.Rows[i]["fn"] + "</td>";
                        tableStringAll += "<th>|</th>";
                        tableStringAll += "<td>" + table.Rows[i]["ln"] + "</td>";
                        tableStringAll += "<th>|</th>";
                        tableStringAll += "<td>" + table.Rows[i]["time_registered"] + "</td>";
                        tableStringAll += "<th>|</th>";
                        tableStringAll += "</tr>";
                    }
                    tableStringAll += "</table>";
                }
                else
                    tableStringAll = "לא נמצאו רשומות";
            }
            if (Request.Form["submit"] != null)//אם נלחץ כפתור submit
            {
                string name = Request.Form["name"];
                string isAdmin = Request.Form["adminold"];
                string admindent = Request.Form["adminrepas"];

                selectQuery = "select * from Users where name = '";//, שאלתה למסד נתונים
                selectQuery += name + "' and isAdmin = '" + isAdmin + "'";
                if (MyAdoHelper.IsExist(fileName, selectQuery))//אם משתמש קיים בבסיס נתונים 
                {
                    sql = "UPDATE  " + tableName + "  SET isAdmin='" + admindent + "'where name='" + name + "' AND isAdmin='" + isAdmin + "'";
                    MyAdoHelper.DoQuery(fileName, sql);
                    userMsg = "הפרטים עודכנו";
                }
                else
                    userMsg = "שם משתמש לא  תקין או הססמה שגויה";

                
                if (Session["isAdmin"] != null)
                {

                    greeting = " hello adminn! ";
                }
            }
        }
    }
}
