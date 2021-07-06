using System;
using System.Data;
namespace maimai_progect
{
    public partial class admin : System.Web.UI.Page
    {
        public string deleting = "";
        public string userMsg = "";
        public string byNAme = "";
        public string tableStringAll = "";
        public string ProtectedLink = "";
        public string greeting = "";
        public string message = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //הגנה על הדף
            if (Session["isAdmin"] == null)
            {
                Response.Redirect("accessDenied.aspx");
            }
            //סיום הגנה
            else
            {
                string tableName = "Users";//שם הטבלה
                string fileName = "Database1.mdf";//שם הקובץ
                string selectQuery = "";
                string sql = "";
              
                
                if (Request.Form["delete"] != null)//אם נלחץ כפתור delete
                {
                    string Id = Request.Form["Id"];//קולט id
                    selectQuery = "DELETE FROM Users where Id = '";//, שאלתה למסד נתונים
                    selectQuery += Id + "'";
                    if (MyAdoHelper.IsExist(fileName, selectQuery))//אם משתמש קיים בבסיס נתונים 
                    {
                        sql = "DELETE FROM " + tableName + "'where name='" + Id + "'";
                        MyAdoHelper.DoQuery(fileName, sql);
                        deleting = "הפרטים עודכנו";
                    }
                    
                }

                if (Request.Form["regis"] != null)//אם נלחץ SEND
                {
                   
                    

                    selectQuery = "select * from Users where name = '" + Request.Form["name"] + "'";
                    // selectQuery = "SELECT * FROM " + tableName + " WHERE idNum = '" + Request.Form["idNum"] + "'";
                    if (MyAdoHelper.IsExist(fileName, selectQuery))
                    {
                        //כדי לא לחזור לבניית הטופס מחדש פעולה שתמחק את הנתונים
                        //כך ניתן לחזור לטופס בעזרת חזור ולמלא את הנתונים

                        Response.Write("שם משתמש כבר קיים במערכת.");
                        Response.Write("לחץ על לחצן חזור בדפדפן ובדוק את הטופס");
                        Response.End();
                    }
                    else

                    {
                        string name = Request.Form["name"];
                        string password = Request.Form["pass"];
                        string basketballTEAM = Request.Form["basketballTEAM"];
                        string adress = Request.Form["adress"];
                        string fname = Request.Form["fm"];
                        string lname = Request.Form["ln"];
                        string age = Request.Form["age"];
                        string Admin = Request.Form["isAdmin"];


                        sql = string.Format("insert into Users (name,pass,basketballTEAM,adress,age,fn,ln,isAdmin)" +
                           " VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", name, password, basketballTEAM, "N'" + adress + "'", age, fname, lname, Admin);

                        // הכנסת נתונים למסד נתונים
                        sql = "INSERT INTO Users(name,pass,basketballTEAM,adress,age,fn,ln,isAdmin)";//עמודות במסד הנתונים
                                                                                   //הערכים נשלחים למסד הנתונים לפי סדר העמודות
                                                                                   //מוסיפים אם במסד הנתונים במקום עברית רואים ???    N 
                                                                                   //  מציינת -Unicode.
                        sql += "VALUES(N'" + name + "',N'" + password + "',N'" + basketballTEAM + "',N'" + adress + "',N'" + age + "',N'" + fname + "',N'" + lname + "',N'"+ Admin + "')";


                        MyAdoHelper.DoQuery(fileName, sql);
                        message = "נרשמת בהצלחה! ";
                       
                    }
                }



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
                        userMsg = "הפרטים עודכנו";
                    }
                    else
                        userMsg = "שם משתמש לא  תקין או הססמה שגויה";
                }
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
            }
            if (Session["isAdmin"] != null)
            {
                ProtectedLink += (" - <a href='logout.aspx'>logout</a>");
                ProtectedLink += (" - <a href='onlyRegisteredUsers.aspx'>only-registered</a>");
                ProtectedLink += ("  <a href='admin.aspx'>admin-page</a>");
                ProtectedLink += ("  <a href='adminLog.aspx'>adminlog</a>");
                greeting = " hello adminn! ";
            }

        }
    }
}
