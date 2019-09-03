<%@ WebHandler Language="C#" Class="ViewList" %>

using System;
using System.Web;
using UsersApp;
using System.Collections.Generic;

public class ViewList : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/html";
        //string id = context.Request.QueryString["lid"];
        List<Users> dt = new List<Users>();
        dt = Users.GetUserList(null,null);
        if (dt.Count > 0)
        {
            string s = string.Empty;
            for (int i = 0; dt.Count > i; i++)
            {
                s = "<div class='buttons-to-right'><a href='ProfileUpdate.aspx?n="+dt[i].UserId+"' class='button gray'><i class='fa fa-pencil'></i> Edit Profile</a></div>";
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