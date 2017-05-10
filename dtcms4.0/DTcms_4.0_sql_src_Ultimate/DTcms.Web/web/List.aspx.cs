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
    public partial class List : System.Web.UI.Page
    {
        public BLL.article bll = new article();
        protected int totalCount;
        protected int page = 1;
        protected int pageSize = 10;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindInfo(DTRequest.GetQueryInt("nvaChannelid", 0));
            }
        }

        /// <summary>
        /// 信息绑定
        /// </summary>
        /// <param name="channelid"></param>
        public void BindInfo(int channelid)
        {
            page = DTRequest.GetQueryInt("page", 1);
            if (channelid==10)
            {
                rptlist.DataSource = bll.GetList(channelid, 0, pageSize, page, " status=0 ", "id asc ", out totalCount);
                rptlist.DataBind();
            }
            else
            {
                rptlist.DataSource = bll.GetList(channelid, 0, pageSize, page, "is_top!=1 and status=0 ", "id asc ", out totalCount);
                rptlist.DataBind();
            }
            
            string pageUrl = Utils.CombUrlTxt("List.aspx", "page={0}&nvaChannelid={1}", "__id__", channelid.ToString());
            PageContent.InnerHtml = Utils.OutwebPageList(this.pageSize, this.page, this.totalCount, pageUrl, 6);
        }

        
    }
}