<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPay.aspx.cs" Inherits="DTcms.Web.web.OrderPay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/swiper.min.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/common.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/list.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="content">
            <div class="crumb">您的位置：<a href="Index.aspx">活动资源网</a> > <a href="List.aspx?nvaChannelid=<%=ChannelId %>"><%=strChannelTitle %> </a>> <span><%=strnavtitle %></span></div>
            <!--crumb-->

            <div class="paybox">

                <div class="process">
                    <ul>
                        <li class="cart oncur"><em class="on"></em><span>确认订单</span></li>
                        <!---->
                        <li class="carrow"></li>
                        <li class="confirmpay"><em></em><span>订单支付</span></li>
                        <li class="carrow"></li>
                        <li class="subicon"><em></em><span>支付成功</span></li>
                        <li class="carrow"></li>
                        <li class="buyicon"><em></em><span>查看个人中心<br />
                            我购买的资源</span></li>
                    </ul>
                </div>
                <!--process-->

                <div class="confirm">
                    <b>确认订单信息</b>
                    <table cellpadding="0" cellspacing="1" border="0">
                        <tr>
                            <th class="name">资源名称</th>
                            <th>购买内容</th>
                            <th>售价</th>
                            <th>优惠方式</th>
                            <th>小计</th>
                        </tr>
                        <%=strInfoHtml.ToString() %>
                    </table>
                </div>
                <!--confirm-->

                <div class="confirm">
                    <b>支付方式</b>
                    <ul id="ulpay">
                        <li>
                            <input type="radio" name="payItem" /><span class="balance">余额</span><span>（ 剩余：<strong>50.00</strong>元<a href="#">刷新</a> ）</span><a href="#" class="money">余额充值</a><span class="red">多充多送，名额有限</span></li>
                        <li>
                            <input type="radio" name="payItem"  /><span class="alipay">支付宝</span></li>
                        <li>
                            <input type="radio" name="payItem"  /><span class="wx">微信</span></li>
                        <li>
                            <input type="radio" name="payItem"  /><span class="bankcard">银联</span></li>
                    </ul>
                </div>
                <!--confirm-->

                <dl>
                    <dt>年费会员畅享无限下载，限时活动价仅<span>￥600/年</span><a href="#">立即开通</a></dt>
                    <dd><span>合计：<strong>￥<%=icountprice %></strong></span><a href="#">立即支付</a></dd>
                </dl>

            </div>
            <!--paybox-->




        </div>
        <!--content-->
    </form>
</body>
</html>
