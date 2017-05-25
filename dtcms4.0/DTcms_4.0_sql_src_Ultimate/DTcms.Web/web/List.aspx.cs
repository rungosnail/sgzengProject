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
        public int nvaChannelid = 0;
        public int category_id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                nvaChannelid = DTRequest.GetQueryInt("nvaChannelid", 0);
                category_id = DTRequest.GetQueryInt("category_id", 0);
                BindInfo(nvaChannelid,category_id);
            }
        }

        /// <summary>
        /// 信息绑定
        /// </summary>
        /// <param name="channelid"></param>
        public void BindInfo(int channelid, int category_id)
        {
            page = DTRequest.GetQueryInt("page", 1);
            if (channelid == 10)
            {
                rptlist.DataSource = bll.GetList(channelid, category_id, pageSize, page, " status=0 and type!=0", " sortid  asc ", out totalCount);
                rptlist.DataBind();
            }
            else
            {
                rptlist.DataSource = bll.GetList(channelid, category_id, pageSize, page, "is_top!=1 and status=0 ", "sort_id  asc ", out totalCount);
                rptlist.DataBind();
            }

            string pageUrl = Utils.CombUrlTxt("List.aspx", "page={0}&nvaChannelid={1}&category_id={2}", "__id__", channelid.ToString(), category_id.ToString());
            PageContent.InnerHtml = Utils.OutwebPageList(this.pageSize, this.page, this.totalCount, pageUrl, 6);

            BLL.article_category cbll = new article_category();
            rptCateg.DataSource= cbll.GetChildList(channelid);
            rptCateg.DataBind();


        }


    }
}