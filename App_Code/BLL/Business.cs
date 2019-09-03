using System;
using System.Data.SqlClient;
using WebApplication.DAL;
using WebApplication.Config;
using UsersApp;
using System.Collections.Generic;
using System.Configuration;
using System.Data;

/// <summary>
/// Summary description for Business
/// </summary>
/// 
namespace BusinessController
{
    public class Business
    {
        public Business()
        {
            ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            sqlcon = null;
            //
            // TODO: Add constructor logic here
            //

        }
        public Int32 UserId { get; set; }
        public Int32 IPAddress { get; set; }
        public int Records { get; set; }
        public string Action { get; set; }
        public int UserStatus { get; set; }
        public DateTime RegDate { get; set; }
        public string Status { get; set; }
        public string Country { get; set; }
        public string UserName { get; set; }
        public string Category { get; set; }
        public string Title { get; set; }
        public string Tagline { get; set; }
        public string City { get; set; }
        public string Address { get; set; }
        public string Locality { get; set; }
        public string State { get; set; }
        public string Mobile { get; set; }
        public string Password { get; set; }
        public string Zipcode { get; set; }
        public string Email { get; set; }
        public string Picpath { get; set; }

        public string Website { get; set; }

        public string Fb { get; set; }
        public string Linkdin { get; set; }
        public string Twitter { get; set; }
        public string Googleplus { get; set; }
        public string Description { get; set; }
        public string Minprice { get; set; }
        public string Maxprice { get; set; }
        //public string Day { get; set; }

        //public TimeSpan Open { get; set; }
        //public TimeSpan Close { get; set; }
        public Int32 Sid { get; set; }

        public string Mondayopen { get; set; }
        public string Mondayclose { get; set; }
        public string Tuesdayopen { get; set; }
        public string Tuesdayclose { get; set; }
        public string Wednesdayopen { get; set; }
        public string Wednesdayclose { get; set; }
        public string Thursdayopen { get; set; }
        public string Thursdayclose { get; set; }
        public string Fridayopen { get; set; }
        public string Fridayclose { get; set; }
        public string Saturdayopen { get; set; }
        public string Saturdayclose { get; set; }
        public string Sundayopen { get; set; }
        public string Sundayclose { get; set; }
        public string Video { get; set; }

        public string Amenities1 { get; set; }
        public string Amenities2 { get; set; }
        public string Amenities3 { get; set; }
        public string Amenities4 { get; set; }
        public string Amenities5 { get; set; }
        public string Amenities6 { get; set; }
        public string Amenities7 { get; set; }
        public string imgPath { get; set; }

