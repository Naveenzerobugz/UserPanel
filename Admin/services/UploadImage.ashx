<%@ WebHandler Language="C#" Class="UploadImage" %>

using System;
using System.Web;
using Newtonsoft.Json;
using BusinessController;
using System.Text;
using System.IO;

public class UploadImage : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "application/json";
        context.Response.ContentEncoding = Encoding.UTF8;
        Response r = new Response();
        r.Success = false;
        r.Message = "Unexpected error found.";

        string lid = context.Request.Form["lid"];
        if (!string.IsNullOrEmpty(lid))
        {
            string msg = string.Empty;
            string path = "#";
            if (context.Request.Files.Count > 0)
            {
                HttpFileCollection files = context.Request.Files;
                for (int i = 0; i < files.Count; i++)
                {
                    HttpPostedFile file = files[i];
                    string[] FileExtenstion = { ".png", ".svc", ".jpg" };
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
                        file.SaveAs(context.Server.MapPath("/imagelist/" + path));
                        int ret = Business.InsertSliderImage(Convert.ToInt32(lid), "/imagelist/"+path);
                        switch (ret)
                        {
                            default:
                                if (ret > 0)
                                {
                                    r.Message = "Image Uploaded successfully.";
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
                        r.Message = "Kindly upload a valid file (Allowed file type extensions are:  '.png','.svc' file upto 4 MB in size.)";
                    }

                    break;
                }
                r.Message = r.Message;
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