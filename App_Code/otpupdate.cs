using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dallayer;
using System.Data.SqlClient;
/// <summary>
/// Summary description for otpupdate
/// </summary>
/// 
public class otpupdate:SqlBuilder
{
    

    public object add(string username)
    {
        try
        {
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = @"update Users SET otpStatus=1 where Username=@username";
            cmd.Parameters.AddWithValue("@username", username);
            ExecuteNonQuery(cmd);

            return true;
        }
        catch(Exception ex)
        {
            return false;
        }
    }
    
}
