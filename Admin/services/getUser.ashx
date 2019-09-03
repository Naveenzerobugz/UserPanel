<%@ WebHandler Language="C#" Class="GetCountry" %>


using System;
using System.Web;
using Newtonsoft.Json;
using System.Text;
using System.Collections.Generic;

using Newtonsoft.Json.Converters;
using UsersApp;
public class GetCountry : IHttpHandler
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

        string page = context.Request.Form["start"]; // this will post pagesize as start 0, 10, 20 and so on
        string length = context.Request.Form["length"];
        string pdraw = context.Request.Form["draw"];

        int Draw = 1;
        int PageIndex = 0;
        int PageSize = 10;


        if (!string.IsNullOrEmpty(page))
        {
            PageIndex = Convert.ToInt32(page);
            PageIndex = PageIndex / PageSize;
        }

        if (!string.IsNullOrEmpty(length))
            PageSize = Convert.ToInt32(length);

        if (!string.IsNullOrEmpty(pdraw))
            Draw = Convert.ToInt32(pdraw);
        List<Users> dt = new List<Users>();
        dt = Users.GetUserList(null ,null);
        if (dt.Count > 0)
        {
            context.Response.Write("{\"draw\": " + Draw + "," + "\"recordsTotal\":" + dt[0].Records + ",\"recordsFiltered\":" + dt[0].Records + ",\"data\":" + JsonConvert.SerializeObject(dt, Formatting.None, new IsoDateTimeConverter() { DateTimeFormat = "dd MMM yy" }) + "}");
        }

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