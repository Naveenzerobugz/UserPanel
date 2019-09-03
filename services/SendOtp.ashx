<%@ WebHandler Language="C#" Class="SendOtp" %>

using System;
using System.Web;

using System.Text;
using Newtonsoft.Json;
using WebApplication.Config;
using UsersApp;
using System.Collections.Generic;

public class SendOtp : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "application/json";
        context.Response.ContentEncoding = Encoding.UTF8;
        Response r = new Response();
        r.Success = false;
        string m = string.Empty;
        //string mobile = context.Request.Form["mobile"];
        string id = context.Request.Form["lid"];
        Users dt = Users.GetUserid(Convert.ToInt32(id));
        if(dt!=null)
        {
            m = dt.Mobile;
        }

        int a = Util.RandomNumber(100000, 999999);
        string numotp = Convert.ToString(a);
        string otp = "Your six digit OTP for registration is: " +Convert.ToString(a)+"";
        r = Messaging.SendSMS(m, otp);
        if(r.Success)
        {
            r.Message = numotp;
            context.Response.Write(JsonConvert.SerializeObject(r));
        }
        else
        {
            r.Message = "Message Not Send";
            context.Response.Write(JsonConvert.SerializeObject(r));
        }

        context.Response.End();
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}