<%@ Page Title="" Language="C#" MasterPageFile="~/web/master.Master" AutoEventWireup="true" CodeBehind="UserPwd.aspx.cs" Inherits="DTcms.Web.web.UserPwd" %>

<%@ Register Src="~/web/UserLeft.ascx" TagName="userleft" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="pwdForm" id="pwdForm" action="/tools/submit_ajax.ashx?action=user_password_edit" method="post">
        <link href="css/personal.css" rel="stylesheet" />
        <script type="text/javascript" charset="utf-8" src="/scripts/jquery/jquery.form.min.js"></script>
        <script type="text/javascript" charset="utf-8" src="/scripts/jquery/Validform_v5.3.2_min.js"></script>
        <script type="text/javascript" charset="utf-8" src="/scripts/artdialog/dialog-plus-min.js"></script>

        <div class="content">
            <div class="crumb">您的位置：<a href="#">个人中心</a> > <span>密码修改</span></div>
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
                                <input name="txtOldPassword" id="txtOldPassword" type="password" class="input txt"  datatype="*6-20" nullmsg="请输入旧密码"  errormsg="密码范围在6-20位之间" sucmsg=" " />
                            </dd>
                        </dl>
                        <dl>
                            <dt><span>*</span>新密码：</dt>
                            <dd>
                                <input name="txtPassword" id="txtPassword" type="password" class="input txt"  datatype="*6-20"  nullmsg="请输入新密码"  errormsg="密码范围在6-20位之间" sucmsg=" " /></dd>
                        </dl>
                        <dl>
                            <dt><span>*</span>确认密码：</dt>
                            <dd>
                                <input name="txtPassword1" id="txtPassword1" type="password" class="input txt"  datatype="*"  recheck="txtPassword"  nullmsg="请再输入一次新密码"  errormsg="两次输入的密码不一致"  sucmsg=" " /></dd>
                        </dl>
                        <div class="but">
                           <input name="btnSubmit" style="cursor: pointer;" id="btnSubmit" type="submit" class="btnsave" value="确定" />

                        </div>
                    </div>

                </div>

            </div>
            <!--perright-->
            <div class="clear"></div>

        </div>
        <link rel="stylesheet" href="/css/validate.css" />
        <link rel="stylesheet" type="text/css" href="/scripts/artdialog/ui-dialog.css" />
         <script type="text/javascript">
            $(function () {
                //初始化表单
                AjaxInitForm('#pwdForm', '#btnSubmit', 1);
            });
        </script>
    </form>
</asp:Content>
