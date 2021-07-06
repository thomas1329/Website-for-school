using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace maimai_progect
{
    public partial class login : System.Web.UI.Page
    {
        public string ProtectedLink = "";
        public string greeting = "";
        public string message = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "Database1.mdf";//שם מסד נתונים

            if (Request.Form["submit"] != null) // אם טופס נשלח
            {
                string name = Request.Form["name"];//"name"  מקבל ניקניים  משדה 
                string pass = Request.Form["pass"];// "pass" מקבל סיסמא משדה 
      

                string selectQuery = "select * from users where name = '";// שאלתה למסד נתונים
                selectQuery +=  name + "' and pass = '" + pass + "'";


                //בדיקה האם קיים המשתמש
                if (MyAdoHelper.IsExist(fileName, selectQuery))
                { // המשתמש קיים במסד נתונים והסיסמה נכונה

                    DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);
                    Session["isAdmin"] = null; //איתחול מנהל - לא נבדק עדיין
                    //האם המשתמש הוא מנהל?
                    try
                    {

                        if ((bool)table.Rows[0]["isAdmin"]) //אם הערך במסד הנתונים  בעמודה של המנהל הוא אמת
                        {
                            Session["isAdmin"] = "מנהל"; /// יצירת סשן למנהל/Session  נשים ערך לאובייקט   
                            Response.Redirect("admin.aspx"); //המנהל יועבר לדף מוגן
                        }

                    }
                    catch (InvalidCastException ex)//אם הערך במסד הנתונים  בעמודה של המנהל הוא null
                    {
                        if (ex.Data == null)
                        {
                            throw;//לא לעשות כלום
                        }
                    }

                    //למשתמש רשום
                    Session["user"] = (string)table.Rows[0]["basketballTEAM"];//יצירת סשן עם email
                    Session["name"] = table.Rows[0]["name"];//יצירת סשן עם שם  name
                    Response.Redirect("home.aspx");//משתמש רגיל יועבר לדף ראשי


                    message = "<span style=\"color:blue;font-size:16px;\"> כניסה בוצעה בהצלחה! </span>";// דוגמה לעיצוב בתוך קוד שרת 
                }
                else
                { // המשתמש לא קיים באתר או שהסיסמה שגויה
                    message += "שם המשתמש או הסיסמה אינם נכונים.";
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

            }
            else
            {
                greeting = " hello memeber ";

            }
        }
    }
}
