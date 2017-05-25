using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace DTcms.Model
{
    /// <summary>
    /// hotsearch:实体类(属性说明自动提取数据库字段的描述信息)
    /// </summary>
    [Serializable]
    public partial class hotsearch
    {
        public hotsearch()
        { }
        #region Model
        private int _id;
        private string _title;
        private string _url;
        private int? _state = 1;
        private int? _sortid;
        private DateTime? _createdate;
        private int? _createuser;
        /// <summary>
        /// 
        /// </summary>
        public int id
        {
            set { _id = value; }
            get { return _id; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string title
        {
            set { _title = value; }
            get { return _title; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string url
        {
            set { _url = value; }
            get { return _url; }
        }
        /// <summary>
        /// 
        /// </summary>
        public int? state
        {
            set { _state = value; }
            get { return _state; }
        }
        /// <summary>
        /// 
        /// </summary>
        public int? sortid
        {
            set { _sortid = value; }
            get { return _sortid; }
        }
        /// <summary>
        /// 
        /// </summary>
        public DateTime? createdate
        {
            set { _createdate = value; }
            get { return _createdate; }
        }
        /// <summary>
        /// 
        /// </summary>
        public int? createuser
        {
            set { _createuser = value; }
            get { return _createuser; }
        }
        #endregion Model

    }
}


