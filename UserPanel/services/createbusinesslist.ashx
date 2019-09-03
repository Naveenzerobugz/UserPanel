<%@ WebHandler Language="C#" Class="createlist" %>

using System;
using System.Web;
using Newtonsoft.Json;

using System.Text;
using System.IO;
using WebApplication.Config;
using UsersApp;
using BusinessController;


public class createlist : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        context.Response.ClearHeaders();
        context.Response.ClearContent();
        context.Response.Clear();

        // Do not cache response
        context.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        // Set the content type and encoding for JSON
        context.Response.ContentType = "application/json";
        string title = context.Request.Form["title"].Trim();
        string tagline = context.Request.Form["tagline"].Trim();
        string category = context.Request.Form["category"].Trim();
        string address = context.Request.Form["address"].Trim();
        string country = context.Request.Form["country"].Trim();
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
        //string mondayopen = context.Request.Form["mondayopen"].Trim();
        //string mondayclose = context.Request.Form["mondayclose"].Trim();
        //string tuesdayopen = context.Request.Form["tuesdayopen"].Trim();
        //string tuesdayclose = context.Request.Form["tuesdayclose"].Trim();
        //string wednesdayopen = context.Request.Form["wednesdayopen"].Trim();
        //string wednesdayclose = context.Request.Form["wednesdayclose"].Trim();
        //string thursdayopen = context.Request.Form["thursdayopen"].Trim();
        //string thursdayclose = context.Request.Form["thursdayclose"].Trim();
        //string Fridayopen = context.Request.Form["Fridayopen"].Trim();
        //string Fridayclose = context.Request.Form["Fridayclose"].Trim();
        //string saturdayopen = context.Request.Form["saturdayopen"].Trim();
        //string saturdayclose = context.Request.Form["saturdayclose"].Trim();
        //string sundayopen = context.Request.Form["sundayopen"].Trim();
        //string sundayclose = context.Request.Form["sundayclose"].Trim();
        string video = context.Request.Form["video"].Trim();

        string path = string.Empty;
        Response p1 = new Response();
        p1.Id = -1;
        p1.Success = false;
        p1.Message = "System error refresh the page or press ctrl + f5";
        if (!string.IsNullOrEmpty(mob) && !string.IsNullOrEmpty(email) && !string.IsNullOrEmpty(category))
        {
            if (Util.ValidateMobile(mob) && Util.CheckNumber(mob))
            {
                if (Util.ValidateName(category))
                {
                    if (context.Request.Files.Count > 0)
                    {
                        HttpFileCollection files = context.Request.Files;
                        for (int i = 0; i < files.Count; i++)
                        {
                            HttpPostedFile file = files[i];
                            string[] FileExtenstion = { ".png", ".svc",".jpg" };
                            bool isValidExt = false;
                            for (int j = 0; j < FileExtenstion.Length; j++)
                            {
                                if (file.FileName.EndsWith(FileExtenstion[j]))
                                {
                                    isValidExt = true;
                                    break;
                                }
                            }
                            if (file.ContentLength <= 4457280 && isValidExt)
                            {
                                string extension = Path.GetExtension(file.FileName);
                                path = Guid.NewGuid() + extension;
                                file.SaveAs(context.Server.MapPath("/upload/" + path));

                                int r = Business.InserBusinessList(title, tagline,category, address,country,city,state, zipcode, mob, email,website,fb,linkdin,twitter, googleplus,description,minprice,maxprice,video, "/upload/"+path, DateTime.Now);
                                switch (r)
                                {
                                    case 1:
                                        p1.Message = "Registration successfull";
                                        p1.Success = true;
                                        p1.Id = 1;
                                        break;
                                    case -2:
                                        p1.Message = "Mobile Number Already exists.";
                                        break;
                                    default:
                                        p1.Message = "Invalid Request Please try after some time.";
                                        break;
                                }
                            }
                            else
                            {
                                p1.Message = "Kindly upload a valid file (Allowed file type extensions are:  '.png','.svc' file upto 4 MB in size.)";
                            }
                            break;
                        }
                        p1.Message = p1.Message;
                    }

                }
                else
                {
                    p1.Message = "Enter Valid Name";
                }
            }
            else
            {
                p1.Message = "Enter Valid Mobile No.";
            }

        }
        context.Response.Write(JsonConvert.SerializeObject(p1));
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