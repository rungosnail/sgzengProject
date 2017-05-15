<%@ Page Title="" Language="C#" MasterPageFile="~/web/master.Master" AutoEventWireup="true" CodeBehind="UserBuys.aspx.cs" Inherits="DTcms.Web.web.UserBuys" %>
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
                <div class="pertitle"><span>我购买的资源</span></div>
                <div class="myzy">
                    <ul>
                        <li>
                            <div><em>购买时间：2017-03-25 18:36</em><em>订单编号：397u84574543</em></div>
                            <p><a href="#" class="downicon">下载方案</a><a href="#">资源概述 ></a></p>
                            <dl>
                                <dt><a href="#">
                                    <img src="images/index_25.gif" width="190" height="80" /></a></dt>
                                <dd><b>福吉兄弟</b><span>费用预算：20-30万 </span><span class="contact">联系方式：石先生 13888888888</span></dd>
                            </dl>
                        </li>
                        <li>
                            <div><em>购买时间：2017-03-25 18:36</em><em>订单编号：397u84574543</em></div>
                            <p><a href="#" class="downicon">下载方案</a><a href="#">资源概述 ></a></p>
                            <dl>
                                <dt><a href="#">
                                    <img src="images/index_25.gif" width="190" height="80" /></a></dt>
                                <dd><b>福吉兄弟</b><span>费用预算：20-30万 </span><span class="contact">联系方式：石先生 13888888888</span></dd>
                            </dl>
                        </li>
                        <li>
                            <div><em>购买时间：2017-03-25 18:36</em><em>订单编号：397u84574543</em></div>
                            <p><a href="#" class="downicon">下载方案</a><a href="#">资源概述 ></a></p>
                            <dl>
                                <dt><a href="#">
                                    <img src="images/index_25.gif" width="190" height="80" /></a></dt>
                                <dd><b>福吉兄弟</b><span>费用预算：20-30万 </span><span class="contact">联系方式：石先生 13888888888</span></dd>
                            </dl>
                        </li>

                        <li>
                            <div><em>购买时间：2017-03-25 18:36</em><em>订单编号：397u84574543</em></div>
                            <p><a href="#" class="downicon">下载方案</a><a href="#">资源概述 ></a></p>
                            <dl>
                                <dt><a href="#">
                                    <img src="images/index_25.gif" width="190" height="80" /></a></dt>
                                <dd><b>福吉兄弟</b><span>费用预算：20-30万 </span><span class="contact">联系方式：石先生 13888888888</span></dd>
                            </dl>
                        </li>

                    </ul>
                </div>



            </div>
            <!--perright-->
            <div class="clear"></div>

        </div>
        <!--personal-->
    </div>
    <!--content-->
</asp:Content>
