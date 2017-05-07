using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace DTcms.Web.web
{
    public partial class Right : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BLL.article bll = new BLL.article();
                DataSet ds = new DataSet();
                ds = bll.GetList(8, " is_hot=1 AND status=0 ", " id DESC");
                if (ds.Tables[0].Rows.Count > 0)
                {
                    StringBuilder sbHtml = new StringBuilder();
                    sbHtml.Append("<a href=\"Detail.aspx?nvaChannelid=" + ds.Tables[0].Rows[0]["channel_id"] + "&id=" + ds.Tables[0].Rows[0]["id"] + "\"><img src=\"" + ds.Tables[0].Rows[0]["img_url"] + "\" width=\"280\" height=\"140\" /></a>");
                    sbHtml.Append("    <ul>");
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        if (i != 0 && i != ds.Tables[0].Rows.Count - 1)
                        {
                            sbHtml.Append(" <li><a href=\"Detail.aspx?nvaChannelid=" + ds.Tables[0].Rows[i]["channel_id"] + "&id=" + ds.Tables[0].Rows[i]["id"] + "\">" + ds.Tables[0].Rows[i]["title"] + "</a></li>");
                        }

                    }
                    sbHtml.Append("</ul>");

                    sbHtml.Append("<div class=\"rad\">");
                    sbHtml.Append("<a href=\"Detail.aspx?nvaChannelid=" + ds.Tables[0].Rows[ds.Tables[0].Rows.Count - 1]["channel_id"] + "&id=" + ds.Tables[0].Rows[ds.Tables[0].Rows.Count - 1]["id"] + "\"><img src=\"" + ds.Tables[0].Rows[ds.Tables[0].Rows.Count - 1]["img_url"] + "\" width=\"280\" height=\"140\" /></a>");
                    sbHtml.Append("</div>");

                    divsright.InnerHtml = sbHtml.ToString();
                }
            }
        }
    }
}