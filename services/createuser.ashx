<%@ WebHandler Language="C#" Class="createuser" %>

using System;
using System.Web;
using Newtonsoft.Json;
using System.Text;
using UsersApp;
using WebApplication.Config;
using System;
using System.Net;
public class createuser : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ClearHeaders();
        context.Response.ClearContent();
        context.Response.Clear();

        // Do not cache response
        context.Response.Cache.SetCacheability(HttpCacheability.NoCache);

        // Set the content type and encoding for JSON
        context.Response.ContentType = "application/json";
        context.Response.ContentEncoding = Encoding.UTF8;
        string username = context.Request.Form["uname"].Trim();
        string mobile = context.Request.Form["mobile"].Trim();
        string pass = context.Request.Form["pass"].Trim();
        string finalotp = context.Request.Form["otp"].Trim();
        
        Response p1 = new Response();
        p1.Id = -1;
        p1.Success = false;
        p1.Message = "System error refresh the page or press ctrl + f5";
        if (!string.IsNullOrEmpty(username) && !string.IsNullOrEmpty(mobile) && !string.IsNullOrEmpty(pass))
        {
            if (pass.Length > 6)
            {
                if (Util.ValidateMobile(mobile) && Util.CheckNumber(mobile))
                {
                    if (Util.ValidateName(username))
                    {
                       
                        if (finalotp == "")
                        {
                            string numbers = "1234567890";
                            string characters = numbers;

                            //RANDOM OTP GENARATE
                            int length = 4;
                            string otp = string.Empty;
                            for (int i = 0; i < length; i++)
                            {
                                string character = string.Empty;
                                do
                                {

                                    int index = new Random().Next(0, characters.Length);
                                    character = characters.ToCharArray()[index].ToString();
                                } while (otp.IndexOf(character) != -1);
                                otp += character;
                            }
                             
                            if (username != "" && mobile != "")
                            {
                                HttpWebRequest myReq = (HttpWebRequest)WebRequest.Create("http://byebyesms.com/app/smsapi/index.php?key=55D650FA55A87C&campaign=8675&routeid=7&type=text&contacts=" + mobile + "&senderid=DTRUNK&msg= yourotpid" + otp + "");
                                HttpWebResponse myResp = (HttpWebResponse)myReq.GetResponse();
                                System.IO.StreamReader respStreamReader = new System.IO.StreamReader(myResp.GetResponseStream());
                                string responseString = respStreamReader.ReadToEnd();
                                respStreamReader.Close();
                                myResp.Close();
                                p1.otp  = otp;
                                p1.Message = "Otp Send successfull";
                                     p1.Success = true;
                            }
                        }
                        else
                        {

                          

                            int r = Users.InsertUser(username, mobile, pass, DateTime.Now);
                            switch (r)
                            {
                                case 1:

                                    p1.Message = "Registration successfull";
                                    p1.Success = true;
                                    p1.Id = 1;

                                    //SMS SENDING 

                                   
                                    p1.uname = username;
                                    break;
                                //case -3:
                                //    p1.Message = "Mobile Number Already exists.";
                                //    break;

                                default:
                                    p1.Message = "Invalid Request Please try after some time.";
                                    break;
                            }

                        }
                        
                    }
                    else
                    {
                        p1.Message = "Enter Valid Name";
                    }
                }
                else
                {
                    p1.Message = "Enter Valid Mobile No.";
                }
            }
            else
            {
                p1.Message = "Password Should Minimum Eight Characters";
            }
        }
        context.Response.Write(JsonConvert.SerializeObject(p1));
        context.Response.End();
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}