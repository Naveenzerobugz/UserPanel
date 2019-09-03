using System;
using System.Data;
using System.Data.SqlClient;
using WebApplication.DAL;

/// <summary>
/// Summary description for helper
/// </summary>
/// 
namespace WebApplication.Config
{
    public class helper
    {
        public helper()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public static string Rateback()
        {
            string aa = string.Empty;
            DBAccess db = new DBAccess();
            aa = db.ConnectionString;
            return aa;
        }
        public static string ToTitleCase(string input)
        {
            return System.Globalization.CultureInfo.CurrentCulture.TextInfo.ToTitleCase(input.ToLower());
        }
        public static String CleanString(String input)
        {
            string output = input;
            if (!String.IsNullOrEmpty(input))
            {
                output = output.Replace("%", "[%]");
                output = output.Replace("<", "");
                output = output.Replace("/>", "");
                output = output.Replace(">", "");
                output = output.Replace(",", "");
                output = output.Replace("'", "");
                output = output.Replace(";", "");
                output = output.Replace(":", "");
                output = output.Replace("[", "");
                output = output.Replace("]", "");
                output = output.Replace("{", "");
                output = output.Replace("}", "");
                output = output.Replace("=", " ");
                output = output.Replace("-", " ");
                output = output.Replace("*", " ");
                output = output.Replace("^", " ");
                output = output.Replace("&", " ");
                output = output.Replace("@", " ");
                output = output.Replace(".", "");
                // Could also remove common search terms.
            }
            return output;
        }

       

        public static bool IsDBNull(SqlDataReader reader, string colName)
        {
            return reader.IsDBNull(reader.GetOrdinal(colName));
        }
    }
}