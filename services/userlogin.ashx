<%@ WebHandler Language="C#" Class="GetNames" %>
using System.Web;
using Newtonsoft.Json;
using System.Text;
using UsersApp;
using System.Web.Security;
using System;
using System.Net;


public class GetNames : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        // System.Threading.Thread.Sleep(0);
        context.Response.ClearHeaders();
        context.Response.ClearContent();
        context.Response.Clear();

        // Do not cache response
        context.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        // Set the content type and encoding for JSON
        context.Response.ContentType = "application/json";
        context.Response.ContentEncoding = Encoding.UTF8;

        string Password = context.Request.Form["upass"].Trim();
        string Username = context.Request.Form["uname"].Trim();

        Response p1 = new Response();
        p1.Id = -1;
        p1.Success = false;
        p1.Message = "login failed. Try in few minutes.";
        Users adm = Users.GetUser(Username);
        if (adm!= null && adm.Password.Equals(Password))
        {
            if (adm.UserStatus == 1)
            {
                HttpCookie uName = new HttpCookie("uName");
                HttpCookie uroll = new HttpCookie("uroll");
                uName.Value = adm.UserName.ToString();
                context.Response.Cookies.Add(uName);
                uroll.Value = "user";
                context.Response.Cookies.Add(uroll);
                FormsAuthentication.SetAuthCookie(adm.UserId.ToString(), true);
                p1.Id = 1;
       
                p1.Success = true;
                p1.Message = "/Default.aspx";
            }
            else if (adm.UserStatus == 0)
            {
                p1.Message = "Your Account is Temporarily Deactivated ";
            }
            else
            {
                p1.Message = "Some Error Occure Please Try After some Time ";
            }
        }
        else
        {
            p1.Message = "authentication is not valid. ";
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