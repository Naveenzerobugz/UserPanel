<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="System.Net.Mail" %>
<%@ Import Namespace="System.Web.Security" %>
<%@ Import Namespace="AppManager" %>
<script RunAt="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        Application["OnlineMember"] = 0;

        RouteConfig.RegisterRoutes(RouteTable.Routes);
    }

    protected void Application_BeginRequest(Object sender, EventArgs e)
    {
        //HttpContext.Current.Response.AddHeader("x-frame-options", "DENY");
        //if (HttpContext.Current.Request.IsSecureConnection.Equals(false) && HttpContext.Current.Request.IsLocal.Equals(false))
        //{
        //  //  Response.Redirect("https://" + Request.ServerVariables["HTTP_HOST"]
        // // + HttpContext.Current.Request.RawUrl);
        //}
    }


    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started
        Application.Lock();
        Application["OnlineMember"] = (int)Application["OnlineMember"] + 1;
        Application.UnLock();
    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.
        Application.Lock();
        Application["OnlineMember"] = (int)Application["OnlineMember"] - 1;
        Application.UnLock();
    }

    public void Application_Error(object sender, EventArgs e)
    {
        // Fires when an error occurs
        bool sendMailOnErrors = false;
        if (sendMailOnErrors)
        {
            string subject = "Error in page " + Request.Url.ToString();
            StringBuilder errorMessage = new StringBuilder();
            // The error that occurred in the web page is wrapped by a generic System.Web.HttpUnhandledException exception
            // Therefore we need to get at the true exception, available on the InnerException
            Exception myException = HttpContext.Current.Server.GetLastError();
            if (myException != null)
            {
                while (myException != null)
                {
                    errorMessage.Append("<strong>Message</strong><br />" + myException.Message + "<br /><br />");
                    errorMessage.Append("<strong>Source</strong><br />" + myException.Source + "<br /><br />");
                    errorMessage.Append("<strong>Target site</strong><br />" + myException.TargetSite.ToString() + "<br /><br />");
                    errorMessage.Append("<strong>Stack trace</strong><br />" + myException.StackTrace + "<br /><br />");
                    errorMessage.Append("<strong>ToString()</strong><br />" + myException.ToString() + "<br /><br />");
                    myException = myException.InnerException;
                }
            }
            else
            {
                errorMessage.Append("No exception information available.");
            }

         
        }
    }


    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

</script>
