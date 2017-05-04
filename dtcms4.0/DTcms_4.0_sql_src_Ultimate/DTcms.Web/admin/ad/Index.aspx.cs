using DTcms.BLL;
using DTcms.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace DTcms.Web.admin.ad
{
    public partial class Index : Web.UI.ManagePage
    {

        public advertisementBll bll = new advertisementBll();
        protected int totalCount;
        protected int page=0;
        protected int pageSize;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetList();
            }
        }

        /// <summary>
        /// 获取List
        /// </summary>
        public void GetList()
        {
            this.rptList2.DataSource = bll.GetListByPage("", "", 0, 20);
            //bll.GetList(_channel_id, _category_id, this.pageSize, this.page, _strWhere, _orderby, out this.totalCount);
            this.rptList2.DataBind();
            //绑定页码
            txtPageNum.Text = this.pageSize.ToString();
            string pageUrl = Utils.CombUrlTxt("article_list.aspx", "page={0}","__id__");
            PageContent.InnerHtml = Utils.OutPageList(10, this.page, this.totalCount, pageUrl, 8);
        }
    }
}