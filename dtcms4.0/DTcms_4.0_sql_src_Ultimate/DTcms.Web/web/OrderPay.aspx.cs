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
        public decimal icountprice=0;
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
            int icase = DTRequest.GetQueryInt("icase", 0);
            int iphone = DTRequest.GetQueryInt("iphone", 0);
            if (id > 0 && (icase > 0 || iphone > 0))
            {
                var model = bll.GetModel(id);
                if (model != null)
                {
                    strnavtitle = model.title;

                    if (icase>0)
                    {
                        strInfoHtml.Append("<tr>");
                        strInfoHtml.Append("<td class=\"name\">" + model.title + "</td>");
                        strInfoHtml.Append(" <td>方案下载 </td>");
                        strInfoHtml.AppendFormat(" <td>{0} </td>",model.fields["market_price"]);
                        strInfoHtml.Append("<td>普通会员免费下载 </td>");
                        strInfoHtml.AppendFormat(" <td>{0} </td>", model.fields["market_price"]);
                        strInfoHtml.Append(" </tr>");
                        icountprice = icountprice + Convert.ToDecimal(model.fields["market_price"].ToString());
                    }

                    if (iphone>0)
                    {
                        strInfoHtml.Append("<tr>");
                        strInfoHtml.Append("<td class=\"name\">" + model.title + "</td>");
                        strInfoHtml.Append(" <td>资源联系 </td>");
                        strInfoHtml.AppendFormat(" <td>{0} </td>", model.fields["sell_price"]);
                        strInfoHtml.Append("<td>普通会员免费下载 </td>");
                        strInfoHtml.AppendFormat(" <td>{0} </td>", model.fields["sell_price"]);
                        strInfoHtml.Append(" </tr>");
                        icountprice = icountprice + Convert.ToDecimal(model.fields["sell_price"].ToString());
                    }

                 
                }
            }
        }
    }
}