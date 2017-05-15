<%@ Page Title="" Language="C#" MasterPageFile="~/web/master.Master" AutoEventWireup="true" CodeBehind="UserRecords.aspx.cs" Inherits="DTcms.Web.web.UserRecords" %>
 <%@ Register Src="~/web/UserLeft.ascx" TagName="userleft" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/personal.css" rel="stylesheet" />
    <div class="content">
        <div class="crumb">您的位置：<a href="#">活动资源网</a> > <span>动漫IP</span></div>
        <!--crumb-->
        <div class="personal">
                    <uc1:userleft  id="myuc" runat="server"></uc1:userleft>
            <!--perleft-->
            <div class="perright">
                <div class="pertitle"><span>账户记录</span></div>
                <div class="yg">
                    <dl>
                        <dt>账户余额：<b>￥0.0</b></dt>
                        <dd><span>多买多送，名额有限</span><a href="#">充值</a></dd>
                    </dl>
                </div>
                <div class="time">
                    <dl>
                        <dt><span>时间：</span><input type="text" /><input type="text" /><a href="#">搜索</a></dt>
                        <dd><a href="#" class="choose">全部</a><a href="#">收入</a><a href="#">支出</a></dd>
                    </dl>
                    <div class="clear"></div>
                    <table cellspacing="5" cellpadding="0" border="0">
                        <tr>
                            <th class="ptime">时间</th>
                            <th class="ps">收入/支出</th>
                            <th class="pric">金额</th>
                            <th class="pbz">备注</th>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td class="plus">+50.00</td>
                            <td>支付宝充值</td>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td>+50.00</td>
                            <td>订单：201703250001</td>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td class="minus">-50.00</td>
                            <td>支付宝充值</td>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td class="plus">+50.00</td>
                            <td>支付宝充值</td>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td>+50.00</td>
                            <td>支付宝充值</td>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td class="minus">-50.00</td>
                            <td>支付宝充值</td>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td class="plus">+50.00</td>
                            <td>支付宝充值</td>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td>+50.00</td>
                            <td>支付宝充值</td>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td class="minus">-50.00</td>
                            <td>支付宝充值</td>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td class="plus">+50.00</td>
                            <td>支付宝充值</td>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td>+50.00</td>
                            <td>支付宝充值</td>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td class="minus">-50.00</td>
                            <td>支付宝充值</td>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td class="plus">+50.00</td>
                            <td>支付宝充值</td>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td>+50.00</td>
                            <td>支付宝充值</td>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td class="minus">-50.00</td>
                            <td>支付宝充值</td>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td class="plus">+50.00</td>
                            <td>支付宝充值</td>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td>+50.00</td>
                            <td>订单：201703250001</td>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td class="minus">-50.00</td>
                            <td>支付宝充值</td>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td class="plus">+50.00</td>
                            <td>支付宝充值</td>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td>+50.00</td>
                            <td>支付宝充值</td>
                        </tr>
                        <tr>
                            <td>2017-03-25 22:35</td>
                            <td>收入</td>
                            <td class="minus">-50.00</td>
                            <td>支付宝充值</td>
                        </tr>
                    </table>
                </div>
                <div class="paging"><a href="#">首页</a><a href="#" class="on">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">...</a><a href="#">1021</a><a href="#">&gt;&gt;</a><a href="#">末页</a></div>

            </div>
            <!--perright-->
            <div class="clear"></div>

        </div>
        <!--personal-->
    </div>
    <!--content-->
</asp:Content>
