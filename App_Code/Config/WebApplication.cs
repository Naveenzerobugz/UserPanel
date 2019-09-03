using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace WebApplication.Config
{
    /// <summary>
    /// Summary description for WebApplication
    /// </summary>
    public class WebApplication : HttpApplication
    {
        public WebApplication()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        private static object _settingsLock = new object();
        private static object _notificationLock = new object();
        private static SiteSettings _settings;
        private static DateTime _lastNotificationTime;
        private static string _siteUrl;
        public static SiteSettings WebApplicationSettings
        {
            get
            {
                if (_settings == null)
                    WebApplicationSettings = SiteSettings.LoadFromConfiguration();
                return _settings;
            }
            set
            {
                if (value == null)
                    throw new ArgumentNullException(" Web Application cannot be set to null");
                lock (_settingsLock)
                {
                    _settings = value;
                }
            }
        }
    }
}