using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Net;
using System.Text;
using System.Globalization;
using System.Xml;
using System.Data;

/// <summary>
/// Summary description for GeoPlugin
/// </summary>
/// 
namespace WebApplication.Config
{ 
    public class GeoPlugin
    {
        public GeoPlugin()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public static GeoData FindMoreIpDetails(string IPAddress)
        {

  
            string  XMLfile ="http://www.geoplugin.net/xml.gp?ip=" + IPAddress;
            DataSet ds = new DataSet();
            // Create new FileStream with which to read the schema.
            GeoData plugin = new GeoData();
            try
            {
                ds.ReadXml( XMLfile);
            }
            catch(Exception ex)
            {
                plugin.Error = -2; //unable to read xml file
                ds = new DataSet();
            }
            if (ds.Tables.Count>0 && ds.Tables["geoPlugin"].Columns["geoplugin_city"]!=null) // there should be 29 parts
            {
                Double result = 0;
                
                Int32 regionCode = 0;
                plugin.City = ds.Tables[0].Rows[0]["geoplugin_city"].ToString();
                plugin.Region = ds.Tables[0].Rows[0]["geoplugin_region"].ToString(); // and so on till InParts[27]
                plugin.AreaCode = ds.Tables[0].Rows[0]["geoplugin_areaCode"].ToString();
                plugin.DmaCode = ds.Tables[0].Rows[0]["geoplugin_dmaCode"].ToString();
                plugin.CountryCode = ds.Tables[0].Rows[0]["geoplugin_countryCode"].ToString();
                plugin.CountryName = ds.Tables[0].Rows[0]["geoplugin_countryName"].ToString();
                plugin.ContinentCode = ds.Tables[0].Rows[0]["geoplugin_continentCode"].ToString();
            //    plugin.Lattitude = Convert.ToDouble(ds.Tables[0].Rows[0]["geoplugin_latitude"].ToString());
             //   plugin.Longitude = Convert.ToDouble(ds.Tables[0].Rows[0]["geoplugin_longitude"].ToString());
                plugin.RegionCode = Int32.TryParse(ds.Tables[0].Rows[0]["geoplugin_regionCode"].ToString(), out regionCode) ? regionCode : 0;
                plugin.RegionName = ds.Tables[0].Rows[0]["geoplugin_regionName"].ToString(); ;
                plugin.CurrencyCode = ds.Tables[0].Rows[0]["geoplugin_currencyCode"].ToString(); ;
                plugin.CurrencySymbol = ds.Tables[0].Rows[0]["geoplugin_currencySymbol_UTF8"].ToString(); ;
                plugin.CurrencyConverter = Double.TryParse(ds.Tables[0].Rows[0]["geoplugin_currencyConverter"].ToString(), NumberStyles.Float, CultureInfo.GetCultureInfo("EN-us"), out result) ? result : 0;
            }
            else
            {
                plugin.Error = -3;//Error while reading xml file
            }

           

             return plugin;
        }

        public class GeoData
        {
            /*
             * Known Response:
             * geoplugin_city=@0"Apeldoorn"@1geoplugin_region=@2"Gelderland"@3geoplugin_areaCode=@4"0"@5geoplugin_dmaCode=@6"0"
             * @7geoplugin_countryCode=@8"NL"@9geoplugin_countryName=@10"Netherlands"@11geoplugin_continentCode=@12"EU"
             * @13geoplugin_latitude=@14"52.216701507568"@15geoplugin_longitude=@16"5.9667000770569"
             * @17geoplugin_regionCode=@18"03"@19geoplugin_regionName=@20"Gelderland"@21geoplugin_currencyCode=@22"EUR"
             * @23geoplugin_currencySymbol=@24"€"@25geoplugin_currencyConverter=@26"0.6913855239"@27
             */
            public int Error=0;
            public String City;
            public String Region;
            public String AreaCode;
            public String DmaCode;
            public String CountryCode;
            public String CountryName;
            public String ContinentCode;
            public Double Lattitude;
            public Double Longitude;
            public int RegionCode;
            public String RegionName;
            public String CurrencyCode;
            public String CurrencySymbol;
            public Double CurrencyConverter;
            public String ReceivedResponse;

        }
 
    }
}