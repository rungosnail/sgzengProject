<%@ Page Title="" Language="C#" MasterPageFile="~/web/master.Master" AutoEventWireup="true" CodeBehind="UserPwd.aspx.cs" Inherits="DTcms.Web.web.UserPwd" %>

<%@ Register Src="~/web/UserLeft.ascx" TagName="userleft" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <link href="css/personal.css" rel="stylesheet" />
    <div class="content">
        <div class="crumb">您的位置：<a href="#">活动资源网</a> > <span>动漫IP</span></div>
        <!--crumb-->
        <div class="personal">
            <uc1:userleft ID="myuc" runat="server"></uc1:userleft>
            <!--perleft-->
            <div class="perright">
                <div class="pertitle"><span>密码修改</span></div>
                <div class="data">
                    <dl>
                        <dt><span>*</span>原密码：</dt>
                        <dd>
                            <input type="text" /><span class="error">请输入密码</span></dd>
                    </dl>
                    <dl>
                        <dt><span>*</span>新密码：</dt>
                        <dd>
                            <input type="text" /></dd>
                    </dl>
                    <dl>
                        <dt><span>*</span>确认密码：</dt>
                        <dd>
                            <input type="text" /></dd>
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
