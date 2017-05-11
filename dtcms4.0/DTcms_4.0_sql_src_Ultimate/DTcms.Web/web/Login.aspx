<%@ Page Title="" Language="C#" MasterPageFile="~/web/master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DTcms.Web.web.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/reg.css" rel="stylesheet" type="text/css" media="all">
    <!--content-->
    <div class="content">
        <div class="clogin">
            <div class="lbox">
                <h2>用户登录</h2>
                <ul>
                    <li>
                        <input type="text" placeholder="手机/邮箱/用户名" /></li>
                    <li class="password">
                        <input type="text" placeholder="密码" /></li>
                </ul>
                <div class="loginbut"><a href="#">登录</a></div>
                <div class="forget"><span>没有账户，<a href="#">立即注册</a></span><a href="#">忘记密码</a></div>
                <div class="other">
                    <b>合作网站帐号登录</b>
                    <p><a href="#" class="qqfl"><span>QQ登录</span></a><a href="#" class="wxfl"><span>QQ登录</span></a></p>

                </div>

            </div>
            <!--lbox-->



        </div>
        <!--clogin-->




    </div>
    <!--content-->
</asp:Content>
