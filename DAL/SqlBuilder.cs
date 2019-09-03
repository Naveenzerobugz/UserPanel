using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
  
    public class SqlBuilder : SqlHelper
    {
       
        private DataTable dtlParams = null;

        #region Generate Insert Update Query Operation

        /// <summary>
        /// Add the parameters for Insert or Update
        /// </summary>
        /// <param name="columnName">Column Name</param>
        /// <param name="columnValue">Column Value</param>
        protected void AddColumnParameter(string columnName, object columnValue)
        {
            if (this.dtlParams == null)
            {
                this.dtlParams = new DataTable();
            }

            if (this.dtlParams.Columns.Count == 0)
            {
                this.dtlParams.Columns.Add("ColumnName", typeof(string));
                this.dtlParams.Columns.Add("ColumnValue", typeof(string));
            }

            this.dtlParams.Rows.Add(columnName, columnValue.ToString());
        }

        /// <summary>
        /// Choose the operation for insert or update based on key value.
        /// </summary>
        /// <param name="tableName">Table name</param>
        /// <param name="keyField">Insert - null : Update - Key field </param>
        /// <param name="keyValue">Insert - null : Update - Key value</param>
        /// <param name="isLogHistory">Set true if log this change</param>
        /// <returns>return the key value</returns>
        protected string InsertUpdate(string tableName, string keyField, string keyValue, bool isLogHistory = false)
        {
            try
            {
                if (string.IsNullOrEmpty(keyValue))
                {
                    keyValue = InsertEntry(tableName);
                }
                else
                {
                    keyValue = UpdateEntry(tableName, keyField, keyValue, isLogHistory);
                }

                return keyValue;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// Insert Entry
        /// </summary>
        /// <param name="table_name">Table Name</param>
        /// <returns>Returns the key value based on number of rows affected</returns>
        private string InsertEntry(string tableName)
        {
            SqlCommand cmd = new SqlCommand();
            try
            {
                cmd.CommandType = CommandType.Text;

                string sqlcol = string.Empty;
                string sqlpara = string.Empty;
                foreach (DataRow dr in this.dtlParams.Rows)
                {
                    string colname = dr["ColumnName"].ToString();

                    sqlcol += ((sqlcol != string.Empty) ? "," : string.Empty) + colname;
                    sqlpara += ((sqlpara != string.Empty) ? "," : string.Empty) + "@" + colname;

                    if (dr["ColumnValue"] != null)
                        cmd.Parameters.AddWithValue("@" + colname, dr["ColumnValue"].ToString());
                    else
                        cmd.Parameters.AddWithValue("@" + colname, DBNull.Value);
                }


                string keyvalue = "";
                
                cmd.CommandText = "Insert into " + tableName + "\r\n (" + sqlcol + ") Values \r\n (" + sqlpara + ")";
                int rowsAffected = ExecuteNonQuery(cmd, tableName, ref keyvalue);

                //// Clear the parameters...
                this.dtlParams = null;

                //// Returns the 
                if (rowsAffected > 0)
                {
                    return keyvalue;
                }
                else
                {
                    return string.Empty;
                }
            }
            catch (SqlException Sqlex)
            {
                throw Sqlex;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// Update Entry
        /// </summary>
        /// <param name="table_name">Table Name</param>
        /// <param name="keyfield">Key field</param>
        /// <param name="keyvalue">Record ID</param>
        /// <param name="isLogHistory">Set true if log this change</param>
        /// <returns>Returns the key value based on number of rows affected</returns>
        private string UpdateEntry(string tableName, string keyfield, string keyvalue, bool isLogHistory = false)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;

            string sqlcolvalue = string.Empty;
            foreach (DataRow dr in this.dtlParams.Rows)
            {
                string colname = dr["ColumnName"].ToString();
                if (colname.ToUpper() == keyfield.ToUpper())
                {
                    continue;
                }

                sqlcolvalue += ((sqlcolvalue != string.Empty) ? "," : string.Empty) + colname + "=@" + colname;
                cmd.Parameters.AddWithValue("@" + colname, dr["ColumnValue"].ToString());
            }

            ////Insert to Logs...
            if (isLogHistory)
            {
                this.UpdateLogs(tableName, keyfield, keyvalue);
            }

            cmd.CommandText = "Update " + tableName + " Set " + sqlcolvalue + " Where " + keyfield + " = @" + keyfield;
            cmd.Parameters.AddWithValue("@" + keyfield, keyvalue);
            int rowsAffected = this.ExecuteNonQuery(cmd);

            //// Clear the parameters...
            this.dtlParams = null;

            //// Returns the keyvalue based on number of rows affected
            if (rowsAffected > 0)
            {
                return keyvalue;
            }
            else
            {
                return string.Empty;
            }
        }

        /// <summary>
        /// Soft Delete the record.
        /// </summary>
        /// <param name="tableName">Table Name</param>
        /// <param name="keyField">Key field</param>
        /// <param name="keyValue">Key value</param>
        /// <returns>Returns the number of rows affected</returns>
        protected int DeleteSoft(string tableName, string keyField, string keyValue)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Update " + tableName + " Set ISDELETED = 1 Where 1 =1 and " + keyField + "=@" + keyField;
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@" + keyField, keyValue);
            int rowsAffected = this.ExecuteNonQuery(cmd);
            return rowsAffected;
        }



        /// <summary>
        /// Insert the log changes into database.
        /// </summary>
        /// <param name="tableName">Table Name</param>
        /// <param name="keyField">Key field</param>
        /// <param name="keyValue">Record ID</param>
        private void UpdateLogs(string tableName, string keyField, string keyValue)
        {
            try
            {
                SqlCommand cmdlog = new SqlCommand();
                cmdlog.CommandType = CommandType.Text;
                cmdlog.CommandText = "INSERT INTO Log_" + tableName + " \r\n SELECT * FROM " + tableName + " WHERE " + keyField + " = @" + keyField;
                cmdlog.Parameters.AddWithValue("@" + keyField, keyValue);
                this.ExecuteNonQuery(cmdlog);
            }
            catch
            {
                throw;
            }
        }
        #endregion


    }
}