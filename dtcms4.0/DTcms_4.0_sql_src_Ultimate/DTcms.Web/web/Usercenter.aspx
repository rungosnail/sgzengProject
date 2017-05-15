<%@ Page Title="" Language="C#" MasterPageFile="~/web/master.Master" AutoEventWireup="true" CodeBehind="Usercenter.aspx.cs" Inherits="DTcms.Web.web.Usercenter" %>
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
                <div class="pertitle"><span>账户总览</span></div>
                <div class="perbox">
                    <dl>
                        <dt>用户名：</dt>
                        <dd><%=userModel.user_name %></dd>
                    </dl>
                    <dl>
                        <dt>手机号：</dt>
                        <dd><%=userModel.mobile %></dd>
                    </dl>
                    <dl>
                        <dt>会员等级：</dt>
                        <dd>
                            <%if (groupModel.grade == 1)
                                {     %>
                            <em class="special"></em>年费会员畅想无限方案，限时活动价仅￥600/年  <a href="#">立即开通</a>
                            <%}
                                else
                                { %>
                            <em class="vip"></em>
                            <%} %>
                            
                            
                        </dd>
                    </dl>
                    <dl>
                        <dt>账户余额：</dt>
                        <dd><b><%=userModel.amount %></b><a href="#" class="pericon">充值</a> <span class="red">多充多送，名额有限！</span></dd>
                    </dl>
                    <div class="project">
                        <ul>
                            <li class="fa">共下载<br />
                                3个方案</li>
                            <li class="method">共获取<br />
                                100个联系方式</li>
                        </ul>
                        <div class="proad">
                            <a href="#">
                                <img src="images/index_19-21.gif" width="840" /></a>
                        </div>
                    </div>


                </div>
                <!--perbox-->


            </div>
            <!--perright-->


        </div>
        <!--personal-->
    </div>
    <!--content-->
</asp:Content>
