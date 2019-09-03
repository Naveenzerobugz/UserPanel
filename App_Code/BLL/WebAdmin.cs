using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication.DAL;
using WebApplication.Config;
using System.Data;
using System.Data.SqlClient;
using UsersApp;

namespace WebApplication.Membership
{

    /// <summary>
    /// Summary description for Admin
    /// </summary>
    public class WebAdmin
    {
        public WebAdmin()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public int Id { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public DateTime CreateDate { get; set; }
        public DateTime LastLoginDate { get; set; }
        public string LastLoginIP { get; set; }
        public string Role { get; set; }
        public int ActionPin { get; set; }



    

     

        public static WebAdmin GetAdmin(string Username)
        {
            DBAccess db = new DBAccess();
            db.Parameters.Add(new SqlParameter("@UserName", Username));
            WebAdmin a = new WebAdmin();
            using (SqlDataReader dr = db.ExecuteReader("WebAdminByUser") as SqlDataReader)
            {
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        a.Id = dr.GetInt32(dr.GetOrdinal("Id"));
                        a.Username = dr.GetString(dr.GetOrdinal("Username"));
                        a.Password = dr.GetString(dr.GetOrdinal("Password"));
                        a.Email = dr.GetString(dr.GetOrdinal("Email"));
                        a.CreateDate = dr.GetDateTime(dr.GetOrdinal("CreateDate"));
                        a.LastLoginDate = dr.GetDateTime(dr.GetOrdinal("LastLoginDate"));
                        a.LastLoginIP = dr.GetString(dr.GetOrdinal("LastLoginIP"));
                        a.Role = dr.GetString(dr.GetOrdinal("Role"));
                        a.ActionPin = dr.GetInt32(dr.GetOrdinal("ActionPin"));
                    }
                    dr.Close();
                }
                else
                    dr.Close();
            }
            if (!string.IsNullOrEmpty(a.Username))
                return a;
            else
                return null;
        }



     
    }
}
