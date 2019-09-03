<%@ WebHandler Language="C#" Class="listUpdate" %>

using System;
using System.Web;
using System.Text;
using Newtonsoft.Json;
using WebApplication.Config;
using UsersApp;
    

public class listUpdate : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "application/json";
        context.Response.ContentEncoding = Encoding.UTF8;
        Response r = new Response();
        r.Success = false;
        r.Message = "Unexpected error found.";

        int userid = 0;
        int.TryParse(context.Request.Form["userid"], out userid);
        string Username = context.Request.Form["Username"].Trim();
        string mobile = context.Request.Form["mobile"].Trim();
       
        if (!string.IsNullOrEmpty(context.Request.Form["username"]))
        {
            if (Util.ValidateName(Username))
            {
                int ret = Users.UpdateUserProfile(userid, Username, mobile);
                switch (ret)
                {             
                    default:
                        if (ret > 0)
                        {
                            r.Message = "User Profile Update successfully.";
                            r.Success = true;
                        }
                        else
                        {
                            r.Message = "Unknow Error: Error Code : " + ret;
                        }
                        break;
                }
            }
            else
            {
                r.Message = "Please Enter Valid Name";
            }
        }
        else
        {
            r.Message = "All fields are mandatory.";

        }

        context.Response.Write(JsonConvert.SerializeObject(r));
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