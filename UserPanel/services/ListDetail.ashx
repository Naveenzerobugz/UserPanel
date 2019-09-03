<%@ WebHandler Language='C#' Class='ListDetail' %>

using System;
using System.Web;
using UsersApp;
using System.Collections.Generic;
using BusinessController;

public class ListDetail : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/html";
        int? status = null;

        if (!string.IsNullOrEmpty(context.Request.QueryString["sc"]))
        {
            status = Convert.ToInt32(context.Request.QueryString["sc"]);
        }
        string id = context.Request.QueryString["lid"];

        List<Business> dt = new List<Business>();
        dt = Business.GetBusinessList(Convert.ToInt32(id), status, 0, 20);

        if (dt.Count > 0)
        {
            string item = string.Empty;
            string s = string.Empty;
            for (int i = 0; i < dt.Count; i++)
            {
                List<Business> blist = Business.GetBusinessList(Convert.ToInt32(id), status, 0, 20);

                if (blist.Count > 0)
                {

                    for (int j = 0; j < blist.Count; j++)
                    {
                        if (i == 0)
                        {
                            s = "<div class='panel-body'><p>" + blist[j].Description + "</p></div>";
                        }
                        item = item + s;
                    }
                }
            }
            context.Response.Write(item);
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