        public int Insertdata(Business business)
        {
            try
            {

          
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@title",business.Title);
            cmd.Parameters.AddWithValue("@tagline",business.Tagline);
            cmd.Parameters.AddWithValue("@address", business.Address);
            cmd.Parameters.AddWithValue("@country", business.Country);
            cmd.Parameters.AddWithValue("@state", business.State);
            cmd.Parameters.AddWithValue("@city", business.City);
            cmd.Parameters.AddWithValue("@zipcode", business.Zipcode);
            cmd.Parameters.AddWithValue("@mob", business.Mobile);
            cmd.Parameters.AddWithValue("@email", business.Email);
            cmd.Parameters.AddWithValue("@website", business.Website);
            cmd.Parameters.AddWithValue("@fb", business.Fb);
            cmd.Parameters.AddWithValue("@linkdin", business.Linkdin);
            cmd.Parameters.AddWithValue("@twitter", business.Twitter);
            cmd.Parameters.AddWithValue("@googleplus", business.Googleplus);
            cmd.Parameters.AddWithValue("@description", business.Description);
            cmd.Parameters.AddWithValue("@category", business.Category);
            cmd.Parameters.AddWithValue("@amenities1", business.Amenities1);
            cmd.Parameters.AddWithValue("@amenities2", business.Amenities2);
            cmd.Parameters.AddWithValue("@amenities3", business.Amenities3);
            cmd.Parameters.AddWithValue("@amenities4", business.Amenities4);
            cmd.Parameters.AddWithValue("@amenities5", business.Amenities5);
            cmd.Parameters.AddWithValue("@amenities6", business.Amenities6);
            cmd.Parameters.AddWithValue("@amenities7", business.Amenities7);
            cmd.Parameters.AddWithValue("@mondayopen", business.Mondayopen);
            cmd.Parameters.AddWithValue("@mondayclose", business.Mondayclose);
            cmd.Parameters.AddWithValue("@tuesdayopen", business.Tuesdayopen);
            cmd.Parameters.AddWithValue("@tuesdayclose", business.Tuesdayclose);
            cmd.Parameters.AddWithValue("@wednesdayopen", business.Wednesdayopen);
            cmd.Parameters.AddWithValue("@wednesdayclose", business.Wednesdayclose);
            cmd.Parameters.AddWithValue("@thursdayopen", business.Thursdayopen);
            cmd.Parameters.AddWithValue("@thursdayclose", business.Thursdayclose);
            cmd.Parameters.AddWithValue("@Fridayopen", business.Fridayopen);
            cmd.Parameters.AddWithValue("@Fridayclose", business.Fridayclose);
            cmd.Parameters.AddWithValue("@saturdayopen", business.Saturdayopen);
            cmd.Parameters.AddWithValue("@saturdayclose", business.Saturdayclose);
            cmd.Parameters.AddWithValue("@sundayopen", business.Sundayopen);
            cmd.Parameters.AddWithValue("@sundayclose", business.Sundayclose);
            cmd.Parameters.AddWithValue("@minprice", business.Minprice);
            cmd.Parameters.AddWithValue("@maxprice", business.Maxprice);
            cmd.Parameters.AddWithValue("@video", business.Video);
                cmd.Parameters.AddWithValue("@imgpath", business.imgPath);
                cmd.CommandText = @"insert into BusinessEntry(title,tagline,address,country,state,city,zipcode,mob,email,website,fb,linkdin,twitter,googleplus,description,category,amenities1,amenities2,amenities3,amenities4,amenities5,amenities6,amenities7,
mondayopen,mondayclose,tuesdayopen,tuesdayclose,wednesdayopen,wednesdayclose,thursdayopen,thursdayclose,Fridayopen,Fridayclose,saturdayopen,saturdayclose,sundayopen,sundayclose,minprice,maxprice,video,imgpath)
                values(@title,@tagline,@address,@country,@state,@city,@zipcode,@mob,@email,@website,@fb,@linkdin,@twitter,@googleplus,@description,@category,@amenities1,@amenities2,@amenities3,@amenities4,@amenities5,@amenities6,@amenities7,
@mondayopen,@mondayclose,@tuesdayopen,@tuesdayclose,@wednesdayopen,@wednesdayclose,@thursdayopen,@thursdayclose,@Fridayopen,@Fridayclose,@saturdayopen,@saturdayclose,@sundayopen,@sundayclose,@minprice,@maxprice,@video,@imgpath)";
            ExecuteNonQuery(cmd);
                return 1;
            }
            catch(Exception ex)
            {
                throw;
            }
          
        }
        Response p1 = new Response();

        public int ExecuteNonQuery(SqlCommand cmd)
        {
            this.OpenConnection();
            try
            {
                cmd.Connection = sqlcon;
                return cmd.ExecuteNonQuery();
            }
            catch
            {
                throw;
            }
            finally
            {
                CloseConnection();
            }
        }

        public static string ConnectionString;
        private SqlConnection sqlcon;
     

        private void OpenConnection()
        {
            InitiateConnection();
            if (sqlcon.State == ConnectionState.Closed)
            {
                sqlcon.Open();
            }
        }
        private void InitiateConnection()
        {
            sqlcon = new SqlConnection(ConnectionString);
        }

