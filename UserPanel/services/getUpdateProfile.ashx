<%@ WebHandler Language="C#" Class="getUpdateListingData" %>

using System;
using System.Web;

using UsersApp;
using Newtonsoft.Json;
using System.Text;
public class getUpdateListingData : IHttpHandler {

    public void ProcessRequest (HttpContext context) {

        context.Response.ClearHeaders();
        context.Response.ClearContent();
        context.Response.Clear();
        // Do not cache response
        context.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        // Set the content type and encoding for JSON
        context.Response.ContentType = "application/json";
        context.Response.ContentEncoding = Encoding.UTF8;
        Response p1 = new Response();
        p1.Id = -1;
        p1.Success = false;
        string  id = context.Request.QueryString["sc"];
        p1.Message = "System error refresh the page or press ctrl + f5";
        Users u = Users.GetUserid(Convert.ToInt32(id));
        p1.Message="";
        if (u != null)
        {
            p1.Message = u.UserId +"~"+u.UserName+ "~" +u.Mobile;
            p1.Success = true;
        };

        context.Response.Write(JsonConvert.SerializeObject(p1));
        context.Response.End();
    }

    public bool IsReusable {
        get
        {
            return false;
        }
    }

}