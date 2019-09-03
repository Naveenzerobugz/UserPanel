<%@ WebHandler Language="C#" Class="DeleteList" %>

using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using UsersApp;
using Newtonsoft.Json;
using System.Text;
using System.Collections;
using System.Runtime.Serialization.Json;
using System.Collections.Generic;
    using BusinessController;

public class DeleteList : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
    context.Response.ClearHeaders();
        context.Response.ClearContent();
        context.Response.Clear();
        // Do not cache response
        context.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        // Set the content type and encoding for JSON
        context.Response.ContentType = "application/json";
        context.Response.ContentEncoding = Encoding.UTF8;
        Response p1 = new Response();
        p1.Id = -1;
        p1.Success = false;
        string  id = context.Request.Form["sc"];
        p1.Message = "System error refresh the page or press ctrl + f5";
        int ret = Business.DeleteList(Convert.ToInt32(id));
         if (ret > 0)
        {
            p1.Message = "List Deleted successfully.";
            p1.Success = true;
        }
        else
        {
            p1.Message = "Unknow Error: Not successfuly deleted !: ";
        }

        context.Response.Write(JsonConvert.SerializeObject(p1));
        context.Response.End();
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}