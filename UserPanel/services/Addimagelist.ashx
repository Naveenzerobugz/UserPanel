<%@ WebHandler Language="C#" Class="Addimagelist" %>

using System;
using System.Web;
using UsersApp;
using System.Collections.Generic;
using BusinessController;

public class Addimagelist : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        string id = context.Request.QueryString["lid"];
        List<Business> dt = Business.GetListAllImage(Convert.ToInt32(id), 0, 20);


        if (dt.Count > 0)
        {
            string item = string.Empty;
            string s = string.Empty;
           
            for (int i = 0; dt.Count > i; i++)
            {
                     
                s = "<li><img src='" + dt[i].Picpath + "' alt='Snow' style='width:70px;height:70px;'></li>";
                item = item + s;
            }
            context.Response.Write("<ul id='film_strip' style='list-style:none'>" + item + "</ul>");

        }
    }
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}