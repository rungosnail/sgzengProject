using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using DTcms.DBUtility;//Please add references
namespace DTcms.DAL
{
    /// <summary>
    /// 数据访问类:starexpert
    /// </summary>
    public partial class starexpert
    {
        public starexpert()
        { }
        #region  BasicMethod
        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public bool Exists(int id)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from dt_starexpert");
            strSql.Append(" where id=@id");
            SqlParameter[] parameters = {
                    new SqlParameter("@id", SqlDbType.Int,4)
            };
            parameters[0].Value = id;

            return DbHelperSQL.Exists(strSql.ToString(), parameters);
        }


        /// <summary>
        /// 增加一条数据
        /// </summary>
        public int Add(DTcms.Model.starexpert model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("insert into dt_starexpert(");
            strSql.Append("channel_id,category_id,name,img_url,job_occupation,linkphone,linkprice,aboutdesc,state,createdate,createuser)");
            strSql.Append(" values (");
            strSql.Append("@channel_id,@category_id,@name,@img_url,@job_occupation,@linkphone,@linkprice,@aboutdesc,@state,@createdate,@createuser)");
            strSql.Append(";select @@IDENTITY");
            SqlParameter[] parameters = {
                    new SqlParameter("@channel_id", SqlDbType.Int,4),
                    new SqlParameter("@category_id", SqlDbType.Int,4),
                    new SqlParameter("@name", SqlDbType.NVarChar,10),
                    new SqlParameter("@img_url", SqlDbType.NVarChar,50),
                    new SqlParameter("@job_occupation", SqlDbType.NVarChar,50),
                    new SqlParameter("@linkphone", SqlDbType.VarChar,11),
                    new SqlParameter("@linkprice", SqlDbType.Decimal,9),
                    new SqlParameter("@aboutdesc", SqlDbType.NVarChar,500),
                    new SqlParameter("@state", SqlDbType.Int,4),
                    new SqlParameter("@createdate", SqlDbType.DateTime),
                    new SqlParameter("@createuser", SqlDbType.Int,4)};
            parameters[0].Value = model.channel_id;
            parameters[1].Value = model.category_id;
            parameters[2].Value = model.name;
            parameters[3].Value = model.img_url;
            parameters[4].Value = model.job_occupation;
            parameters[5].Value = model.linkphone;
            parameters[6].Value = model.linkprice;
            parameters[7].Value = model.aboutdesc;
            parameters[8].Value = model.state;
            parameters[9].Value = model.createdate;
            parameters[10].Value = model.createuser;

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
        public bool Update(DTcms.Model.starexpert model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update dt_starexpert set ");
            strSql.Append("channel_id=@channel_id,");
            strSql.Append("category_id=@category_id,");
            strSql.Append("name=@name,");
            strSql.Append("img_url=@img_url,");
            strSql.Append("job_occupation=@job_occupation,");
            strSql.Append("linkphone=@linkphone,");
            strSql.Append("linkprice=@linkprice,");
            strSql.Append("aboutdesc=@aboutdesc,");
            strSql.Append("state=@state,");
            strSql.Append("createdate=@createdate,");
            strSql.Append("createuser=@createuser");
            strSql.Append(" where id=@id");
            SqlParameter[] parameters = {
                    new SqlParameter("@channel_id", SqlDbType.Int,4),
                    new SqlParameter("@category_id", SqlDbType.Int,4),
                    new SqlParameter("@name", SqlDbType.NVarChar,10),
                    new SqlParameter("@img_url", SqlDbType.NVarChar,50),
                    new SqlParameter("@job_occupation", SqlDbType.NVarChar,50),
                    new SqlParameter("@linkphone", SqlDbType.VarChar,11),
                    new SqlParameter("@linkprice", SqlDbType.Decimal,9),
                    new SqlParameter("@aboutdesc", SqlDbType.NVarChar,500),
                    new SqlParameter("@state", SqlDbType.Int,4),
                    new SqlParameter("@createdate", SqlDbType.DateTime),
                    new SqlParameter("@createuser", SqlDbType.Int,4),
                    new SqlParameter("@id", SqlDbType.Int,4)};
            parameters[0].Value = model.channel_id;
            parameters[1].Value = model.category_id;
            parameters[2].Value = model.name;
            parameters[3].Value = model.img_url;
            parameters[4].Value = model.job_occupation;
            parameters[5].Value = model.linkphone;
            parameters[6].Value = model.linkprice;
            parameters[7].Value = model.aboutdesc;
            parameters[8].Value = model.state;
            parameters[9].Value = model.createdate;
            parameters[10].Value = model.createuser;
            parameters[11].Value = model.id;

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
            strSql.Append("delete from dt_starexpert ");
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
            strSql.Append("delete from dt_starexpert ");
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
        public DTcms.Model.starexpert GetModel(int id)
        {

            StringBuilder strSql = new StringBuilder();
            strSql.Append("select  top 1 id,channel_id,category_id,name,img_url,job_occupation,linkphone,linkprice,aboutdesc,state,createdate,createuser from dt_starexpert ");
            strSql.Append(" where id=@id");
            SqlParameter[] parameters = {
                    new SqlParameter("@id", SqlDbType.Int,4)
            };
            parameters[0].Value = id;

            DTcms.Model.starexpert model = new DTcms.Model.starexpert();
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
        public DTcms.Model.starexpert DataRowToModel(DataRow row)
        {
            DTcms.Model.starexpert model = new DTcms.Model.starexpert();
            if (row != null)
            {
                if (row["id"] != null && row["id"].ToString() != "")
                {
                    model.id = int.Parse(row["id"].ToString());
                }
                if (row["channel_id"] != null && row["channel_id"].ToString() != "")
                {
                    model.channel_id = int.Parse(row["channel_id"].ToString());
                }
                if (row["category_id"] != null && row["category_id"].ToString() != "")
                {
                    model.category_id = int.Parse(row["category_id"].ToString());
                }
                if (row["name"] != null)
                {
                    model.name = row["name"].ToString();
                }
                if (row["img_url"] != null)
                {
                    model.img_url = row["img_url"].ToString();
                }
                if (row["job_occupation"] != null)
                {
                    model.job_occupation = row["job_occupation"].ToString();
                }
                if (row["linkphone"] != null)
                {
                    model.linkphone = row["linkphone"].ToString();
                }
                if (row["linkprice"] != null && row["linkprice"].ToString() != "")
                {
                    model.linkprice = decimal.Parse(row["linkprice"].ToString());
                }
                if (row["aboutdesc"] != null)
                {
                    model.aboutdesc = row["aboutdesc"].ToString();
                }
                if (row["state"] != null && row["state"].ToString() != "")
                {
                    model.state = int.Parse(row["state"].ToString());
                }
                if (row["createdate"] != null && row["createdate"].ToString() != "")
                {
                    model.createdate = DateTime.Parse(row["createdate"].ToString());
                }
                if (row["createuser"] != null && row["createuser"].ToString() != "")
                {
                    model.createuser = int.Parse(row["createuser"].ToString());
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
            strSql.Append("select id,channel_id,category_id,name,img_url,job_occupation,linkphone,linkprice,aboutdesc,state,createdate,createuser ");
            strSql.Append(" FROM dt_starexpert ");
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
            strSql.Append(" id,channel_id,category_id,name,img_url,job_occupation,linkphone,linkprice,aboutdesc,state,createdate,createuser ");
            strSql.Append(" FROM dt_starexpert ");
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
            strSql.Append("select count(1) FROM dt_starexpert ");
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
            strSql.Append(")AS Row, T.*  from dt_starexpert T ");
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
			parameters[0].Value = "dt_starexpert";
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

