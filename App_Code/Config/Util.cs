using System;
using System.Web;
using System.Net;
using System.Text;
using System.IO;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
using WebApplication.DAL;

namespace WebApplication.Config { 
public sealed class Util
{
    public Util()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    /*Get IP Address of the current httpcontext*/
    public static string GetUserIP()
    {
        string strIpAddress;
        try
        {
            strIpAddress = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            if (strIpAddress == null)
            {
                strIpAddress = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
            }
        }
        catch
        {
            strIpAddress = "1.1.1.1";
        }
        return strIpAddress;
    }
    /*Generating Random Integer and String */

    public static int RandomNumber(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    }

    private static string RandomString(int size, bool lowerCase)
    {
        StringBuilder builder = new StringBuilder();
        Random random = new Random();
        char ch;
        for (int i = 0; i < size; i++)
        {
            ch = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * random.NextDouble() + 65)));
            builder.Append(ch);
        }
        if (lowerCase)
            return builder.ToString().ToLower();
        return builder.ToString();
    }
        /*Generating Random Integer and String */

        public static bool CheckNumber(string strPhoneNumber)
        {
            if (strPhoneNumber.Length < 5)
            {
                return false;
            }
            else
            {
                string MatchPhoneNumberPattern = @"^[0-9]*$";
                if (strPhoneNumber != null) return Regex.IsMatch(strPhoneNumber, MatchPhoneNumberPattern);
                else return false;
            }
        }
        public static string SendSMS(string mobile, string message)
        {
            string url = "http://103.16.143.180/api/mt/SendSMS?user=ashokmaurya&password=ashok@123&senderid=sabkch&channel=trans&DCS=0&flashsms=0&number=" + mobile + "&text=" + message + "&route=3";
            HttpWebRequest httpreq = (HttpWebRequest)WebRequest.Create(url);

            try
            {
                HttpWebResponse httpres = (HttpWebResponse)httpreq.GetResponse();
                StreamReader sr = new StreamReader(httpres.GetResponseStream());
                string results = sr.ReadToEnd();
                sr.Close();
                //string results = "Local";
                return results;

            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }
       
        public static bool ValidateMobile(string Mobile)
        {

            bool m = false;
            if (!(Mobile.Length >= 4 & (Mobile.StartsWith("9") || Mobile.StartsWith("8") || Mobile.StartsWith("7") || Mobile.StartsWith("6") || Mobile.StartsWith("5") || Mobile.StartsWith("4"))))
            {
                m = false;
            }
            else
            {
                m = true;
                //int mcount = CountMobile(Mobile);
                //if (mcount < ConValues.AllowedMobileCount)
                //{
                //    m = true;
                //}
                //else
                //{

                //    m = false;
                //}

            }
            return m;

        }
        public static bool ValidateEmail(string Email)
        {
            bool email = false;
            string expression = @"^[a-z][a-z|0-9|]*([_][a-z|0-9]+)*([.][a-z|" +
                                     @"0-9]+([_][a-z|0-9]+)*)?@[a-z][a-z|0-9|]*\.([a-z]" +
                                         @"[a-z|0-9]*(\.[a-z][a-z|0-9]*)?)$";

            Match match = Regex.Match(Email.Trim(), expression, RegexOptions.IgnoreCase);
            if (!match.Success)
            {
                email = false;
            }
            else
            {
                string em = Email.Trim();
                if (em.EndsWith("fleckens.hu") || em.EndsWith("teleworm.com") || em.EndsWith("superrito.com") || em.EndsWith("rhyta.com") || em.EndsWith("jourrapide.com") || em.EndsWith("gustr.com") || em.EndsWith("cuvox.de") || em.EndsWith("dayrep.com") || em.EndsWith("einrot.com") || em.EndsWith("fleckens.hu"))
                {
                    email = false;
                }
                else
                {
                    email = true;
                    //int mcount = CountEmail(Email.Trim());
                    //if (mcount < ConValues.AllowedMobileCount)
                    //{ email = true; }
                    //else
                    //{

                    //    email = false;
                    //}

                }
            }
            return email;
        }

        public static int CountEmail(string Email)
        {
            int Count = -1;
            DBAccess db = new DBAccess();
            db.Parameters.Add(new SqlParameter("@Email", Email));
            SqlDataReader dr = (SqlDataReader)db.ExecuteReader("UserEmailCount");
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Count = dr.GetInt32(dr.GetOrdinal("TotalEmail"));
                }
                dr.Close();
                return Count;
            }
            else
            {
                dr.Close();

                return -1;
            }
        }

        public static bool ValidateName(string Name)
        {
            bool name = false;
            if (Regex.IsMatch(Name.Trim(), "^[a-zA-Z''-'\\s]{1,40}$"))
            {
                name = true;
            }
            else
            {
                //  retVal = -4;// Error Code 4:
            }
            return name;
        }
        public static bool ValidateUserName(string UserName)
        {
            bool isvalid = false;
            if (Regex.IsMatch(UserName.Trim(), @"^(?=[a-zA-Z])[-\w.]{0,23}([a-zA-Z\d]|(?<![-.])_)$"))
            {
                isvalid = true;
            }
            else
            {
                //  retVal = -4;// Error Code 4:
            }
            return isvalid;
        }
    
}

}