using DTcms.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTcms.BLL;
using DTcms.Model;
using System.Data;
using System.Text;

namespace DTcms.Web.web
{
    public partial class Detail : System.Web.UI.Page
    {
        public BLL.article bll = new BLL.article();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Bindinfo(DTRequest.GetQueryInt("id", 0));
                BindOtherInfo();
            }
        }

        /// <summary>
        /// 信息绑定
        /// </summary>
        /// <param name="id"></param>
        public void Bindinfo(int id)
        {
            if (id > 0)
            {
                DataSet ds = new DataSet();
                ds = bll.GetdtArticleDetail(id);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    rptInfo.DataSource = ds.Tables[0];
                    rptInfo.DataBind();
                }
                if (ds.Tables[1].Rows.Count > 0)
                {
                    StringBuilder sbBIgImgHtml = new StringBuilder();
                    sbBIgImgHtml.Append(" <div id=\"banner\">");
                    sbBIgImgHtml.Append("<div class=\"bannerCon\">");
                    sbBIgImgHtml.Append("<div class=\"before\"><img src=\"images/pre.png\" /></div>");
                    sbBIgImgHtml.Append("<div class=\"after\"><img src=\"images/next.png\" /></div>");
                    sbBIgImgHtml.Append(" <div class=\"scroll\">");


                    StringBuilder sbSmallHtml = new StringBuilder();
                    sbSmallHtml.Append("<div class=\"smallimg\" style=\"z-index:1001\">");
                    sbSmallHtml.Append(" <div style=\"cursor: pointer; \" class=\"prevbut\"></div>");
                    sbSmallHtml.Append(" <div style=\"cursor: pointer; \" class=\"nextbut\"></div>");
                    sbSmallHtml.Append(" <div class=\"small_list\">");
                    sbSmallHtml.Append("<ul id=\"smallimg\">");
                    for (int i = 0; i < ds.Tables[1].Rows.Count; i++)
                    {
                        if (i == 0)
                        {
                            sbBIgImgHtml.Append("<div class=\"item\">");
                            sbBIgImgHtml.Append(" <div class=\"img-box\">");
                            sbBIgImgHtml.AppendFormat("<img src='{0}' />", ds.Tables[1].Rows[ds.Tables[1].Rows.Count - 1]["original_path"]);
                            sbBIgImgHtml.Append("</div>");
                            sbBIgImgHtml.Append("</div>");
                        }
                        sbBIgImgHtml.Append("<div class=\"item\">");
                        sbBIgImgHtml.Append(" <div class=\"img-box\">");
                        sbBIgImgHtml.AppendFormat("<img src='{0}' />", ds.Tables[1].Rows[i]["original_path"]);
                        sbBIgImgHtml.Append("</div>");
                        sbBIgImgHtml.Append("</div>");


                        if (i == ds.Tables[1].Rows.Count - 1)
                        {
                            sbBIgImgHtml.Append("<div class=\"item\">");
                            sbBIgImgHtml.Append(" <div class=\"img-box\">");
                            sbBIgImgHtml.AppendFormat("<img src='{0}' />", ds.Tables[1].Rows[0]["original_path"]);
                            sbBIgImgHtml.Append("</div>");
                            sbBIgImgHtml.Append("</div>");
                        }

                        sbSmallHtml.AppendFormat("<li><img src=\"{0}\"></li>", ds.Tables[1].Rows[i]["thumb_path"]);

                    }

                    sbSmallHtml.Append(" </ul>");
                    sbSmallHtml.Append(" </div>");
                    sbSmallHtml.Append(" </div>");

                    sbBIgImgHtml.Append(" </div>");
                    sbBIgImgHtml.Append(" </div>");
                    sbBIgImgHtml.Append(" </div>");

                    divImg.InnerHtml = sbBIgImgHtml.ToString() + sbSmallHtml.ToString();
                }

            }
        }

        /// <summary>
        /// 该主题其它资源
        /// </summary>
        public void BindOtherInfo()
        {
            int ChannelId = DTRequest.GetQueryInt("nvaChannelid", 0);
            int id = DTRequest.GetQueryInt("id", 0);
            if (ChannelId > 0 && id > 0)
            {
                rptOtherList.DataSource = bll.GetList(4, " status=0  and id!=" + id + " and  channel_id=" + ChannelId, "id desc");
                rptOtherList.DataBind();
            }

        }
    }
}