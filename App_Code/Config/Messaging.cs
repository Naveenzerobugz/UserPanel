using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;
/// <summary>
/// Summary description for Email
/// </summary>
/// 
namespace WebApplication.Config
{
    public sealed class Messaging
    {
        public Messaging()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        //semd Sms
        public static Response SendSMS(string mobileNumber, string msg)
        {
            Response response1 = new Response();
            try
            {
                string stringpost = "APIKey=" + ConValues.APIKeym + "&senderid=" + ConValues.SMSSenderId + "&channel=" + ConValues.Channel + "&DCS=" + ConValues.DCS + "&flashsms=" + ConValues.flashsms + "&number=" + mobileNumber + "&text=" + msg + "&route=" + ConValues.route;
                string fURL = "http://smsfortius.com/api/mt/SendSMS?" + stringpost;
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create(fURL);
                request.MaximumAutomaticRedirections = 4;
                request.Credentials = CredentialCache.DefaultCredentials;
                try
                {
                    HttpWebResponse response = (HttpWebResponse)request.GetResponse();
                    Stream receiveStream = response.GetResponseStream();
                    StreamReader readStream = new StreamReader(receiveStream, Encoding.UTF8);
                    response1.Message = readStream.ReadToEnd();
                    response.Close();
                    readStream.Close();
                    response1.Success = true;
                    return response1;
                }
                catch
                {

                }

            }
            catch (SystemException ex)
            {
                response1.Success = true;
                response1.Message = ex.Message.ToString();
            }
            return response1;
        }
        //Send Grid Email

        public static Response SendGridEmail(string FromEmail, string ToEmail, string Subject, string Message)
        {
            
            Response response = new Response();
            try
            {
                MailMessage m = new MailMessage(FromEmail, ToEmail);
                m.Subject = Subject;
                m.Body = Message;
                m.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.sendgrid.net");
                client.Credentials = new System.Net.NetworkCredential("azure_0679b453789e318821ef5ca2f041e2a1@azure.com", "93Z7TXCEm989eEg");
                client.Send(m);
                response.Success = true;
                response.Message = "Success";

            }
            catch (SmtpException ex)
            {
                response.Success = false;
                response.Message = ex.Message;
            }
            return response;
        }
        public static string RandomOtp(int length)
        {
            string Digits = "12345678909876543210";
            string allCharacters = Digits;
            //Random will give random charactors for given length  
            Random r = new Random();
            String password = "";
            for (int i = 0; i < length; i++)
            {
                double rand = r.NextDouble();
                if (i == 0)
                {
                    password += allCharacters.ToCharArray()[(int)Math.Floor(rand * allCharacters.Length)];
                }
                else
                {
                    password += allCharacters.ToCharArray()[(int)Math.Floor(rand * allCharacters.Length)];
                }
            }
            return password;
        }
        //public static Response SendSMS(string mobileNumber, string msg)
        //{
        //    Response response1 = new Response();
        //    try
        //    {
        //        string stringpost = "APIKey=" + ConValues.APIKeym + "&senderid=" + ConValues.SMSSenderId + "&channel=" + ConValues.Channel + "&DCS=" + ConValues.DCS + "&flashsms=" + ConValues.flashsms + "&number=" + mobileNumber + "&text=" +msg+ "&route="+ConValues.route;             
        //        string fURL = "http://smsfortius.com/api/mt/SendSMS?"+stringpost;
        //        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(fURL);
        //        request.MaximumAutomaticRedirections = 4;
        //        request.Credentials = CredentialCache.DefaultCredentials;
        //        try
        //        {
        //            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
        //            Stream receiveStream = response.GetResponseStream();
        //            StreamReader readStream = new StreamReader(receiveStream, Encoding.UTF8);
        //            response1.Message = readStream.ReadToEnd();
        //            response.Close();
        //            readStream.Close();
        //            response1.Success = true;
        //            return response1;
        //        }
        //        catch
        //        {

        //        }
               
        //    }
        //    catch (SystemException ex)
        //    {
        //        response1.Success = true;
        //        response1.Message = ex.Message.ToString();
        //    }
        //    return response1;
        //}
  


        //public static Response SendEmail(string RecieverEmail, string subject, string msg, bool isBodyHtml)
        //{
        //    Response response = new Response();
        //    try
        //    {
        //        MailMessage m = new MailMessage(ConValues.EmailFrom, RecieverEmail);
        //        m.Subject = subject;
        //        m.Body = msg;
        //        m.IsBodyHtml = isBodyHtml;
        //        SmtpClient client = new SmtpClient(ConValues.SMTP, ConValues.EmailPort);

        //        client.EnableSsl = ConValues.EmailSSLRequired;
        //        if (ConValues.EmailRequiredAuthentication)
        //        {
        //            client.Credentials = new System.Net.NetworkCredential(ConValues.EmailUserName, ConValues.EmailPassword);
        //        }
        //        client.Send(m);
        //        response.Id = 1;
        //        response.Success = true;
        //        response.Message = "Success";
        //    }
        //    catch (SmtpException ex)
        //    {
        //        response.Id = -1;
        //        response.Success = false;
        //        response.Message = ex.Message;
                 
        //    }

        //    return response;
        //}
    }
}