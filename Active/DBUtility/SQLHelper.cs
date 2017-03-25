using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBUtility
{
    public abstract class SQLHelper
    {
        /// <summary>
        /// Database connection strings.
        /// </summary>
        /// <remarks>
        /// 数据库连接字符串(来自App.config)。
        /// </remarks>
        //internal static readonly string ConnectionDefault = ConfigurationManager.ConnectionStrings["STARWAYDB_SELECT"].ConnectionString;

        //数据库名称
        internal static readonly string ConnectionDefault = "ActiveDB_SELECT";

        

        public static DataSet Query(string SQLString)
        {
            Database db = DatabaseFactory.CreateDatabase(ConnectionDefault);
            DbCommand dbCommand = db.GetSqlStringCommand(SQLString);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds;
        }

        public static DataSet Query(string SQLString, SqlParameter[] sqlParams)
        {
            Database db = DatabaseFactory.CreateDatabase(ConnectionDefault);
            DbCommand dbCommand = db.GetSqlStringCommand(SQLString);
            for (int i = 0; i < sqlParams.Length; i++)
            {
                db.AddInParameter(dbCommand, sqlParams[i].ParameterName, sqlParams[i].DbType, sqlParams[i].Value);
            }
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds;
        }

        public static int ExecuteProc(string procName, ref SqlParameter[] sqlParams)
        {
            Database db = DatabaseFactory.CreateDatabase(ConnectionDefault);
            DbCommand dbCommand = db.GetStoredProcCommand(procName);
            dbCommand.CommandTimeout = 120;

            for (int i = 0; i < sqlParams.Length; i++)
            {
                switch (sqlParams[i].Direction)
                {
                    case ParameterDirection.Input:
                        db.AddInParameter(dbCommand, sqlParams[i].ParameterName, sqlParams[i].DbType, sqlParams[i].Value);
                        break;
                    case ParameterDirection.InputOutput:
                        break;
                    case ParameterDirection.Output:
                        db.AddOutParameter(dbCommand, sqlParams[i].ParameterName, sqlParams[i].DbType, sqlParams[i].Size);
                        break;
                    case ParameterDirection.ReturnValue:
                        break;
                }
            }


            DataSet ds = db.ExecuteDataSet(dbCommand);

            for (int i = 0; i < sqlParams.Length; i++)
            {
                sqlParams[i].Value = db.GetParameterValue(dbCommand, sqlParams[i].ParameterName);
            }

            int k = 0;
            try
            {
                if ((ds.Tables.Count > 0) && (ds.Tables[0].Rows.Count > 0))
                {
                    k = Convert.ToInt32(ds.Tables[0].Rows[0]["ResultField"]);
                }
            }
            catch (Exception)
            {

            }

            return k;
        }

        public static DataSet ExecuteProcToDataSet(string procName, ref SqlParameter[] sqlParams)
        {
            Database db = DatabaseFactory.CreateDatabase(ConnectionDefault);
            DbCommand dbCommand = db.GetStoredProcCommand(procName);

            for (int i = 0; i < sqlParams.Length; i++)
            {
                switch (sqlParams[i].Direction)
                {
                    case ParameterDirection.Input:
                        db.AddInParameter(dbCommand, sqlParams[i].ParameterName, sqlParams[i].DbType, sqlParams[i].Value);
                        break;
                    case ParameterDirection.InputOutput:
                        break;
                    case ParameterDirection.Output:
                        db.AddOutParameter(dbCommand, sqlParams[i].ParameterName, sqlParams[i].DbType, sqlParams[i].Size);
                        break;
                    case ParameterDirection.ReturnValue:
                        break;
                }
            }


            DataSet ds = db.ExecuteDataSet(dbCommand);

            for (int i = 0; i < sqlParams.Length; i++)
            {
                sqlParams[i].Value = db.GetParameterValue(dbCommand, sqlParams[i].ParameterName);
            }

            return ds;
        }
    }
}
