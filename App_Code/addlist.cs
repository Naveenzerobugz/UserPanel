using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dallayer;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for addlist
/// </summary>
public class addlist : SqlBuilder
{
    public string SYS_ID { get; set; }

    public DataTable Getadlist()
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select row_number() over (order by sys_id)SNO,* from BusinessEntry where isdeleted=0";        
        return GetDataTable(cmd);
    }
    public object Delete()
    {
        try
        {

            DeleteSoft("BusinessEntry", "sys_id", SYS_ID);
           
            return true;

        }
        catch (Exception ex)
        {
            throw;

        }
    }
}