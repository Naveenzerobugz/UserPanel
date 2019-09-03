<%@ WebHandler Language="C#" Class="gettimelist" %>

using System;
using System.Web;
using UsersApp;
using System.Collections.Generic;
using BusinessController;
public class gettimelist : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/html";

        string id = context.Request.QueryString["lid"];
        //List<Business> blist = Business.GetBusinessTime(Convert.ToInt32(id), 0, 20);

        string s = "";

        //if (blist.Count > 0)
        //{
        //    s = string.Empty;
        //    s = "<ul>";
        //    for (int i = 0; blist.Count>i; i++)
        //    {
        //        s += "<li><span>" + blist[i].Open + "</span> - <span>" + blist[i].Close + "</span></li>";
        //    }
        //    s += "</ul>";
        //}
        context.Response.Write(s);
    }
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}