        /// <summary>
        /// Close the database connection
        /// </summary>
        public void CloseConnection()
        {
            if (sqlcon.State == ConnectionState.Open)
            {
                sqlcon.Close();
                sqlcon.Dispose();
            }
        }
        public static int InserBusinessList(string title, string tagline, string category, string address, string country,string city, string state, string zipcode, string mob, string email, string website, string fb, string linkdin, string twitter, string googleplus, string description, string minprice, string maxprice, string video, string picpath, DateTime RegDate)
        {
            int value = 0;
            string IPAddress = Util.GetUserIP();
            DBAccess db = new DBAccess();
            db.Parameters.Add(new SqlParameter("@Title", title));
            db.Parameters.Add(new SqlParameter("@Tagline", tagline));
            db.Parameters.Add(new SqlParameter("@Category", category));
            db.Parameters.Add(new SqlParameter("@Address", address));
            db.Parameters.Add(new SqlParameter("@Country", country));
            db.Parameters.Add(new SqlParameter("@City", city));
            db.Parameters.Add(new SqlParameter("@State", state));
            db.Parameters.Add(new SqlParameter("@Zipcode", zipcode));
            db.Parameters.Add(new SqlParameter("@Mobile", mob));
            db.Parameters.Add(new SqlParameter("@Email", email));
            db.Parameters.Add(new SqlParameter("@Website", website));
            db.Parameters.Add(new SqlParameter("@Fb", fb));
            db.Parameters.Add(new SqlParameter("@Linkdin", linkdin));
            db.Parameters.Add(new SqlParameter("@Twitter", twitter));
            db.Parameters.Add(new SqlParameter("@Googleplus", googleplus));
            db.Parameters.Add(new SqlParameter("@Description", description));
            db.Parameters.Add(new SqlParameter("@Minprice", minprice));
            db.Parameters.Add(new SqlParameter("@Maxprice", maxprice));
            db.Parameters.Add(new SqlParameter("@Video", video));
            db.Parameters.Add(new SqlParameter("@Picpath", picpath));
            db.Parameters.Add(new SqlParameter("@RegDate", RegDate));
            db.Parameters.Add(new SqlParameter("@IPAddress", ":1"));
            using (SqlDataReader dr = db.ExecuteReader("InsertList") as SqlDataReader)
            {
                while (dr.Read())
                {
                    value = dr.GetInt32(dr.GetOrdinal("ret"));
                }
            }
            return value;
        }

        public static List<Business> GetBusinessList(Int32? id, int? status, int Pageindex, int Pagesize)
        {
            DBAccess db = new DBAccess();
            List<Business> balist = new List<Business>();
            db.Parameters.Add(new SqlParameter("@id", id));
            db.Parameters.Add(new SqlParameter("@status", status));
            db.Parameters.Add(new SqlParameter("@PageIndex", Pageindex));
            db.Parameters.Add(new SqlParameter("@PageSize", Pagesize));
            using (SqlDataReader dr = db.ExecuteReader("GetBusinessList") as SqlDataReader)
            {
                while (dr.Read())
                {
                    Business a = new Business();
                    a.UserId = dr.GetInt32(dr.GetOrdinal("listId"));
                    a.Title = dr.GetString(dr.GetOrdinal("Title"));
                    a.Tagline = dr.GetString(dr.GetOrdinal("Tagline"));
                    a.Category = dr.GetString(dr.GetOrdinal("Category"));
                    a.Address = dr.GetString(dr.GetOrdinal("Address"));
                    a.City = dr.GetString(dr.GetOrdinal("City"));
                    a.State = dr.GetString(dr.GetOrdinal("State"));
                    a.Zipcode = dr.GetString(dr.GetOrdinal("Zipcode"));
                    a.Website = dr.GetString(dr.GetOrdinal("Website"));
                    a.Fb = dr.GetString(dr.GetOrdinal("Fb"));
                    a.Email = dr.GetString(dr.GetOrdinal("Email"));
                    a.Mobile = dr.GetString(dr.GetOrdinal("Mobile"));
                    a.Linkdin = dr.GetString(dr.GetOrdinal("Linkdin"));
                    a.Twitter = dr.GetString(dr.GetOrdinal("Twitter"));
                    a.Googleplus = dr.GetString(dr.GetOrdinal("Googleplus"));
                    a.Description = dr.GetString(dr.GetOrdinal("Description"));
                    a.Minprice = dr.GetString(dr.GetOrdinal("Minprice"));
                    a.Maxprice = dr.GetString(dr.GetOrdinal("Maxprice"));
                    //a.Day = dr.GetString(dr.GetOrdinal("Day"));
                    //a.Open = dr.GetTimeSpan(dr.GetOrdinal("Open"));
                    //a.Close = dr.GetTimeSpan(dr.GetOrdinal("Close"));
                    //a.Sid = dr.GetInt32(dr.GetOrdinal("Sid"));                             
                    a.Picpath = dr.GetString(dr.GetOrdinal("Picpath"));
                    if (!dr.IsDBNull(dr.GetOrdinal("Video")))
                    {
                        a.Video = dr.GetString(dr.GetOrdinal("Video"));
                    }
                    a.RegDate = dr.GetDateTime(dr.GetOrdinal("RegDate"));
                    a.Records = dr.GetInt32(dr.GetOrdinal("Records"));

                    balist.Add(a);
                }
                dr.Close();
            }
            return balist;
        }

