<%@ WebHandler Language="C#" Class="listUpdate" %>

using System;
using System.Web;
using System.Text;
using Newtonsoft.Json;
using WebApplication.Config;
using UsersApp;
    using BusinessController;

public class listUpdate : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "application/json";
        context.Response.ContentEncoding = Encoding.UTF8;
        Response r = new Response();
        r.Success = false;
        r.Message = "Unexpected error found.";

        int listid = 0;
        int.TryParse(context.Request.Form["listid"], out listid);
        string title = context.Request.Form["title"].Trim();
        string tagline = context.Request.Form["tagline"].Trim();
        string category = context.Request.Form["category"].Trim();
        string address = context.Request.Form["address"].Trim();
        string city = context.Request.Form["city"].Trim();
        string state = context.Request.Form["state"].Trim();
        string zipcode = context.Request.Form["zipcode"].Trim();
        string mob = context.Request.Form["mob"].Trim();
        string email = context.Request.Form["email"].Trim();
        string website = context.Request.Form["website"].Trim();
        string fb = context.Request.Form["fb"].Trim();
        string linkdin = context.Request.Form["linkdin"].Trim();
        string twitter = context.Request.Form["twitter"].Trim();
        string googleplus = context.Request.Form["googleplus"].Trim();
        string description = context.Request.Form["description"].Trim();
        string minprice = context.Request.Form["minprice"].Trim();
        string maxprice = context.Request.Form["maxprice"].Trim();

        //string amenities1 = context.Request.Form["amenities1"].Trim();
        //string amenities2 = context.Request.Form["amenities2"].Trim();
        //string amenities3 = context.Request.Form["amenities3"].Trim();
        //string amenities4 = context.Request.Form["amenities4"].Trim();
        //string amenities5 = context.Request.Form["amenities5"].Trim();
        //string amenities6 = context.Request.Form["amenities6"].Trim();
        //string amenities7 = context.Request.Form["amenities7"].Trim();

        string mondayopen = context.Request.Form["mondayopen"].Trim();
        string mondayclose = context.Request.Form["mondayclose"].Trim();
        string tuesdayopen = context.Request.Form["tuesdayopen"].Trim();
        string tuesdayclose = context.Request.Form["tuesdayclose"].Trim();
        string wednesdayopen = context.Request.Form["wednesdayopen"].Trim();
        string wednesdayclose = context.Request.Form["wednesdayclose"].Trim();
        string thursdayopen = context.Request.Form["thursdayopen"].Trim();
        string thursdayclose = context.Request.Form["thursdayclose"].Trim();
        string Fridayopen = context.Request.Form["Fridayopen"].Trim();
        string Fridayclose = context.Request.Form["Fridayclose"].Trim();
        string saturdayopen = context.Request.Form["saturdayopen"].Trim();
        string saturdayclose = context.Request.Form["saturdayclose"].Trim();
        string sundayopen = context.Request.Form["sundayopen"].Trim();
        string sundayclose = context.Request.Form["sundayclose"].Trim();
        string video = context.Request.Form["video"].Trim();

        if (!string.IsNullOrEmpty(context.Request.Form["category"]))
        {
            if (Util.ValidateName(category))
            {
                int ret = Business.UpdateList(listid, title, tagline,category, address,city,state, zipcode, mob, email,website,fb,linkdin,twitter, googleplus,description,minprice,maxprice,mondayopen,mondayclose,tuesdayopen,tuesdayclose,wednesdayopen,wednesdayclose,thursdayopen,thursdayclose,Fridayopen,Fridayclose,saturdayopen,saturdayclose,sundayopen,sundayclose,video,DateTime.Now);
                switch (ret)
                {
                    //case -2:
                    //    r.Message = "Name already exist.";
                    //    break;
                    default:
                        if (ret > 0)
                        {
                            r.Message = "Business List Update successfully.";
                            r.Success = true;
                        }
                        else
                        {
                            r.Message = "Unknow Error: Error Code : " + ret;
                        }
                        break;
                }
            }
            else
            {
                r.Message = "Please Enter Valid Name";
            }
        }
        else
        {
            r.Message = "All fields are mandatory.";

        }

        context.Response.Write(JsonConvert.SerializeObject(r));
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