<%@ Page Title="" Language="C#" MasterPageFile="~/web/master.Master" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="DTcms.Web.web.UserInfo" %>

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
                <div class="pertitle"><span>个人资料</span></div>
                <div class="data">
                    <dl>
                        <dt><span>*</span>用户名：</dt>
                        <dd>
                            <input type="text" placeholder="spencer" /></dd>
                    </dl>
                    <dl>
                        <dt><span>*</span>手机号：</dt>
                        <dd>
                            <input type="text" placeholder="1239987988" /></dd>
                    </dl>
                    <dl>
                        <dt><span>*</span>邮箱：</dt>
                        <dd>
                            <input type="text" placeholder="spencer@163.com" /></dd>
                    </dl>
                    <dl>
                        <dt>公司名称：</dt>
                        <dd>
                            <input type="text" placeholder="上海333" /></dd>
                    </dl>
                    <dl>
                        <dt>所在区域：</dt>
                        <dd>
                            <select>
                                <option>上海市</option>
                                <option>上海市</option>
                            </select><select><option>上海市</option>
                                <option>上海市</option>
                            </select></dd>
                    </dl>
                    <div class="but"><a href="#">确定</a></div>


                </div>

            </div>

        </div>
        <!--perright-->
        <div class="clear"></div>

    </div>
    <!--personal-->
</asp:Content>