        //public static List<Business> GetBusinessTime(Int32? id, int Pageindex, int Pagesize)
        //{
        //    DBAccess db = new DBAccess();
        //    List<Business> balist = new List<Business>();
        //    db.Parameters.Add(new SqlParameter("@BusinessId", id));

        //    db.Parameters.Add(new SqlParameter("@PageIndex", Pageindex));
        //    db.Parameters.Add(new SqlParameter("@PageSize", Pagesize));
        //    using (SqlDataReader dr = db.ExecuteReader("GetBusinessTime") as SqlDataReader)
        //    {
        //        while (dr.Read())
        //        {
        //            Business a = new Business();
        //            a.UserId = dr.GetInt32(dr.GetOrdinal("BusinessId"));
        //            a.Sid = dr.GetInt32(dr.GetOrdinal("Sid"));
        //            a.Day = dr.GetString(dr.GetOrdinal("Day"));
        //            a.Open = dr.GetTimeSpan(dr.GetOrdinal("Open"));
        //            a.Close = dr.GetTimeSpan(dr.GetOrdinal("Close"));
        //            a.Records = dr.GetInt32(dr.GetOrdinal("Records"));
        //            balist.Add(a);
        //        }
        //        dr.Close();
        //    }
        //    return balist;
        //}
        public static Business GetBusinessList(Int32 id)// Get by userid
        {
            List<Business> mlist = new List<Business>();
            mlist = Business.GetBusinessList(id, null, 0, 1);
            if (mlist.Count > 0)
            {
                return mlist[0] as Business;
            }
            else
                return null;
        }
        public static List<Business> GetListAllImage(Int32? id, int Pageindex, int Pagesize)
        {
            DBAccess db = new DBAccess();
            List<Business> balist = new List<Business>();
            db.Parameters.Add(new SqlParameter("@listId", id));
            db.Parameters.Add(new SqlParameter("@PageIndex", Pageindex));
            db.Parameters.Add(new SqlParameter("@PageSize", Pagesize));
            using (SqlDataReader dr = db.ExecuteReader("GetImageList") as SqlDataReader)
            {
                while (dr.Read())
                {
                    Business a = new Business();
                    a.UserId = dr.GetInt32(dr.GetOrdinal("listId"));
                    a.Picpath = dr.GetString(dr.GetOrdinal("ImgPath"));
                    a.Records = dr.GetInt32(dr.GetOrdinal("Records"));
                    balist.Add(a);
                }
                dr.Close();
            }
            return balist;
        }
     
        //delete

        public static int DeleteList(Int64 Id)
        {

            DBAccess db = new DBAccess();
            db.Parameters.Add(new SqlParameter("@Id", Id));

            return db.ExecuteNonQuery("DeleteList");
        }
        //..................Update

