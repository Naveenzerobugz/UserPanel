<%@ WebHandler Language="C#" Class="bannerlist" %>

using System;
using System.Web;
using UsersApp;
using System.Collections.Generic;
using BusinessController;


public class bannerlist : IHttpHandler
{ 
public void ProcessRequest(HttpContext context)
{
    context.Response.ContentType = "text/html";

  string id = context.Request.QueryString["lid"];

    List<Business> dt = new List<Business>();
    dt = Business.GetListAllImage(Convert.ToInt32(id), 0, 20);
    if (dt.Count > 0)
        {
            string item = string.Empty;
            string s = string.Empty;
           
            for (int i = 0; i < dt.Count; i++)
            {
                s =  "<div class='item'><img src='"+dt[i].Picpath+"' alt='image'></div>";
                
            }
            context.Response.Write(s);
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