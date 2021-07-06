using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
namespace maimai_progect
{
    public class MyAdoHelper
    {
        public static SqlConnection ConnectToDb(string fileName)
        { //מיקום מסד הנתונים מהשורש ועד התקייה בה ממוקם המסד
            string path = HttpContext.Current.Server.MapPath("App_Data/") + fileName;

            string connString = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = |DataDirectory|\Database1.mdf; Integrated Security = True";
            SqlConnection conn = new SqlConnection(connString);
            return conn;
        }

        // To Execute update / insert / delete queries
        //הפעולה מקבלת שם מסד נתונים ומחרוזת מחיקה/ הוספה/ עדכון
        //ומבצעת את הפקודה על המסד הפיזי

        public static void DoQuery(string fileName, string sql)
        {
            SqlConnection conn = ConnectToDb(fileName);
            conn.Open();
            SqlCommand com = new SqlCommand(sql, conn);
            com.ExecuteNonQuery();
            com.Dispose();
            conn.Close();
        }

        internal static string ShowTable(string fileName, string sql)
        {
            throw new NotImplementedException();
        }

        /// To Execute update / insert / delete queries
        ///  הפעולה מקבלת שם קובץ ומשפט לביצוע ומחזירה את מספר השורות שהושפעו מביצוע הפעולה
        //הפעולה מקבלת מסלול מסד נתונים ופקודת עדכון
        //ומבצעת את הפקודה על המסד הפיזי
        public static int RowsAffected(string fileName, string sql)
        {

            SqlConnection conn = ConnectToDb(fileName);
            conn.Open();
            SqlCommand com = new SqlCommand(sql, conn);
            int rowsA = com.ExecuteNonQuery();
            conn.Close();
            return rowsA;
        }

        internal static string PrintDataTable(string fileName, string sql)
        {
            throw new NotImplementedException();
        }


        /// הפעולה מקבלת שם קובץ ומשפט לחיפוש ערך - מחזירה אמת אם הערך נמצא ושקר אחרת
        //הפעולה מקבלת שם קובץ ומשפט בחירת נתון ומחזירה אמת אם הנתונים קיימים ושקר אחרת
        public static bool IsExist(string fileName, string sql)
        {

            SqlConnection conn = ConnectToDb(fileName);
            conn.Open();
            SqlCommand com = new SqlCommand(sql, conn);
            SqlDataReader data = com.ExecuteReader();
            bool found;
            found = (bool)data.Read();// אם יש נתונים לקריאה יושם אמת אחרת שקר - הערך קיים במסד הנתונים
            conn.Close();
            return found;

        }

        //בניית אובייקט מסוג DataTable
        public static DataTable ExecuteDataTable(string fileName, string sql)
        {
            SqlConnection conn = ConnectToDb(fileName);
            conn.Open();
            SqlDataAdapter tableAdapter = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            tableAdapter.Fill(dt);
            return dt;
        }

        public void ExecuteNonQuery(string fileName, string sql)
        {
            SqlConnection conn = ConnectToDb(fileName);
            conn.Open();
            SqlCommand command = new SqlCommand(sql, conn);
            command.ExecuteNonQuery();
            conn.Close();
        }
      

        public static string printDataTableNew(DataTable dt)
        {
            string printStr = "<table border='1'>";
            printStr += "<tr>";
            foreach (DataColumn column in dt.Columns)
            {
                printStr += "<th>" + column.ColumnName + "</th>";
            }
            printStr += "</tr>";
            foreach (DataRow row in dt.Rows)
            {
                printStr += "<tr>";
                //מעבר על כל העמודות בתוך שורה
                foreach (object myItemArray in row.ItemArray)
                {
                    printStr += "<td>" + myItemArray.ToString() + "</td>";
                }
                printStr += "</tr>";
            }
            printStr += "</table>";

            return printStr;


        }
    }
}
