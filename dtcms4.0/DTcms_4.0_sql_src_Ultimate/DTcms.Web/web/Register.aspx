<%@ Page Title="" Language="C#" MasterPageFile="~/web/master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="DTcms.Web.web.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/reg.css" rel="stylesheet" type="text/css" media="all">
    <script src="scripts/jquery.form.min.js"></script>
    <script src="scripts/Validform_v5.3.2_min.js"></script>
    <script src="scripts/register-validate.js"></script>
    <link href="scripts/artdialog/ui-dialog.css" rel="stylesheet" />
    <script src="scripts/artdialog/dialog-plus-min.js"></script>
    <link href="../css/validate.css" rel="stylesheet" />
    <form id="regform" name="regform" method="post" action="/tools/submit_ajax.ashx?action=user_register&site=main">
        <!--content-->
        <div class="content">
            <div class="reg">

                <div class="regbox">
                    <h2>用户注册</h2>
                    <dl>
                        <dt>用户名</dt>
                        <dd>
                            <input id="txtUserName" name="txtUserName" type="text" placeholder="输入登录用户名" datatype="s3-50" nullmsg="请输入登录的用户名" sucmsg=" " ajaxurl="/tools/submit_ajax.ashx?action=validate_username" />
                            <span class="Validform_checktip">请输入登录的用户名</span>
                        </dd>
                    </dl>
                    <dl>
                        <dt>密码</dt>
                        <dd>
                            <input id="txtPassword" name="txtPassword" type="password"  placeholder="输入登录密码" datatype="*6-20" nullmsg="请输入登录密码" errormsg="密码范围在6-20位之间" sucmsg=" " />
                            <span class="Validform_checktip">请输入6-20位的登录密码</span>

                        </dd>
                    </dl>
                    <dl>
                        <dt>确认密码</dt>
                        <dd>
                            <input id="txtPassword1" name="txtPassword1" type="password"  placeholder="请再次输入密码" datatype="*" recheck="txtPassword" nullmsg="请再输入一次密码" errormsg="两次输入的密码不一致" sucmsg=" " />
                            <span class="Validform_checktip">请再次输入登录密码</span>

                        </dd>
                    </dl>
                    <dl>
                        <dt>手机</dt>
                        <dd>
                            <input id="txtMobile" name="txtMobile" type="text"  placeholder="输入手机号码" datatype="m" nullmsg="请输入手机号码" sucmsg=" " />
                            <span class="Validform_checktip">请输入手机号码</span>
                        </dd>
                    </dl>
                    <dl>
                        <dt>邮箱</dt>
                        <dd>
                            <input id="txtEmail" name="txtEmail" type="text"  placeholder="输入邮箱账号" datatype="e" nullmsg="请输入电子邮箱账号" sucmsg=" " />
                            <span class="Validform_checktip">请输入电子邮箱账号</span>
                        </dd>
                    </dl>
                    <dl style="display: none;">
                        <dt>动态验证码</dt>
                        <dd class="code">
                            <input type="text" placeholder="手机/邮箱" /><p>
                                <b>
                                    <img src="images/codeimg.jpg" /></b><a href="#">点击图片刷新验证码</a>
                            </p>
                            <span>*</span></dd>
                    </dl>
                    <dl>
                        <dt>验证码</dt>
                        <dd class="hqcode">
                            <input id="txtCode" name="txtCode" type="text" placeholder="输入验证码" datatype="s4-20" nullmsg="请输入右边显示的验证码"  />
                            <a class="send" title="点击切换验证码" href="javascript:;" onclick="ToggleCode(this, '/tools/verify_code.ashx');return false;">
                                <img src="/tools/verify_code.ashx" width="80" height="22" />
                            </a>

                        </dd>
                    </dl>
                    <div class="tips">
                        <input type="checkbox" checked="checked" /><p>我已阅读并同意<a href="#" target="_blank">《服务协议》</a></p>
                    </div>
                    <div class="register"><input id="btnSubmit" class="btnReg" style="cursor:pointer;" name="btnSubmit" type="submit" value="立即注册"  /></div>
                    <div class="note" style="text-align:center">
                        <%--<div class="nleft" >合作网站账户登录：<a href="#" class="qqlogin">QQ登录</a><a href="#" class="wxlogin">微信登录</a></div>--%>
                        <div>已是会员?<a href="Login.aspx" style="color:#ff7c35">登录</a></div>
                    </div>

                </div>

            </div>
            <!--reg-->




        </div>
        <!--content-->
    </form>
</asp:Content>
