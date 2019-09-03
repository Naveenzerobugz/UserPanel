using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Net.Mail;

/// <summary>
/// Summary description for Picture
/// </summary>
/// 
namespace WebApplication.Config
{
    public class ValidEntry
    {
        public ValidEntry()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public static bool IsEmailValid(string emailaddress)
        {
            try
            {
                MailAddress m = new MailAddress(emailaddress);

                return true;
            }
            catch (FormatException)
            {
                return false;
            }
        }
    }
}