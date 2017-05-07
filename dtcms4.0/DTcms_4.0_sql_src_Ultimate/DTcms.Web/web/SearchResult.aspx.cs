using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTcms.BLL;
using DTcms.Common;
namespace DTcms.Web.web
{
    public partial class SearchResult : System.Web.UI.Page
    {

        public BLL.article bll = new article();
        protected int totalCount;
        protected int page = 1;
        protected int pageSize = 10;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindInfo(DTRequest.GetString("keyword"));
            }
        }
        /// <summary>
        /// 信息绑定
        /// </summary>
        /// <param name="channelid"></param>
        public void BindInfo(string keyword)
        {
            if (!string.IsNullOrEmpty(keyword))
            {
                page = DTRequest.GetQueryInt("page", 1);
                rptlist.DataSource = bll.GetList(0, 0, pageSize, page, " (composition_scheme LIKE '%"+ keyword + "%'  or title like '%" + keyword + "%' ) and is_top!=1 and status=0 ", "id asc ", out totalCount);
                rptlist.DataBind();
                string pageUrl = Utils.CombUrlTxt("SearchResult.aspx", "page={0}&keyword={1}", "__id__", keyword.ToString());
                PageContent.InnerHtml = Utils.OutwebPageList(this.pageSize, this.page, this.totalCount, pageUrl, 6);
            }
            
        }
    }
}