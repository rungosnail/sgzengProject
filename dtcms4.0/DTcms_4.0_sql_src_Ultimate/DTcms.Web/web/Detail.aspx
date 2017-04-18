<%@ Page Title="" Language="C#" MasterPageFile="~/web/master.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="DTcms.Web.web.Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <link href="html/carousel-mask/css/carousel-style.css" rel="stylesheet" />
    <script src="html/carousel-mask/js/carousel.js"></script>
    <div class="content">
        <div class="crumb">您的位置：<a href="#">活动资源网</a> > <a href="#">动漫IP </a>> <span>福吉兄弟</span></div>
        <!--crumb-->
        

        <div class="detail">

            <div class="dleftshow" >
            </div>
            <!--dleftshow-->

            <%--<div class="drighttext">
                <h3>福记兄弟</h3>
                <p>方案组成：两个主题场景+5个DP</p>
                <p>场地要求：100m<sup>2</sup>--200m<sup>2</sup></p>
                <p>费用预算：20-30万</p>
                <p>展期：30天</p>
                <p>方案下载：<a href="#">立即下载</a></p>
                <p>资源联系：石先生 13888888888</p>
                <ul>
                    <li>
                        <input type="checkbox" />方案下载 <s>￥5.9</s><span>￥0.0</span> （<a href="#" class="reg">注册会员</a> <span>免费体验 5次</span>）</li>
                    <li>
                        <input type="checkbox" />资源联系 <span>￥9.9</span></li>
                    <li><a href="#" class="go">年费会员畅享无限方案，限时活动价仅￥600/年</a></li>
                </ul>
                <dl>
                    <dt>售价：<b>￥100.80</b></dt>
                    <dd><a href="#">提交订单</a></dd>
                </dl>

            </div>--%>
            <!--drighttext-->


        </div>
        <!--detail-->


        <div class="otherinfo">
            <b>该主题其它资源</b>
            <ul>
                <li><a href="#">
                    <img src="images/index_25.gif" /></a><p><a href="#">福记兄弟</a></p>
                    <span>100m²-200m²    20-30万 </span></li>
                <li><a href="#">
                    <img src="images/index_25.gif" /></a><p><a href="#">福记兄弟</a></p>
                    <span>100m²-200m²    20-30万 </span></li>
                <li><a href="#">
                    <img src="images/index_25.gif" /></a><p><a href="#">福记兄弟</a></p>
                    <span>100m²-200m²    20-30万 </span></li>
                <li><a href="#">
                    <img src="images/index_25.gif" /></a><p><a href="#">福记兄弟</a></p>
                    <span>100m²-200m²    20-30万 </span></li>
            </ul>
        </div>

        <div class="ad"><a href="#">
            <img src="images/index_19-21.gif" width="1200" height="140" /></a></div>


    </div>
    <!--content-->

</asp:Content>
