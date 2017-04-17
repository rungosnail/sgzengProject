using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace DTcms.Web.web
{
    public partial class Index : System.Web.UI.Page
    {
        public string RightHtml;
        public DTcms.BLL.article bll = new BLL.article();
        public DTcms.Common.Utils common = new Common.Utils();
        public StringBuilder sbHtml = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetProprietaryList();
                GetChannelList();
            }
        }

        /// <summary>
        /// 获取自营资源
        /// </summary>
        public void GetProprietaryList()
        {
            var list = common.DataSetToIList<DTcms.Model.article>(new DTcms.BLL.article().GetList(9, " category_id=52 AND (is_hot=1 OR is_red=1) ", "id ASC"), 0);
            if (list != null)
            {
                rptProprietary.DataSource = list.FindAll(p => p.is_hot == 1).Take(2);
                rptProprietary.DataBind();
                var right = list.FindAll(p => p.is_hot == 1).Skip(2).ToList();
                if (right != null)
                {
                    RightHtml = "<a href=\"#\"><img src =\"" + right[0].img_url + "\" width=\"280\" height=\"140\" /></a>";
                }
                rptReadList.DataSource = list.FindAll(p => p.is_red == 1);
                rptReadList.DataBind();
            }

        }

        /// <summary>
        /// 获取各频道热门和推荐内容
        /// </summary>
        public void GetChannelList()
        {
            var list = common.DataSetToIList<Model.ChannelView>(bll.GetChannel(), 0);

            if (list.Count > 0)
            {
                foreach (var item in list.GroupBy(p => p.Viewchannel_id).ToList())
                {
                    //广告图片
                    sbHtml.Append(" <div class=\"ad\">");
                    sbHtml.Append(" <a href=\"#\">");
                    sbHtml.Append("<img src=\"images/index_19-21.gif\" width=\"1200\" height=\"140\" /></a>");
                    sbHtml.Append("</div>");

                    sbHtml.Append("<div class=\"other\">");


                    sbHtml.Append("<div class=\"otitle\">");
                    sbHtml.Append("<dl>");
                    sbHtml.Append("<dt class=\"dm\">" + item.ToList()[0].Viewtitle + "</dt>");
                    sbHtml.Append("  <dd>");
                    sbHtml.Append(" <ul>");
                    var channel2 = item.ToList().GroupBy(p => p.Viewid2).ToList();
                    foreach (var itemPd in channel2)
                    {
                        sbHtml.Append("<li><a href=\"#\">" + itemPd.ToList()[0].Viewtitle2 + "</a></li>");
                    }
                    sbHtml.Append(" </ul>");
                    sbHtml.Append("</dd>");
                    sbHtml.Append(" </dl>");
                    sbHtml.Append(" </div>");


                    sbHtml.Append(" <div class=\"obox\">");
                    //左侧图片
                    var leftInfo = item.ToList().FindAll(p => p.is_top == 1);
                    sbHtml.Append(leftInfo.Count != 0 ? " <div class=\"oleft\"><img src=\"" + leftInfo[0].img_url + "\" width=\"280\" height=\"430\"></div>" : "");

                    sbHtml.Append(" <div class=\"omiddle\">");
                    sbHtml.Append("<ul>");
                    //中间热门
                    foreach (var itemPd in item.ToList().FindAll(p => p.is_hot == 1))
                    {
                        sbHtml.Append("<li>");
                        sbHtml.Append(" <a href=\"#\">");
                        sbHtml.Append(" <img src=\"" + itemPd.img_url + "\" width=\"190\" height=\"140\" /></a>");
                        sbHtml.Append(" <b><a href=\"#\">" + (itemPd.title.Length > 12 ? (itemPd.title.Substring(0, 9) + "...") : itemPd.title) + "</a></b>");
                        sbHtml.Append("<p><a href=\"#\" class=\"download\">资源下载</a><a href=\"#\" class=\"contact\">资源联系</a></p>");
                        sbHtml.Append("</li>");
                    }
                    sbHtml.Append("</ul>");
                    sbHtml.Append("  </div>");
                    //右侧推荐

                    sbHtml.Append(" <div class=\"oright\">");

                    var rightHtml = item.ToList().FindAll(p => p.is_red == 1);

                    sbHtml.Append(rightHtml.Count > 0 ? "<a href=\"#\"><img src=\"" + rightHtml[0].img_url + "\" width=\"280\" height=\"140\" /></a>" : "");

                    sbHtml.Append("<ul>");
                    foreach (var itemPd in item.ToList().FindAll(p => p.is_red == 1).Skip(1))
                    {
                        sbHtml.Append("<li><a href=\"#\">" + itemPd.title + "</a></li>");
                    }
                    sbHtml.Append("</ul>");
                    sbHtml.Append("</div>");

                    sbHtml.Append("</div>");

                    sbHtml.Append("</div>");
                }
            }

        }
    }
}