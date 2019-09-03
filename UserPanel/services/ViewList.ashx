<%@ WebHandler Language="C#" Class="ViewList" %>

using System;
using System.Web;
using UsersApp;
using System.Collections.Generic;
using BusinessController;
public class ViewList : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/html";
        int? status = null;

        if (!string.IsNullOrEmpty(context.Request.QueryString["sc"]))
        {
            status = Convert.ToInt32(context.Request.QueryString["sc"]);
        }
        List<Business> dt = new List<Business>();
        dt = Business.GetBusinessList(null, status, 0, 20);
        if (dt.Count > 0)
        {
            string item = string.Empty;
            string s = string.Empty;
            for (int i = 0; dt.Count > i; i++)
            {
                s = "<li>"
                + "<div class='list-box-listing'><div class='list-box-listing-img'><a href='#'><img src='" + dt[i].Picpath + "' alt=''/></a></div><div class='list-box-listing-content'><div class='inner'><h3><a href='listingdetail.aspx?lid=" + dt[i].UserId + "'>" + dt[i].Category + "</a></h3><span><i class='fa fa-phone' aria-hidden='true'></i>" + dt[i].Mobile + "</span><div><i class='fa fa-map-marker' aria-hidden='true'></i>" + dt[i].Address + "</div><div class='star-rating'><div class='rating-counter'><i class='fa fa-star-o' checked style='color:orange'></i><i class='fa fa-star-o' style='color:orange' checked></i><i class='fa fa-star-o' checked style='color:orange'></i><i class='fa fa-star-o' checked style='color:orange'></i><i class='fa fa-star-o' checked style='color:orange'></i>(12 reviews)</div></div></div></div></div>"
                + "<div class='buttons-to-right'>"
                + "<a href='Updatelisting.aspx?n=" + dt[i].UserId + "' class='button gray'><i class='fa fa-pencil'></i> Edit</a>"
                + "<a href='#' onclick='DeleteList(" + dt[i].UserId + ")' class='button red'><i class='fa fa-trash-o'></i> Delete</a>"
                + "</div>"
                + "</li>";
                item = item + s;
            }

            context.Response.Write("<ul>" + item + "</ul>");
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