<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="DTcms.Web.admin.hotsearch.Index" %>

<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,initial-scale=1.0,user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <title>内容管理</title>
    <link href="../../scripts/artdialog/ui-dialog.css" rel="stylesheet" type="text/css" />
    <link href="../skin/default/style.css" rel="stylesheet" type="text/css" />
    <link href="../../css/pagination.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../scripts/jquery/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="../../scripts/jquery/jquery.lazyload.min.js"></script>
    <script type="text/javascript" src="../../scripts/artdialog/dialog-plus-min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../js/laymain.js"></script>
    <script type="text/javascript" charset="utf-8" src="../js/common.js"></script>

</head>

<body class="mainbody">
    <form id="form1" runat="server">
        <!--导航栏-->
        <div class="location">
            <a href="javascript:history.back(-1);" class="back"><i></i><span>返回上一页</span></a>
            <a href="../center.aspx" class="home"><i></i><span>首页</span></a>
            <i class="arrow"></i>
            <span>内容列表</span>
        </div>
        <!--/导航栏-->

        <!--工具栏-->
        <div id="floatHead" class="toolbar-wrap">
            <div class="toolbar">
                <div class="box-wrap">
                    <a class="menu-btn"></a>
                    <div class="l-list">
                        <ul class="icon-list">
                            <li><a class="add" href="Edit.aspx"><i></i><span>新增</span></a></li>
                            <li>
                                <asp:LinkButton ID="btnDelete" runat="server" CssClass="del" OnClientClick="return ExePostBack('btnDelete');" OnClick="btnDelete_Click"><i></i><span>删除</span></asp:LinkButton></li>
                        </ul>
                        <div class="menu-list">
                        </div>
                    </div>
                    <div class="r-list" style="display: none;">
                        <asp:TextBox ID="txtKeywords" runat="server" CssClass="keyword" />
                        <asp:LinkButton ID="lbtnSearch" runat="server" CssClass="btn-search">查询</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
        <!--/工具栏-->

        <!--列表-->
        <table class="ltable" width="100%" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr class="odd_bg">
                    <th>选择</th>
                    <th align="center">热搜词</th>
                    <th align="center">url</th>
                    <th align="center">状态</th>
                    <th align="center">发布时间</th>
                    <th align="center">排序</th>
                    <th align="center" width="10%">操作</th>
                </tr>


                <asp:Repeater ID="rptList2" runat="server">
                    <ItemTemplate>
                        <tr class="odd_bg">
                            <td align="center">
                                <span class="checkall" style="vertical-align: middle;">
                                    <asp:CheckBox ID="chkId" CssClass="checkall" runat="server" />
                                </span>
                                <asp:HiddenField ID="hidId" Value='<%#Eval("id")%>' runat="server" />
                            </td>
                            <td align="center"><a href="Edit.aspx?id=<%#Eval("id")%>"><%#Eval("title")%></a></td>
                            <td align="center"><%#Eval("url") %></td>
                            <td align="center"><%#(Eval("state").ToString()=="1"?"正常":"不显示") %></td>
                            <td align="center"><%#Eval("createdate") %></td>
                            <td align="center">
                                <%#Eval("sortid") %>
                            </td>
                            <td align="center">
                                <a href="Edit.aspx?id=<%#Eval("id")%>">修改</a>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
        <!--/列表-->

        <!--内容底部-->
        <div class="line20"></div>
        <div class="pagelist">
            <div class="l-btns">
                <span>显示</span><asp:TextBox ID="txtPageNum" runat="server" CssClass="pagenum"></asp:TextBox><span>条/页</span>
            </div>
            <div id="PageContent" runat="server" class="default"></div>
        </div>
        <!--/内容底部-->

    </form>
</body>
</html>
