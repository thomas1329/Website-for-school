using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace maimai_progect
{
    public partial class registration : System.Web.UI.Page
    {
        public string ProtectedLink = "";
        public string greeting = "";
        public string message = "";
        public string res = "";


        protected void Page_Load(object sender, EventArgs e)
        {
       
            



            if (Request.Form["submit"] != null)//אם נלחץ SEND
            {
                string selectQuery;
                string sql;
                string fileName = "Database1.mdf";//שם הקובץ
                string nick = Request.Form[name.UniqueID]; //for MasterPage השמת ערכים מהשדה למשתנה
                string Pass = Request.Form[pass.UniqueID];
                string baks = Request.Form[basketballTEAM.UniqueID]; //for MasterPage השמת ערכים מהשדה למשתנה
                string stadt = Request.Form[adress.UniqueID];
                string firs = Request.Form[fn.UniqueID];
                string last = Request.Form[ln.UniqueID];
                string gile = Request.Form[age.UniqueID];
                //בדיקת שרת לקיום שדות ריקים
                if (nick.Trim().Length == 0 || Pass.Trim().Length == 0&&baks.Trim().Length == 0 || stadt.Trim().Length == 0&& firs.Trim().Length == 0 || last.Trim().Length == 0 && gile.Trim().Length == 0)//בדיקת צד שרת שרת:האם ערך לא רייק?

                    res = "* הרשמה לא תקינה .קיימים ערכים רייקים.";
                else
                {
                    //  מניעת הרשמה  כפולה
                   
                    selectQuery = "SELECT * FROM Users WHERE name =N'" + nick + "'";
                    //בחירת ממסד הנתונים רשומה עם שם משתמש זהה לשם שהמשתמש ממלא בשדה שם המשתמש בטופס
                    if (MyAdoHelper.IsExist(fileName, selectQuery))
                    // בדיקה בעזרת פעולה במחלקת עזר האם רשומה עם שם משתמש כזה קיימת 
                    {
                        res = "* שם משתמש כבר קיימת במערכת.";
                    }
                    else
                    {
                        // הכנסת נתונים למסד נתונים
                         sql = "INSERT INTO Users(name,pass,basketballTEAM,adress,fn,ln,age)";//עמודות במסד הנתונים

                        sql += "VALUES(N'" + nick + "',N'" + Pass + "',N'"+ baks+ "',N'"+ stadt+ "',N'"+ firs+"',N'" + last + "',N'"+ gile+"')"; //הערכים שנשלחים למסד הנתונים לפי העמודות
                                                                          //מוסיפים אם במסד הנתונים במקום עברית רואים ???    N 
                                                                          //  מציינת -Unicode.


                        MyAdoHelper.DoQuery(fileName, sql); //  MyAdoHelper ממחלקת  העזר   DoQuery זימון הפעולה    
                        res =
                            "<span style=\"color:blue;font-size:14px;\">  !הרשמה בוצעה בהצלחה! תתחבר למערכת</span>";// תג SPAN לעיצוב אלמנט בצד שרת
                        

                    }
                }    

            }
            else
                res = "";
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
