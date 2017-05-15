<%@ Page Title="" Language="C#" MasterPageFile="~/web/master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DTcms.Web.web.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/reg.css" rel="stylesheet" type="text/css" media="all">
    <link href="/scripts/artdialog/ui-dialog.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" charset="utf-8" src="/scripts/artdialog/dialog-plus-min.js"></script>
    <script src="scripts/jquery-1.11.2.min.js"></script>
    <script src="scripts/common.js"></script>
    <script src="scripts/login-validate.js?v=1990"></script>

    <form id="loginform" name="loginform">
        <div class="content">
            <div class="clogin">
                <div class="lbox">
                    <h2>用户登录</h2>
                    <ul>
                        <li>
                            <input id="txtUserName" name="txtUserName" type="text" placeholder="用户名/手机/邮箱" />
                        </li>
                        <li class="password">
                            <input id="txtPassword" name="txtPassword" type="password" placeholder="输入登录密码" />
                        </li>
                    </ul>
                    <div class="loginbut">
                        <input id="btnSubmit" name="btnSubmit" class="loginbutbutton" type="submit" style="cursor: pointer;" value="登 录">
                    </div>
                    <div id="msgtips" style="margin-left: 150px; color: red"></div>
                    <div class="forget"><span>没有账户，<a href="#">立即注册</a></span><a href="#">忘记密码</a></div>
                    <div class="other" style="display: none;">
                        <b>合作网站帐号登录</b>
                        <p><a href="#" class="qqfl"><span>QQ登录</span></a><a href="#" class="wxfl"><span>QQ登录</span></a></p>

                    </div>

                </div>
                <!--lbox-->



            </div>
            <!--clogin-->




        </div>
    </form>
    <!--content-->

    <!--content-->
</asp:Content>
