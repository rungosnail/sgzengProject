<%@ Page Title="" Language="C#" MasterPageFile="~/web/master.Master" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="DTcms.Web.web.UserInfo" %>

<%@ Register Src="~/web/UserLeft.ascx" TagName="userleft" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="infoForm" id="infoForm" action="/tools/submit_ajax.ashx?action=user_info_edit" method="post">
        <link href="css/personal.css" rel="stylesheet" />
        <script type="text/javascript" charset="utf-8" src="/scripts/jquery/jquery.form.min.js"></script>
        <script type="text/javascript" charset="utf-8" src="/scripts/jquery/Validform_v5.3.2_min.js"></script>
        <script type="text/javascript" charset="utf-8" src="/scripts/artdialog/dialog-plus-min.js"></script>
        <script src="../scripts/jquery/PCASClass.js"></script>

      
        <div class="content">
            <div class="crumb">您的位置：<a href="#">活动资源网</a> > <span>动漫IP</span></div>
            <!--crumb-->
            <div class="personal">
                <uc1:userleft ID="myuc" runat="server"></uc1:userleft>
                <!--perleft-->
                <div class="perright">
                    <div class="pertitle"><span>个人资料</span></div>
                    <div class="data">
                        <dl>
                            <dt><span>*</span>用户名：</dt>
                            <dd>
                                <%=userModel.user_name %>
                            </dd>
                        </dl>
                        <dl>
                            <dt>性别：</dt>
                            <dd>
                                <label>
                                    <input name="rblSex" type="radio" style="width:25px;height:10px;margin-top:8px;" value="男" />男</label>
                                <label>
                                    <input name="rblSex" type="radio" style="width:25px;height:10px;margin-top:8px;" value="女" />女</label>
                                <label>
                                    <input name="rblSex" type="radio" value="保密"  style="width:25px;height:10px;margin-top:8px;" checked="checked" datatype="*" sucmsg=" " />保密</label>

                            </dd>
                        </dl>
                        <dl>
                            <dt><span>*</span>手机号：</dt>
                            <dd>
                                <input name="txtMobile" id="txtMobile" type="text" class="input txt" value="<%=userModel.mobile %>" datatype="m" sucmsg=" " /></dd>
                        </dl>
                        <dl>
                            <dt><span>*</span>邮箱：</dt>
                            <dd>
                                <input name="txtEmail" id="txtEmail" type="text" class="input txt" value="<%=userModel.email %>" datatype="e" sucmsg=" " /></dd>
                        </dl>
                        <dl>
                            <dt>公司名称：</dt>
                            <dd>
                                <input type="text" placeholder="请输入公司名称" name="txtcompany" id="txtcompany"  value="<%=userModel.company %>"  class="input txt"/></dd>
                        </dl>
                        <dl>
                            <dt>所属地区：</dt>
                            <dd>
                                <select id="txtProvince" name="txtProvince" class="select"></select>
                                <select id="txtCity" name="txtCity" class="select"></select>
                                <select id="txtArea" name="txtArea" class="select"></select>
                            </dd>
                        </dl>
                        <dl>
                            <dt>详细地址：</dt>
                            <dd>
                                <input name="txtAddress" id="txtAddress" type="text" class="input wide" maxlength="250" value="<%=userModel.address %>" /></dd>
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
        <!--personal-->
        <script type="text/javascript">
            $(function () {
                //初始化表单
                AjaxInitForm('#infoForm', '#btnSubmit', 1);
                //初始化地区
                var mypcas = new PCAS("txtProvince,所属省份", "txtCity,所属城市", "txtArea,所属地区");
                var areaArr = ("<%=userModel.area%>").split(",");
                if (areaArr.length == 3) {
                    mypcas.SetValue(areaArr[0], areaArr[1], areaArr[2]);
                }
            });
        </script>
        <link rel="stylesheet" href="/css/validate.css" />
        <link rel="stylesheet" type="text/css" href="/scripts/artdialog/ui-dialog.css" />
    </form>
</asp:Content>
