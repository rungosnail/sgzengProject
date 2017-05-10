using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
namespace DTcms.Model
{
    /// <summary>
    /// starexpert:实体类(属性说明自动提取数据库字段的描述信息)
    /// </summary>
    [Serializable]
    public partial class starexpert
    {
        public starexpert()
        { }
        #region Model
        private int _id;
        private int _channel_id;
        private int _category_id;
        private string _name;
        private string _img_url;
        private string _job_occupation;
        private string _linkphone;
        private decimal? _linkprice;
        private string _aboutdesc;
        private int? _status;
        private DateTime? _createdate;
        private int? _createuser;
        private int? _type;

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
        public int channel_id
        {
            set { _channel_id = value; }
            get { return _channel_id; }
        }
        /// <summary>
        /// 
        /// </summary>
        public int category_id
        {
            set { _category_id = value; }
            get { return _category_id; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string name
        {
            set { _name = value; }
            get { return _name; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string img_url
        {
            set { _img_url = value; }
            get { return _img_url; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string job_occupation
        {
            set { _job_occupation = value; }
            get { return _job_occupation; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string linkphone
        {
            set { _linkphone = value; }
            get { return _linkphone; }
        }
        /// <summary>
        /// 
        /// </summary>
        public decimal? linkprice
        {
            set { _linkprice = value; }
            get { return _linkprice; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string aboutdesc
        {
            set { _aboutdesc = value; }
            get { return _aboutdesc; }
        }
        /// <summary>
        /// 
        /// </summary>
        public int? status
        {
            set { _status = value; }
            get { return _status; }
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

        public int? type
        {
            set { _type = value; }
            get { return _type; }
        }
        #endregion Model

    }
}


