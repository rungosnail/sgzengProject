using DTcms.DBUtility;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using DTcms.Model;

namespace DTcms.DAL
{
   public class advertisementDal
    {

        #region  BasicMethod

        /// <summary>
        /// 增加一条数据
        /// </summary>
        public int Add(Model.advertisementModel model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("insert into dt_advertisement(");
            strSql.Append("title,name,imgurl,url,type,state,createdate,userId)");
            strSql.Append(" values (");
            strSql.Append("@title,@name,@imgurl,@url,@type,@state,@createdate,@userId)");
            strSql.Append(";select @@IDENTITY");
            SqlParameter[] parameters = {
                    new SqlParameter("@title", SqlDbType.VarChar,100),
                    new SqlParameter("@name", SqlDbType.VarChar,20),
                    new SqlParameter("@imgurl", SqlDbType.NVarChar,500),
                    new SqlParameter("@url", SqlDbType.NVarChar,250),
                    new SqlParameter("@type", SqlDbType.VarChar,20),
                    new SqlParameter("@state", SqlDbType.Int,4),
                    new SqlParameter("@createdate", SqlDbType.DateTime),
                    new SqlParameter("@userId", SqlDbType.Int,4)};
            parameters[0].Value = model.title;
            parameters[1].Value = model.name;
            parameters[2].Value = model.imgurl;
            parameters[3].Value = model.url;
            parameters[4].Value = model.type;
            parameters[5].Value = model.state;
            parameters[6].Value = model.createdate;
            parameters[7].Value = model.userId;

            object obj = DbHelperSQL.GetSingle(strSql.ToString(), parameters);
            if (obj == null)
            {
                return 0;
            }
            else
            {
                return Convert.ToInt32(obj);
            }
        }
        /// <summary>
        /// 更新一条数据
        /// </summary>
        public bool Update(Model.advertisementModel model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update dt_advertisement set ");
            strSql.Append("title=@title,");
            strSql.Append("name=@name,");
            strSql.Append("imgurl=@imgurl,");
            strSql.Append("url=@url,");
            strSql.Append("type=@type,");
            strSql.Append("state=@state,");
            strSql.Append("createdate=@createdate,");
            strSql.Append("userId=@userId");
            strSql.Append(" where id=@id");
            SqlParameter[] parameters = {
                    new SqlParameter("@title", SqlDbType.VarChar,100),
                    new SqlParameter("@name", SqlDbType.VarChar,20),
                    new SqlParameter("@imgurl", SqlDbType.NVarChar,500),
                    new SqlParameter("@url", SqlDbType.NVarChar,250),
                    new SqlParameter("@type", SqlDbType.VarChar,20),
                    new SqlParameter("@state", SqlDbType.Int,4),
                    new SqlParameter("@createdate", SqlDbType.DateTime),
                    new SqlParameter("@userId", SqlDbType.Int,4),
                    new SqlParameter("@id", SqlDbType.Int,4)};
            parameters[0].Value = model.title;
            parameters[1].Value = model.name;
            parameters[2].Value = model.imgurl;
            parameters[3].Value = model.url;
            parameters[4].Value = model.type;
            parameters[5].Value = model.state;
            parameters[6].Value = model.createdate;
            parameters[7].Value = model.userId;
            parameters[8].Value = model.id;

            int rows = DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 删除一条数据
        /// </summary>
        public bool Delete(int id)
        {

            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from dt_advertisement ");
            strSql.Append(" where id=@id");
            SqlParameter[] parameters = {
                    new SqlParameter("@id", SqlDbType.Int,4)
            };
            parameters[0].Value = id;

            int rows = DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        /// <summary>
        /// 批量删除数据
        /// </summary>
        public bool DeleteList(string idlist)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from dt_advertisement ");
            strSql.Append(" where id in (" + idlist + ")  ");
            int rows = DbHelperSQL.ExecuteSql(strSql.ToString());
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public Model.advertisementModel GetModel(int id)
        {

            StringBuilder strSql = new StringBuilder();
            strSql.Append("select  top 1 id,title,name,imgurl,url,type,state,createdate,userId from dt_advertisement ");
            strSql.Append(" where id=@id");
            SqlParameter[] parameters = {
                    new SqlParameter("@id", SqlDbType.Int,4)
            };
            parameters[0].Value = id;

            Model.advertisementModel model = new Model.advertisementModel();
            DataSet ds = DbHelperSQL.Query(strSql.ToString(), parameters);
            if (ds.Tables[0].Rows.Count > 0)
            {
                return DataRowToModel(ds.Tables[0].Rows[0]);
            }
            else
            {
                return null;
            }
        }


        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public Model.advertisementModel DataRowToModel(DataRow row)
        {
            Model.advertisementModel model = new Model.advertisementModel();
            if (row != null)
            {
                if (row["id"] != null && row["id"].ToString() != "")
                {
                    model.id = int.Parse(row["id"].ToString());
                }
                if (row["title"] != null)
                {
                    model.title = row["title"].ToString();
                }
                if (row["name"] != null)
                {
                    model.name = row["name"].ToString();
                }
                if (row["imgurl"] != null)
                {
                    model.imgurl = row["imgurl"].ToString();
                }
                if (row["url"] != null)
                {
                    model.url = row["url"].ToString();
                }
                if (row["type"] != null)
                {
                    model.type = row["type"].ToString();
                }
                if (row["state"] != null && row["state"].ToString() != "")
                {
                    model.state = int.Parse(row["state"].ToString());
                }
                if (row["createdate"] != null && row["createdate"].ToString() != "")
                {
                    model.createdate = DateTime.Parse(row["createdate"].ToString());
                }
                if (row["userId"] != null && row["userId"].ToString() != "")
                {
                    model.userId = int.Parse(row["userId"].ToString());
                }
            }
            return model;
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetList(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select id,title,name,imgurl,url,type,state,createdate,userId ");
            strSql.Append(" FROM dt_advertisement ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            return DbHelperSQL.Query(strSql.ToString());
        }

        /// <summary>
        /// 获得前几行数据
        /// </summary>
        public DataSet GetList(int Top, string strWhere, string filedOrder)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select ");
            if (Top > 0)
            {
                strSql.Append(" top " + Top.ToString());
            }
            strSql.Append(" id,title,name,imgurl,url,type,state,createdate,userId ");
            strSql.Append(" FROM dt_advertisement ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            strSql.Append(" order by " + filedOrder);
            return DbHelperSQL.Query(strSql.ToString());
        }

        /// <summary>
        /// 获取记录总数
        /// </summary>
        public int GetRecordCount(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) FROM dt_advertisement ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            object obj = DbHelperSQL.GetSingle(strSql.ToString());
            if (obj == null)
            {
                return 0;
            }
            else
            {
                return Convert.ToInt32(obj);
            }
        }
        /// <summary>
        /// 分页获取数据列表
        /// </summary>
        public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT * FROM ( ");
            strSql.Append(" SELECT ROW_NUMBER() OVER (");
            if (!string.IsNullOrEmpty(orderby.Trim()))
            {
                strSql.Append("order by T." + orderby);
            }
            else
            {
                strSql.Append("order by T.id desc");
            }
            strSql.Append(")AS Row, T.*  from dt_advertisement T ");
            if (!string.IsNullOrEmpty(strWhere.Trim()))
            {
                strSql.Append(" WHERE " + strWhere);
            }
            strSql.Append(" ) TT");
            strSql.AppendFormat(" WHERE TT.Row between {0} and {1}", startIndex, endIndex);
            return DbHelperSQL.Query(strSql.ToString());
        }

        /*
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		{
			SqlParameter[] parameters = {
					new SqlParameter("@tblName", SqlDbType.VarChar, 255),
					new SqlParameter("@fldName", SqlDbType.VarChar, 255),
					new SqlParameter("@PageSize", SqlDbType.Int),
					new SqlParameter("@PageIndex", SqlDbType.Int),
					new SqlParameter("@IsReCount", SqlDbType.Bit),
					new SqlParameter("@OrderType", SqlDbType.Bit),
					new SqlParameter("@strWhere", SqlDbType.VarChar,1000),
					};
			parameters[0].Value = "dt_advertisement";
			parameters[1].Value = "id";
			parameters[2].Value = PageSize;
			parameters[3].Value = PageIndex;
			parameters[4].Value = 0;
			parameters[5].Value = 0;
			parameters[6].Value = strWhere;	
			return DbHelperSQL.RunProcedure("UP_GetRecordByPage",parameters,"ds");
		}*/

        #endregion  BasicMethod
        #region  ExtensionMethod

        #endregion  ExtensionMethod
    }
}
