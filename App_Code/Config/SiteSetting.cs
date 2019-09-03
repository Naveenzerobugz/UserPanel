using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Xml.Serialization;



namespace WebApplication.Config
{
    /// <summary>
    /// Contains the implementation for the site settings.
    /// </summary>
    public class SiteSettings
    {

        private const string XmlConfigFile = "~/App_Data/site-config.xml";


        private bool _WithSetup;
     

        public bool WithSetup
        {
            get
            {
                return _WithSetup;
            }
            set
            {
                lock (this)
                {
                    _WithSetup = value;
                }
            }
        }     
    
        public static SiteSettings LoadFromConfiguration()
        {
            SiteSettings s = LoadFromXml();
            if (s == null)
            {
                s = new SiteSettings();
                s.WithSetup = false;              
                SaveToXml(s);
            }
            return s;
        }

        public static SiteSettings GetSharedSettings()
        {
            return WebApplication.WebApplicationSettings;
        }

        public static bool UpdateSettings(SiteSettings newSettings)
        {
            // write settings to code or db

            // update Application-wide settings, only over-writing settings that Member should edit
            lock (WebApplication.WebApplicationSettings)
            {


                // Site Name
                WebApplication.WebApplicationSettings.WithSetup = newSettings.WithSetup;

                // Serialize to Xml Config File
                return SaveToXml(WebApplication.WebApplicationSettings);
            }
        }

        private static SiteSettings LoadFromXml()
        {
            SiteSettings settings = null;

            HttpContext context = HttpContext.Current;
            if (context != null)
            {
                string configPath = context.Server.MapPath(XmlConfigFile);

                XmlSerializer xml = null;
                FileStream fs = null;

                bool success = false;
                int numAttempts = 0;

                while (!success && numAttempts < 2)
                {
                    try
                    {
                        numAttempts++;
                        xml = new XmlSerializer(typeof(SiteSettings));
                        fs = new FileStream(configPath, System.IO.FileMode.Open, System.IO.FileAccess.Read);
                        settings = xml.Deserialize(fs) as SiteSettings;
                        success = true;
                    }
                    catch (Exception x)
                    {
                        // if an exception is thrown, there might have been a sharing violation;
                        // we wait and try again (max: two attempts)
                        success = false;
                        System.Threading.Thread.Sleep(1000);
                        if (numAttempts == 2)
                            throw new Exception("The Site Configuration could not be loaded.", x);
                    }
                }

                if (fs != null)
                    fs.Close();
            }

            return settings;

        }

        public string GetXml()
        {
            StringBuilder result = new StringBuilder();
            StringWriter s = new StringWriter(result);
            try
            {
                XmlSerializer xml = new XmlSerializer(typeof(SiteSettings));
                xml.Serialize(s, this);
            }
            finally
            {
                s.Close();
            }

            return result.ToString();

        }

        private static bool SaveToXml(SiteSettings settings)
        {
            if (settings == null)
                return false;

            HttpContext context = HttpContext.Current;
            if (context == null)
                return false;

            string configPath = context.Server.MapPath(XmlConfigFile);

            XmlSerializer xml = null;
            System.IO.FileStream fs = null;

            bool success = false;
            int numAttempts = 0;

            while (!success && numAttempts < 2)
            {
                try
                {
                    numAttempts++;
                    xml = new XmlSerializer(typeof(SiteSettings));
                    fs = new FileStream(configPath, FileMode.Create, FileAccess.ReadWrite, FileShare.None);
                    xml.Serialize(fs, settings);
                    success = true;
                }
                catch
                {
                    // if an exception is thrown, there might have been a sharing violation;
                    // we wait and try again (max: two attempts)
                    success = false;
                    System.Threading.Thread.Sleep(1000);
                }
            }

            if (fs != null)
                fs.Close();

            return success;

        }
    }
}

