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
         context.Response.ContentType = "text/html";

        string id = context.Request.QueryString["lid"];

        List<Business> dt = new List<Business>();
        dt = Business.GetBusinessList(Convert.ToInt32(id), 1, 0, 20);
        if (dt.Count > 0)
        {
            string item = string.Empty;
            string s = string.Empty;
            for (int i = 0; dt.Count > i; i++)
            {
                if (i == 0)
                {
                    s = "<section class='listing_detail_header style2_header parallex-bg' style=' background-image: url(" + dt[i].Picpath + ")'>";
                    s += "<div class='container'>";
                    s += "<div class='div_zindex white-text'><div class='row'><div class='col-md-8'><h1>" + dt[i].Title + "</h1><p>" + dt[i].Address + "</p><div class='listing_rating'><p> <span class='review_score'>4.0/5</span> <i class='fa fa-star active'></i><i class='fa fa-star active'></i><i class='fa fa-star active'></i> <i class='fa fa-star active'></i><i class='fa fa-star'></i> (5 Reviews)</p><p class='listing_like'><a href='#'><i class='fa fa-heart-o'></i>5 Likes</a></p><p class='listing_favorites'><a href='#'><i class='fa fa-bookmark-o'></i>Add to favorites</a></p></div></div><div class='col-md-4'><div class='pricing_info'><p class='listing_price'><span>$</span>" + dt[i].Minprice + " - <span>$</span>" + dt[i].Maxprice + "</p><div class='listing_message'><a class='btn' data-toggle='modal' data-target='#message_modal'><i class='fa fa-envelope-o'></i>Send Message</a></div></div></div></div></div></div><div class='dark-overlay'></div> ";
                    item = item + s;
                }
            }
            context.Response.Write("</section>" + item);
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