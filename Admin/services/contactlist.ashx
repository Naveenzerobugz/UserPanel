<%@ WebHandler Language="C#" Class="contactlist" %>

using System;
using System.Web;
using UsersApp;
using System.Collections.Generic;
using BusinessController;

public class contactlist : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/html";

        string id = context.Request.QueryString["lid"];
        List<Business> dt = new List<Business>();
        dt = Business.GetBusinessList(Convert.ToInt32(id), 1, 0, 20);

        if (dt.Count > 0)
        {
            string item = string.Empty;
            string s = string.Empty;
            for (int i = 0; dt.Count>i; i++)
            {
                if (i == 0)
                {
                    s = "<li><i class='fa fa-map-marker'></i>" + dt[i].Address + "</li><li><i class='fa fa-phone'></i><a href='tel:+61-1234-5678-09'>" + dt[i].Mobile + "</a></li><li><i class='fa fa-envelope'></i><a href='mailto:contcat@example.com'>" + dt[i].Website + "</a></li><li><i class='fa fa-link'></i><a href='www.example.html'>" + dt[i].Email + "</a></li>";
                }
                item = item + s;
            }
            context.Response.Write("<ul>" + item + "</ul>");
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
