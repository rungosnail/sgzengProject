<%@ Page Language="C#" MasterPageFile="~/web/master.Master" AutoEventWireup="true" CodeBehind="StarexpertList.aspx.cs" Inherits="DTcms.Web.web.StarexpertList" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="crumb">您的位置：<a href="#">活动资源网</a> > <a href="#">明星专家</a>> <span><%=Name %></span></div>
        <!--crumb-->



        <div class="stardetail">
            <dl>
                <dt>
                    <p>
                        <img src="<%=img_url %>" />
                    </p>
                </dt>
                <dd>
                    <b><%=Name %></b>
                    <span><%=job_occupation %></span>
                    <p><strong>￥ <%=linkprice %></strong><a href="OrderPay.aspx?type=Star&id=<%=id %>">联系资源</a></p>
                </dd>
            </dl>
        </div>
        <!--stardetail-->
        <div class="starindu">
            <p><%=AboutDesc %></p>
        </div>

        <div class="otherinfo">
            <b>该主题其它资源</b>

            <ul>
                <asp:Repeater ID="rptOtherList" runat="server">
                    <ItemTemplate>
                        <li><a href="StarexpertList.aspx?id=<%#Eval("id") %>">
                            <img src="<%#Eval("img_url") %>" /></a><p><a href="StarexpertList.aspx?id=<%#Eval("id") %>"><%#Eval("name") %></a></p>
                            <span><%#Eval("job_occupation") %> </span></li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>

        <div class="ad">
            <a href="#">
                <img src="images/index_19-21.gif" width="1200" height="140" /></a>
        </div>
    </div>
    <!--content-->
</asp:Content>
