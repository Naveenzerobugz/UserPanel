using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using WebApplication.DAL;
using WebApplication.Config;

/// <summary>
/// Summary description for Users
/// </summary>
namespace UsersApp
{
    public class Users
    {
        public Users()
        {
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

        public static int InsertUser(string username, string mobile, string pass, DateTime RegDate)
        {
            int value = 0;
            string IPAddress = Util.GetUserIP();
            DBAccess db = new DBAccess();
            db.Parameters.Add(new SqlParameter("@Username", username));
            db.Parameters.Add(new SqlParameter("@Mobile", mobile));
            db.Parameters.Add(new SqlParameter("@Password", pass));
            db.Parameters.Add(new SqlParameter("@RegDate", RegDate));
            db.Parameters.Add(new SqlParameter("@IPAddress", ":1"));
        

            using (SqlDataReader dr = db.ExecuteReader("UserInsert") as SqlDataReader)
            {
                while (dr.Read())
                {
                    value = dr.GetInt32(dr.GetOrdinal("ret"));
                }
            }
            return value;
        }

        public static List<Users> GetUserList1(Int32? UserId, string UserName, int Pageindex, int Pagesize)
        {
            DBAccess db = new DBAccess();
            List<Users> balist = new List<Users>();
            db.Parameters.Add(new SqlParameter("@UserId", UserId));
            db.Parameters.Add(new SqlParameter("@UserName", UserName));
            db.Parameters.Add(new SqlParameter("@PageIndex", Pageindex));
            db.Parameters.Add(new SqlParameter("@PageSize", Pagesize));
            using (SqlDataReader dr = db.ExecuteReader("GetUser") as SqlDataReader)
            {
                while (dr.Read())
                {
                    Users a = new Users();
                    a.UserId = dr.GetInt32(dr.GetOrdinal("UserId"));
                    a.Mobile = dr.GetString(dr.GetOrdinal("Mobile"));
                    a.Password = dr.GetString(dr.GetOrdinal("Password"));
                    a.UserName = dr.GetString(dr.GetOrdinal("UserName"));
                    a.UserStatus = dr.GetInt32(dr.GetOrdinal("UserStatus"));
                    a.RegDate = dr.GetDateTime(dr.GetOrdinal("RegDate"));
                    a.Records = dr.GetInt32(dr.GetOrdinal("Records"));
                    balist.Add(a);
                }
                dr.Close();
            }
            return balist;
        }
        public static List<Users> GetUserList(Int32? UserId, string UserName)
        {
            DBAccess db = new DBAccess();
            List<Users> balist = new List<Users>();
           
            db.Parameters.Add(new SqlParameter("@UserName", UserName));
            db.Parameters.Add(new SqlParameter("@Userid", UserId));
          
            using (SqlDataReader dr = db.ExecuteReader("GetUser") as SqlDataReader)
            {
                while (dr.Read())
                {
                    Users a = new Users();
                    a.UserId = dr.GetInt32(dr.GetOrdinal("UserId"));
                    a.Mobile = dr.GetString(dr.GetOrdinal("Mobile"));
                    a.Password = dr.GetString(dr.GetOrdinal("Password"));
                    a.UserName = dr.GetString(dr.GetOrdinal("UserName"));
                    a.UserStatus = dr.GetInt32(dr.GetOrdinal("UserStatus"));
                    a.RegDate = dr.GetDateTime(dr.GetOrdinal("RegDate"));
                 //   a.Records = dr.GetInt32(dr.GetOrdinal("Records"));
                    balist.Add(a);
                }
                dr.Close();
            }
            return balist;
        }
        public static Users GetUser(string UserName)// Get by username
        {
            List<Users> mlist = new List<Users>();
            mlist = Users.GetUserList(01, UserName);
            if (mlist.Count > 0)
            {
                return mlist[0] as Users;
            }
            else
                return null;
        }
        public static Users GetUserid(Int32 id)// Get by userid
        {
            string UserName="";
            List<Users> mlist = new List<Users>();
            mlist = Users.GetUserList(id,UserName);
            if (mlist.Count > 0)
            {
                return mlist[0] as Users;
            }
            else
                return null;
        }
        public static int ApproveUser(Int64 User_id, int status)
        {
            DBAccess db = new DBAccess();
            string IP = Util.GetUserIP();
            db.Parameters.Add(new SqlParameter("@User_id", User_id));
            db.Parameters.Add(new SqlParameter("@status", status));
            return db.ExecuteNonQuery("UserApproval");
        }

        public static int UpdateUserProfile(Int32 id, string username, string mobile)
        {
            int value = 0;
            string IPAddress = Util.GetUserIP();
            DBAccess db = new DBAccess();

            db.Parameters.Add(new SqlParameter("@id", id));
            db.Parameters.Add(new SqlParameter("@Username", username));
            db.Parameters.Add(new SqlParameter("@Mobile", mobile));

            using (SqlDataReader dr = db.ExecuteReader("UpdateUserProfile") as SqlDataReader)
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