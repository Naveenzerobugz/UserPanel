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
        dt = Business.GetBusinessList(Convert.ToInt32(id), 1, 0, 20);
        if (dt.Count > 0)
        {
            string item = string.Empty;
            string s = string.Empty;
           
            for (int i = 0; i < dt.Count; i++)
            {
                s +=  "<div class='col-md-8'><h1>hgjhgjhgjhjhgjhg</h1><p>5-star hotel with restaurant, Deluxe Rooms.</p><div class='listing_rating'><p> <span class='review_score'>4.0/5</span> <i class='fa fa-star active'></i><i class='fa fa-star active'></i><i class='fa fa-star active'></i> <i class='fa fa-star active'></i><i class='fa fa-star'></i> (5 Reviews)</p><p class='listing_like'><a href='#'><i class='fa fa-heart-o'></i>5 Likes</a></p><p class='listing_favorites'><a href='#'><i class='fa fa-bookmark-o'></i>Add to favorites</a></p></div></div><div class='col-md-4'><div class='pricing_info'><p class='listing_price'><span>$</span>2500 - <span>$</span>4000</p><div class='listing_message'><a class='btn' data-toggle='modal' data-target='#message_modal'><i class='fa fa-envelope-o'></i>Send Message</a></div></div></div>";
                item = item + s;
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