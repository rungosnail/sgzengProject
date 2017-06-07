using DTcms.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace DTcms.Web.web
{
    public partial class OrderPay : System.Web.UI.Page
    {

        public BLL.article bll = new BLL.article();

        public string strnavtitle = "";
        public string strChannelTitle = "";
        public decimal icountprice = 0;
        public int ChannelId = 0;
        public StringBuilder strInfoHtml = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                OrderInfo(DTRequest.GetQueryInt("id", 0));
            }
        }

        public void OrderInfo(int id)
        {

            if (!string.IsNullOrEmpty(DTRequest.GetQueryString("type")) && DTRequest.GetQueryString("type") == "Star")
            {
                ChannelId = 10;
                BLL.starexpert sbll = new BLL.starexpert();
                Model.starexpert model = new Model.starexpert();
                model = sbll.GetModel(id);
                strInfoHtml.Append("<tr>");
                strInfoHtml.Append("<td class=\"name\">" + model.name + "</td>");
                strInfoHtml.Append(" <td>资源联系 </td>");
                strInfoHtml.AppendFormat(" <td>{0} </td>", model.linkprice);
                strInfoHtml.Append("<td>普通会员免费下载 </td>");
                strInfoHtml.AppendFormat(" <td>{0} </td>", model.linkprice);
                strInfoHtml.Append(" </tr>");
                icountprice = icountprice + Convert.ToDecimal(model.linkprice.ToString());
                strnavtitle = model.name;
                strChannelTitle = "明星专家";
            }
            else
            {
                int icase = DTRequest.GetQueryInt("icase", 0);
                int iphone = DTRequest.GetQueryInt("iphone", 0);
                if (id > 0 && (icase > 0 || iphone > 0))
                {
                    var model = bll.GetdtArticleDetail(id);

                    if (model.Tables[0].Rows.Count > 0)
                    {
                        strnavtitle = model.Tables[0].Rows[0]["title"].ToString();
                        strChannelTitle = model.Tables[0].Rows[0]["chtitle"].ToString();
                        ChannelId = Convert.ToInt32(model.Tables[0].Rows[0]["channel_id"]);
                        //  strnavtitle = model.title;

                        if (icase > 0)
                        {
                            strInfoHtml.Append("<tr>");
                            strInfoHtml.Append("<td class=\"name\">" + model.Tables[0].Rows[0]["title"].ToString() + "</td>");
                            strInfoHtml.Append(" <td>方案下载 </td>");
                            strInfoHtml.AppendFormat(" <td>{0} </td>", model.Tables[0].Rows[0]["market_price"].ToString());
                            strInfoHtml.Append("<td>普通会员免费下载 </td>");
                            strInfoHtml.AppendFormat(" <td>{0} </td>", model.Tables[0].Rows[0]["market_price"].ToString());
                            strInfoHtml.Append(" </tr>");
                            icountprice = icountprice + Convert.ToDecimal(model.Tables[0].Rows[0]["market_price"].ToString());
                        }

                        if (iphone > 0)
                        {
                            strInfoHtml.Append("<tr>");
                            strInfoHtml.Append("<td class=\"name\">" + model.Tables[0].Rows[0]["title"].ToString() + "</td>");
                            strInfoHtml.Append(" <td>资源联系 </td>");
                            strInfoHtml.AppendFormat(" <td>{0} </td>", model.Tables[0].Rows[0]["sell_price"].ToString());
                            strInfoHtml.Append("<td>普通会员免费下载 </td>");
                            strInfoHtml.AppendFormat(" <td>{0} </td>", model.Tables[0].Rows[0]["sell_price"].ToString());
                            strInfoHtml.Append(" </tr>");
                            icountprice = icountprice + Convert.ToDecimal(model.Tables[0].Rows[0]["sell_price"].ToString());
                        }

                    }

                
                }
            }

        }
    }
}