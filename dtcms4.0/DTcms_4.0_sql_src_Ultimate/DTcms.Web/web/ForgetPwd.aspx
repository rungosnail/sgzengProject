<%@ Page Title="" Language="C#" MasterPageFile="~/web/master.Master" AutoEventWireup="true" CodeBehind="ForgetPwd.aspx.cs" Inherits="DTcms.Web.web.ForgetPwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>找回密码</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <link href="css/personal.css" rel="stylesheet" type="text/css" media="all">

        <script src="scripts/jquery-1.11.2.min.js"></script>
        <!--content-->

        <div class="content">
            <div class="forget">
                <div class="ftitle"><span>找回密码</span></div>

                <div class="forbox">
                    <dl>
                        <dt>邮箱：</dt>
                        <dd>
                            <input id="Email" name="Email" type="text" placeholder="请输入注册时的邮箱" style="float: left" />
                            <span id="sperrorEmail" class="error" style="display: none; float: left; margin-left: 20px;">请输入邮箱</span>
                        </dd>
                    </dl>
                    <dl>
                        <dt>验证码：</dt>
                        <dd>
                            <p>
                                <input type="button"  style="cursor:pointer;" class="codebutton" onclick="findpwdInfo()" id="spcodeInfo" value="获取邮箱验证码" />
                               
                            </p>
                        </dd>
                    </dl>
                    <dl>
                        <dt>新登录密码：</dt>
                        <dd>
                            <input type="password" id="txtPwd1" name="txtPwd1" placeholder="密码" style="float: left" />
                            <span id="sppwd1" class="error" style="display: block; float: left; margin-left: 20px;">请输入新密码</span>
                        </dd>

                    </dl>
                    <dl>
                        <dt>确认新登录密码：</dt>
                        <dd>
                            <input type="password" id="txtPwd2" name="txtPwd2" placeholder="确认密码" style="float: left" />
                            <span id="sppwd2" class="error" style="display: block; float: left; margin-left: 20px;">请二次输入新密码</span>
                        </dd>
                    </dl>

                    <div class="back">
                        <a style="cursor: pointer;" onclick="Save()">确认找回</a>
                    </div>
                </div>

            </div>
            <!--forget-->

        </div>

        <script type="text/javascript">
            function findpwdInfo() {
                var email = $.trim($("#Email").val());
                if (email.length == 0) {
                    $("#sperrorEmail").show();
                    return false;
                }
                $.ajax({
                    type: "POST",
                    url: "/tools/submit_ajax.ashx?action=ForgetPwd",
                    dataType: "json",
                    data: { email: email },
                    success: function (data, textStatus) {
                        settime();
                        if (data.status == 1) {
                            
                        } else {

                        }
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        $("#msgtips").text("状态：" + textStatus + "；出错提示：" + errorThrown);
                    }
                });


            }

            var countdown = 60;
            function settime() {
                if (countdown == 0) {
                    $("#spcodeInfo").removeAttr("disabled");
                    $("#spcodeInfo").val("免费获取验证码");
                    countdown = 60;
                } else {
                    $("#spcodeInfo").attr("disabled", true);
                    $("#spcodeInfo").val ("重新发送(" + countdown + ")");
                    countdown--;
                }
                setTimeout(function () {
                    settime()
                }, 1000)
            } 

            function Save() {
                var email = $.trim($("#Email").val());
                var VerificationCode = $.trim($("#txtVerificationCode").val());
                var pwd1 = $.trim($("#txtPwd1").val());
                var pwd2 = $.trim($("#txtPwd2").val());
                if (email.length == 0) {
                    $("#sperrorEmail").show();
                    return false;
                }
                if (VerificationCode.length == 0) {
                    return false;
                }
                if (pwd1.length == 0) {
                    $("#sppwd1").show();
                    return false;
                }
                if (pwd2.length == 0) {
                    $("#sppwd2").show();
                    return false;
                }
                if (pwd1.length > 0 && pwd2.length > 0) {
                    if (pwd1 != pwd2) {
                        $("#sppwd2").html("两次密码输入不一致");
                        $("#sppwd2").show();
                        return false;
                    }
                }

                $.ajax({
                    type: "POST",
                    url: "/tools/submit_ajax.ashx?action=ResetPwd",
                    dataType: "json",
                    data: { email: email, txtCode: VerificationCode, txtPassword: pwd2 },
                    success: function (data, textStatus) {
                        if (data.status == 1) {
                            $("#msgtips").text(data.msg);
                        } else {

                        }
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        $("#msgtips").text("状态：" + textStatus + "；出错提示：" + errorThrown);
                    }
                });
            }
        </script>
    </form>


</asp:Content>
