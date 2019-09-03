<%@ WebHandler Language="C#" Class="GetNames" %>


using System.Web;
using Newtonsoft.Json;
using System.Text;
using System.Web.Security;
using WebApplication.Membership;

public class GetNames : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        // System.Threading.Thread.Sleep(0);
        context.Response.ClearHeaders();
        context.Response.ClearContent();
        context.Response.Clear();

        // Do not cache response
        context.Response.Cache.SetCacheability(HttpCacheability.NoCache);

        // Set the content type and encoding for JSON
        context.Response.ContentType = "application/json";
        context.Response.ContentEncoding = Encoding.UTF8;

        string Password = context.Request.Form["upass"].Trim();
        string Username = context.Request.Form["uname"].Trim();

        Response p1 = new Response();
        p1.Id = -1;
        p1.Success = false;
        p1.Message = "login faild. Try in few minutes.";
        WebAdmin adm = WebAdmin.GetAdmin(Username);
        if (adm != null && adm.Password.Equals(Password))
        {
            HttpCookie uName = new HttpCookie("uName");
            HttpCookie uroll = new HttpCookie("uroll");
            uName.Value = adm.Username.ToString();
            context.Response.Cookies.Add(uName);
            uroll.Value = "admin";
            context.Response.Cookies.Add(uroll);
            FormsAuthentication.SetAuthCookie(Username, true);
            p1.Id = 1;
            p1.Success = true;
            p1.Message = "Admin/Default.aspx";
        }
        else
        {
            p1.Message = "authentication is not valid. ";
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