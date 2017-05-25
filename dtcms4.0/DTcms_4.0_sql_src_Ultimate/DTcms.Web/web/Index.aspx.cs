using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;

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
                GetAdList();
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

            BLL.advertisementBll adbll = new BLL.advertisementBll();

            var adlist = common.DataSetToIList<Model.advertisementModel>(adbll.GetList("type>1 AND state=1"), 0);

            if (list.Count > 0)
            {
                string itype = "2";
                foreach (var item in list.GroupBy(p => p.Viewchannel_id).ToList())
                {
                    //广告图片
                    sbHtml.Append(" <div class=\"ad\">");

                    var adinfo = adlist.Find(p => p.type == itype);
                    if (adinfo != null)
                    {
                        sbHtml.Append(" <a href=\"" + adinfo.url + "\">");
                        sbHtml.Append("<img src=\"" + adinfo.imgurl + "\" width=\"1200\" height=\"140\" /></a>");
                    }
                    itype = (Convert.ToInt32(itype) + 1).ToString();

                    sbHtml.Append("</div>");



                    sbHtml.Append("<div class=\"other\">");


                    sbHtml.Append("<div class=\"otitle\">");
                    sbHtml.Append("<dl>");
                    sbHtml.Append("<dt class=\"dm\">" + item.ToList()[0].Viewtitle + "</dt>");
                    sbHtml.Append("  <dd>");


                    sbHtml.Append(" <ul>");
                    var tags = item.ToList().OrderByDescending(p => p.click).ToList();
                    foreach (var itemPd in tags)
                    {
                        if (!string.IsNullOrEmpty(itemPd.tags))
                        {
                            sbHtml.Append("<li><a href=\"Detail.aspx?nvaChannelid=" + itemPd.channel_id + "&id=" + itemPd.id + "\">" + itemPd.tags + "</a></li>");
                        }
                        
                    }
                    sbHtml.Append("<li class=\"more\"><a href=\"List.aspx?nvaChannelid="+ item.ToList()[0].channel_id+ "\"><em>更多</em></a></li>");
                    sbHtml.Append(" </ul>");
                    sbHtml.Append("</dd>");
                    sbHtml.Append(" </dl>");
                    sbHtml.Append(" </div>");

                    if (item.Key.ToString() == "10")
                    {
                        sbHtml.Append(GetStarexpertList());
                    }
                    else
                    {
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
                            sbHtml.Append(" <a href=\"Detail.aspx?nvaChannelid=" + itemPd.channel_id + "&id=" + itemPd.id + "\">");
                            sbHtml.Append(" <img src=\"" + itemPd.img_url + "\" width=\"190\" height=\"140\" /></a>");
                            sbHtml.Append(" <b><a href=\"#\">" + (itemPd.title.Length > 12 ? (itemPd.title.Substring(0, 9) + "...") : itemPd.title) + "</a></b>");
                            sbHtml.Append("<p><a href=\"Detail.aspx?nvaChannelid=" + itemPd.channel_id + "&id=" + itemPd.id + "\"class=\"download\">资源下载</a><a href=\"Detail.aspx?nvaChannelid=" + itemPd.channel_id + "&id=" + itemPd.id + "\" class=\"contact\">资源联系</a></p>");
                            sbHtml.Append("</li>");
                        }
                        sbHtml.Append("</ul>");
                        sbHtml.Append("  </div>");
                        //右侧推荐

                        sbHtml.Append(" <div class=\"oright\">");

                        var rightHtml = item.ToList().FindAll(p => p.is_red == 1);

                        sbHtml.Append(rightHtml.Count > 0 ? "<a href=\"Detail.aspx?nvaChannelid=" + rightHtml[0].channel_id + "&id=" + rightHtml[0].id + "\"><img src=\"" + rightHtml[0].img_url + "\" width=\"280\" height=\"140\" /></a>" : "");

                        sbHtml.Append("<ul>");
                        foreach (var itemPd in item.ToList().FindAll(p => p.is_red == 1).Skip(1))
                        {
                            sbHtml.Append("<li><a href=\"Detail.aspx?nvaChannelid=" + itemPd.channel_id + "&id=" + itemPd.id + "\">" + itemPd.title + "</a></li>");
                        }
                        sbHtml.Append("</ul>");
                        sbHtml.Append("</div>");

                        sbHtml.Append("</div>");
                    }
                    sbHtml.Append("</div>");
                }
            }

        }

        /// <summary>
        /// 获取广告
        /// </summary>
        public void GetAdList()
        {
            BLL.advertisementBll bll = new BLL.advertisementBll();
            DataSet ds = new DataSet();
            ds = bll.GetList("type=1 AND state=1");
            if (ds.Tables[0].Rows.Count > 0)
            {
                StringBuilder sbheadHtml = new StringBuilder();
                sbheadHtml.Append("<div class=\"banner-inner\">");

                StringBuilder sbfootHtml = new StringBuilder();
                sbfootHtml.Append("<ul class=\"pageCtrl\">");

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    sbheadHtml.AppendFormat("<img src=\"{0}\" name=\"{1}\">", ds.Tables[0].Rows[i]["imgurl"], i);
                    if (i == 0)
                    {
                        sbfootHtml.Append("<li class=\"active\"></li>");
                    }
                    else
                    {
                        sbfootHtml.Append("<li></li>");
                    }
                }


                sbheadHtml.Append("</div>");
                sbfootHtml.Append("	</ul>");

                sbheadHtml.Append("<div class=\"ctrlbtn\">");
                sbheadHtml.Append("<a href = \"javascript:;\" class=\"prev\" >></a>");
                sbheadHtml.Append("<a href = \"javascript:;\" class=\"next\"><</a>");
                sbheadHtml.Append("</div>");
                divAdhtml.InnerHtml = sbheadHtml.ToString() + sbfootHtml.ToString();

            }

        }

        public string GetStarexpertList()
        {
            StringBuilder sbStar = new StringBuilder();
            BLL.starexpert blls = new BLL.starexpert();
            List<DTcms.Model.starexpert> list = new List<Model.starexpert>();
            list = blls.GetModelList(" ISNULL(status, 0) = 0");
            if (list.Count > 0)
            {
                sbStar.Append(" <div class=\"obox\">");
                //左侧图片
                var leftInfo = list.FindAll(p => p.type == 0);
                sbStar.Append(leftInfo.Count != 0 ? " <div class=\"oleft\"><img src=\"" + leftInfo[0].img_url + "\" width=\"280\" height=\"430\"></div>" : "");

                sbStar.Append(" <div class=\"omiddle\">");
                sbStar.Append("<ul>");
                //中间热门
                foreach (var itemPd in list.FindAll(p => p.type == 2))
                {
                    sbStar.Append("<li>");
                    sbStar.Append(" <a href=\"StarexpertList.aspx?nvaChannelid=" + itemPd.channel_id + "&id=" + itemPd.id + "\">");
                    sbStar.Append(" <img src=\"" + itemPd.img_url + "\" width=\"190\" height=\"140\" /></a>");
                    sbStar.Append(" <b><a href=\"#\">" + (itemPd.name.Length > 12 ? (itemPd.name.Substring(0, 9) + "...") : itemPd.name) + "</a></b>");
                    sbStar.Append("<p style=\"text-align:center\"><a href=\"StarexpertList.aspx?nvaChannelid=" + itemPd.channel_id + "&id=" + itemPd.id + "\" class=\"contact\">资源联系</a></p>");
                    sbStar.Append("</li>");
                }
                sbStar.Append("</ul>");
                sbStar.Append("  </div>");
                //右侧推荐

                sbStar.Append(" <div class=\"oright\">");

                var rightHtml = list.FindAll(p => p.type == 1);

                sbStar.Append(rightHtml.Count > 0 ? "<a href=\"StarexpertList.aspx?nvaChannelid=" + rightHtml[0].channel_id + "&id=" + rightHtml[0].id + "\"><img src=\"" + rightHtml[0].img_url + "\" width=\"280\" height=\"140\" /></a>" : "");

                sbStar.Append("<ul>");
                foreach (var itemPd in list.FindAll(p => p.type == 1).Skip(1))
                {
                    sbStar.Append("<li><a href=\"StarexpertList.aspx?nvaChannelid=" + itemPd.channel_id + "&id=" + itemPd.id + "\">" + itemPd.name + "-" + itemPd.job_occupation + "</a></li>");
                }
                sbStar.Append("</ul>");
                sbStar.Append("</div>");

                sbStar.Append("</div>");
            }

            return sbStar.ToString();
        }
    }
}