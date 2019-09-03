
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace BAL
{

    public class BLL_Entry : CRUDOperations
    {
        public sqlPager Pager { get; set; }

        public BLL_Entry()
        {
            Pager = new sqlPager();
            TABLENAME = "MASTER_INVOICE_ENTRY";
   
            KEYFIELD = "SYS_ID";
         }
        public override object AddOverallAddOrEditOrEdit()
        {
            AddColumnParameter("COUNT_SYS_ID", NAME);
            AddColumnParameter("HSN_CODE", SYS_ID);
            AddColumnParameter("RATE", MOBILE);
            AddColumnParameter("QTY", MOBILE);
            AddColumnParameter("TOTAL_AMOUNT", MOBILE);

            try
            {
                BeginTransaction();

                InsertUpdate(TABLENAME, KEYFIELD, SYS_ID);
                return true;

            }
            catch (Exception)
            {

                RollbackTransaction();
                return false;
            }
            finally
            {
                CommitTransaction();
            }
        }

        public override object Delete()
        {
            throw new NotImplementedException();
        }

        public override SqlDataReader GetReader()
        {
            throw new NotImplementedException();
        }

        public override object GetScalarValue()
        {
            throw new NotImplementedException();
        }

        public override DataSet PageGetDataSet()
        {
            throw new NotImplementedException();
        }

        public override DataTable PageGetDataTable()
        {
            throw new NotImplementedException();
        }
    }
    public class CommonProperties : SqlBuilder
    {
        public string TABLENAME { get; set; }
        public string USERTABLENAME { get; set; }
        public string UCTABLENAME { get; set; }
        public string BALANCETABLENAME { get; set; }
        public string SUBTABLENAME { get; set; }
        public string SUBTABLENAME1 { get; set; }
        public string BALANCEDELETEID { get; set; }
        public string SUBTABLENAME2 { get; set; }
        public string SUBTABLENAME3 { get; set; }
        public string INVOICE_SYS_ID { get; set; }
        public string KEYFIELD { get; set; }
        public string KEYFIELD1 { get; set; }
        public string KEYFIELD2 { get; set; }
        public string KEYFIELD3 { get; set; }
        public string KEYFIELD4 { get; set; }
        public string SYS_ID { get; set; }
        public object NAME { get; set; }
        public object MOBILE { get; set; }
        public object EMAIL { get; set; }
        public object ADDR { get; set; }
        public object CITY { get; set; }
        public object STATE { get; set; }
        public object PINCODE { get; set; }
        public object TIN { get; set; }
        public object GSTNO { get; set; }
        public object CONFIRMATION_NO { get;set;}

        public DataTable BindCity(bool isHeader = false)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = ((isHeader) ? " SELECT '0' SYS_ID, '[SELECT]' DISPLAY_NAME UNION ALL \r\n" : "") +
                                "SELECT SYS_ID,DISPLAY_NAME FROM dbo.CITY_LIST()";
            cmd.Parameters.Clear();
            return GetDataTable(cmd);
        }

        public DataTable BindState(bool isHeader = false)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = ((isHeader) ? " SELECT '0' SYS_ID, '[SELECT]' DISPLAY_NAME UNION ALL \r\n" : "") +
                                "SELECT SYS_ID,DISPLAY_NAME FROM dbo.STATE_LIST()";
            cmd.Parameters.Clear();
            return GetDataTable(cmd);
        }
        public DataTable BindCountry(bool isHeader = false)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = ((isHeader) ? " SELECT '0' SYS_ID, '[SELECT]' DISPLAY_NAME UNION ALL \r\n" : "") +
                                "SELECT SYS_ID,DISPLAY_NAME FROM dbo.COUNTRY_LIST()";
            cmd.Parameters.Clear();
            return GetDataTable(cmd);
        }




    }
    public abstract class CRUDOperations : CommonProperties
    {
        public abstract object AddOverallAddOrEditOrEdit();

        public abstract object Delete();

        public abstract object GetScalarValue();

        public abstract SqlDataReader GetReader();

        public abstract DataSet PageGetDataSet();

        public abstract DataTable PageGetDataTable();

    }
    public class sqlPager
    {
        public int PageNumber { get; set; }
        public int PageSize { get; set; }
        public string OrderBy { get; set; }
        public string OrderType { get; set; }
        public string SearchBy { get; set; }
        public string SearchText { get; set; }
        public int ItemCount { get; set; }
        public string Subscription_Id { get; set; }
        public string Company_Id { get; set; }
        public string user_sys_id { get; set; }
    }
    public class SqlHelper
    {
        public static string ConnectionString;
        private SqlConnection sqlcon;

        #region Properties
        public string ValidationMessage { get; set; }
        #endregion

        #region constructor
        public SqlHelper()
        {
            ConnectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            sqlcon = null;
        }
        #endregion

        #region Connection Operations
        /// <summary>
        /// Initiate the connection string to the SqlConnection 
        /// </summary>
        private void InitiateConnection()
        {
            sqlcon = new SqlConnection(ConnectionString);
        }

        /// <summary>
        /// Open the database connection
        /// </summary>
        private void OpenConnection()
        {
            InitiateConnection();
            if (sqlcon.State == ConnectionState.Closed)
            {
                sqlcon.Open();
            }
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
        #endregion
        public void Dispose()
        {
            try
            {
                if (this.sqlcon.State == ConnectionState.Open)
                {
                    this.sqlcon.Close();
                }

                this.sqlcon.Dispose();
            }
            catch
            {
                ////
            }

            GC.SuppressFinalize(this);
        }
        #region TCL Operation
        /// <summary>
        /// Marks the starting point of sql operation
        /// </summary>
        protected void BeginTransaction()
        {
            OpenConnection();
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = sqlcon;
                cmd.CommandText = "BEGIN TRANSACTION";
                cmd.ExecuteNonQuery();
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

        /// <summary>
        /// Marks the end point of sql operation
        /// </summary>
        protected void CommitTransaction()
        {
            OpenConnection();
            try
            {
                SqlCommand cmd = new SqlCommand("IF(@@TRANCOUNT>0) BEGIN COMMIT TRANSACTION END", sqlcon);
                cmd.ExecuteNonQuery();
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

        /// <summary>
        /// Reverts the sql operation to beginning of the transaction
        /// </summary>
        protected void RollbackTransaction()
        {
            OpenConnection();
            try
            {
                SqlCommand cmd = new SqlCommand("IF(@@TRANCOUNT>0) BEGIN ROLLBACK TRANSACTION END", sqlcon);
                cmd.ExecuteNonQuery();
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
        #endregion

        #region Connected Retrieve Command Operation
        /// <summary>
        /// Return the first row first column value from records set.
        /// </summary>
        /// <param name="cmd">Database query</param>
        /// <returns>First row first column value of result set</returns>
        protected object ExecuteScalar(SqlCommand cmd)
        {
            OpenConnection();
            try
            {
                cmd.Connection = sqlcon;
                return cmd.ExecuteScalar();
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

        /// <summary>
        /// Return the recordset.
        /// </summary>
        /// <param name="cmd">Database query</param>
        /// <returns>First row first column value of result set</returns>
        protected SqlDataReader ExecuteReader(SqlCommand cmd)
        {
            OpenConnection();
            try
            {
                cmd.Connection = sqlcon;
                return cmd.ExecuteReader();
            }
            catch
            {
                throw;
            }
            finally
            {
                //CloseConnection();
            }
        }

        /// <summary>
        /// Return the recordset.
        /// </summary>
        /// <param name="cmd">Database query</param>
        /// <returns>First row first column value of result set</returns>
        protected SqlDataReader ExecuteUSPReader(SqlCommand cmd)
        {
            OpenConnection();
            try
            {
                cmd.Connection = sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                return cmd.ExecuteReader();
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
        #endregion

        #region Insert,Update,Delete Operation
        /// <summary>
        /// Execute the SQLCommand and returns the number of rows affected
        /// </summary>
        /// <param name="cmd">SQL statement</param>
        /// <returns>Returns the number of rows affected</returns>
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

        /// <summary>
        /// Execute the SQLCommand and returns the number of rows affected
        /// </summary>
        /// <param name="cmd">SQL statement</param>
        /// <returns>Returns the number of rows affected</returns>
        public int ExecuteUSPNonQuery(SqlCommand cmd)
        {
            this.OpenConnection();
            try
            {
                cmd.Connection = sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
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

        /// <summary>
        /// Execute the SQLCommand and returns the number of rows affected
        /// </summary>
        /// <param name="cmd">SQL statement</param>
        /// <param name="tableName">Affected Table Name </param>
        /// <param name="affectedkeyvalue">Returns the affected Primary key</param>
        /// <returns>Returns the number of rows affected</returns>
        public int ExecuteNonQuery(SqlCommand cmd, string tableName, ref string affectedkeyvalue)
        {
            this.OpenConnection();
            try
            {
                cmd.Connection = sqlcon;
                int rowsEffected = cmd.ExecuteNonQuery();

                cmd.CommandText = "Select IDENT_CURRENT('[" + tableName + "]')";
                affectedkeyvalue = cmd.ExecuteScalar().ToString();

                return rowsEffected;
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                this.CloseConnection();
            }
        }
        #endregion

        #region Disconnected Retrieve Command Operation
        /// <summary>
        /// Execute the command and returns the result set
        /// </summary>
        /// <param name="cmd">SQL statement</param>
        /// <returns>Returns the result set</returns>
        public DataSet GetDataSet(SqlCommand cmd)
        {
            try
            {
                InitiateConnection();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.Connection = sqlcon;
                DataSet ds = new DataSet();
                ds.DataSetName = "DataSet1";
                da.Fill(ds);
                return ds;
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        /// <summary>
        /// Execute the command and returns the result set
        /// </summary>
        /// <param name="cmd">SQL statement</param>
        /// <returns>Returns the result set</returns>
        public DataSet GetUSPDataSet(SqlCommand cmd)
        {
            try
            {
                InitiateConnection();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.Connection = sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                ds.DataSetName = "DataSet1";
                da.Fill(ds);
                return ds;
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// Execute the command and returns the result set
        /// </summary>
        /// <param name="cmd">SQL statement</param>
        /// <returns>Returns the result set</returns>
        public DataTable GetDataTable(SqlCommand cmd)
        {
            try
            {
                InitiateConnection();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.Connection = sqlcon;
                DataTable dt = new DataTable();
                dt.TableName = "Table1";
                da.Fill(dt);
                return dt;
            }
            catch
            {
                throw;
            }
            finally
            {
                GC.SuppressFinalize(this);
            }
        }

        /// Execute the command and returns the result set
        /// </summary>
        /// <param name="cmd">SQL statement</param>
        /// <returns>Returns the result set</returns>
        public DataTable GetUSPDataTable(SqlCommand cmd)
        {
            try
            {
                InitiateConnection();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.Connection = sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                dt.TableName = "Table1";
                da.Fill(dt);
                return dt;
            }
            catch
            {
                throw;
            }
        }
        #endregion

        #region Bulkcopy Operation
        /// <summary>
        /// Insert the records from result set into database table
        /// </summary>
        /// <param name="dt">Records set</param>
        /// <param name="destinationTable">Destination table in database</param>
        public void SqlBulkCopy(DataTable dt, string destinationTable)
        {
            BeginTransaction();
            try
            {
                SqlBulkCopy bulkCopy = new SqlBulkCopy(sqlcon);
                bulkCopy.DestinationTableName = destinationTable;

                bulkCopy.WriteToServer(dt);
                bulkCopy.Close();
                CommitTransaction();
            }
            catch
            {
                RollbackTransaction();
                throw;
            }
        }
        #endregion


    }
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