        public static int UpdateList(Int32 id, string title, string tagline, string category, string address, string city, string state, string zipcode, string mob, string email, string website, string fb, string linkdin, string twitter, string googleplus, string description, string minprice, string maxprice, string mondayopen, string mondayclose, string tuesdayopen, string tuesdayclose, string wednesdayopen, string wednesdayclose, string thursdayopen, string thursdayclose, string fridayopen, string fridayclose, string saturdayopen, string saturdayclose, string sundayopen, string sundayclose, string video, DateTime RegDate)
        {
            int value = 0;
            string IPAddress = Util.GetUserIP();
            DBAccess db = new DBAccess();

            db.Parameters.Add(new SqlParameter("@id", id));
            db.Parameters.Add(new SqlParameter("@Title", title));
            db.Parameters.Add(new SqlParameter("@Tagline", tagline));
            db.Parameters.Add(new SqlParameter("@Category", category));
            db.Parameters.Add(new SqlParameter("@Address", address));
            db.Parameters.Add(new SqlParameter("@City", city));
            db.Parameters.Add(new SqlParameter("@State", state));
            db.Parameters.Add(new SqlParameter("@Zipcode", zipcode));
            db.Parameters.Add(new SqlParameter("@Mobile", mob));
            db.Parameters.Add(new SqlParameter("@Email", email));
            db.Parameters.Add(new SqlParameter("@Website", website));
            db.Parameters.Add(new SqlParameter("@Fb", fb));
            db.Parameters.Add(new SqlParameter("@Linkdin", linkdin));
            db.Parameters.Add(new SqlParameter("@Twitter", twitter));
            db.Parameters.Add(new SqlParameter("@Googleplus", googleplus));
            db.Parameters.Add(new SqlParameter("@Description", description));
            db.Parameters.Add(new SqlParameter("@Minprice", minprice));
            db.Parameters.Add(new SqlParameter("@Maxprice", maxprice));
            //db.Parameters.Add(new SqlParameter("@Mondayopen", mondayopen));
            //db.Parameters.Add(new SqlParameter("@Mondayclose", mondayclose));
            //db.Parameters.Add(new SqlParameter("@Tuesdayopen", tuesdayopen));
            //db.Parameters.Add(new SqlParameter("@Tuesdayclose", tuesdayclose));
            //db.Parameters.Add(new SqlParameter("@Wednesdayopen", wednesdayopen));
            //db.Parameters.Add(new SqlParameter("@Wednesdayclose", wednesdayclose));
            //db.Parameters.Add(new SqlParameter("@Thursdayopen", thursdayopen));
            //db.Parameters.Add(new SqlParameter("@Thursdayclose", thursdayclose));
            //db.Parameters.Add(new SqlParameter("@Fridayopen", fridayopen));
            //db.Parameters.Add(new SqlParameter("@Fridayclose", fridayclose));
            //db.Parameters.Add(new SqlParameter("@Saturdayopen", saturdayopen));
            //db.Parameters.Add(new SqlParameter("@Saturdayclose", saturdayclose));
            //db.Parameters.Add(new SqlParameter("@Sundayopen", sundayopen));
            //db.Parameters.Add(new SqlParameter("@Sundayclose", sundayclose));
            db.Parameters.Add(new SqlParameter("@Video", video));
            db.Parameters.Add(new SqlParameter("@RegDate", RegDate));
            db.Parameters.Add(new SqlParameter("@IPAddress", ":1"));
            using (SqlDataReader dr = db.ExecuteReader("UpdateList") as SqlDataReader)
            {
                while (dr.Read())
                {
                    value = dr.GetInt32(dr.GetOrdinal("ret"));
                }
            }
            return value;
        }
        public static int InsertSliderImage(Int32 lid, string picpath)
        {
            int value = 0;
            string IPAddress = Util.GetUserIP();
            DBAccess db = new DBAccess();
            db.Parameters.Add(new SqlParameter("@listId", lid));
            db.Parameters.Add(new SqlParameter("@ImgPath", picpath));
            using (SqlDataReader dr = db.ExecuteReader("InsertListImage") as SqlDataReader)
            {
                while (dr.Read())
                {
                    value = dr.GetInt32(dr.GetOrdinal("ret"));
                }
            }
            return value;
        }

    }
}