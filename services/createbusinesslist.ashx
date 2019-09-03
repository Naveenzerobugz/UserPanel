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
        Business objbusiness = new Business();
        objbusiness.Title = context.Request.Form["title"].Trim();
        objbusiness.Tagline= context.Request.Form["tagline"].Trim();
        objbusiness.Category = context.Request.Form["category"].Trim();
        objbusiness.Address = context.Request.Form["address"].Trim();
        objbusiness.Country = context.Request.Form["country"].Trim();
        objbusiness.City = context.Request.Form["city"].Trim();
        objbusiness.State= context.Request.Form["state"].Trim();
        objbusiness.Zipcode= context.Request.Form["zipcode"].Trim();
        objbusiness.Mobile= context.Request.Form["mob"].Trim();
        objbusiness.Email= context.Request.Form["email"].Trim();
        objbusiness.Website= context.Request.Form["website"].Trim();
        objbusiness.Fb = context.Request.Form["fb"].Trim();
        objbusiness.Linkdin = context.Request.Form["linkdin"].Trim();
        objbusiness.Twitter = context.Request.Form["twitter"].Trim();
        objbusiness.Googleplus = context.Request.Form["googleplus"].Trim();
        objbusiness.Description = context.Request.Form["description"].Trim();
        objbusiness.Minprice = context.Request.Form["minprice"].Trim();
        objbusiness.Maxprice= context.Request.Form["maxprice"].Trim();
        objbusiness.Amenities1 = context.Request.Form["amenities1"].Trim();
        objbusiness.Amenities2= context.Request.Form["amenities2"].Trim();
        objbusiness.Amenities3= context.Request.Form["amenities3"].Trim();
        objbusiness.Amenities4= context.Request.Form["amenities4"].Trim();
        objbusiness.Amenities5= context.Request.Form["amenities5"].Trim();
        objbusiness.Amenities6= context.Request.Form["amenities6"].Trim();
        objbusiness.Amenities7 = context.Request.Form["amenities7"].Trim();

        objbusiness.Mondayopen = context.Request.Form["mondayopen"].Trim();
        objbusiness.Mondayclose = context.Request.Form["mondayclose"].Trim();
        objbusiness.Tuesdayopen= context.Request.Form["tuesdayopen"].Trim();
        objbusiness.Tuesdayclose= context.Request.Form["tuesdayclose"].Trim();
        objbusiness.Wednesdayopen = context.Request.Form["wednesdayopen"].Trim();
        objbusiness.Wednesdayclose= context.Request.Form["wednesdayclose"].Trim();
        objbusiness.Thursdayopen= context.Request.Form["thursdayopen"].Trim();
        objbusiness.Thursdayclose = context.Request.Form["thursdayclose"].Trim();
        objbusiness.Fridayopen = context.Request.Form["Fridayopen"].Trim();
        objbusiness.Fridayclose= context.Request.Form["Fridayclose"].Trim();
        objbusiness.Saturdayopen = context.Request.Form["saturdayopen"].Trim();
        objbusiness.Saturdayclose = context.Request.Form["saturdayclose"].Trim();
        objbusiness.Sundayopen= context.Request.Form["sundayopen"].Trim();
        objbusiness.Sundayclose = context.Request.Form["sundayclose"].Trim();
        objbusiness.Video = context.Request.Form["video"].Trim();

        string path = string.Empty;
        Response p1 = new Response();
        p1.Id = -1;
        p1.Success = false;
        p1.Message = "System error refresh the page or press ctrl + f5";
        if (!string.IsNullOrEmpty(objbusiness.Mobile) && !string.IsNullOrEmpty(objbusiness.Email) && !string.IsNullOrEmpty(objbusiness.Category))
        {
            if (Util.ValidateMobile(objbusiness.Mobile) && Util.CheckNumber(objbusiness.Mobile))
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
                                objbusiness.imgPath= "/upload/" + path;
                                int r = objbusiness.Insertdata(objbusiness);
                             //   int r = Business.InserBusinessList(title, tagline,category, address,country,city,state, zipcode, mob, email,website,fb,linkdin,twitter, googleplus,description,minprice,maxprice,video, "/upload/"+path, DateTime.Now);
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