<%@ Page Title="" Language="C#" MasterPageFile="~/web/master.Master" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="DTcms.Web.web.SearchResult" %>

<%@ Register TagName="righuc" TagPrefix="uc1" Src="~/web/Right.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--nav-->

    <div class="content">

        <div class="search">
            <div class="sleft">
                <div class="result">搜索关键字<span> "福吉兄弟"</span>, 共 <span>18</span> 个结果</div>
                <div class="rlist">
                    <asp:Repeater ID="rptlist" runat="server">
                        <HeaderTemplate>
                            <ul>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <li>
                                <a href="Detail.aspx?nvaChannelid=<%#Eval("channel_id") %>&id=<%#Eval("id") %>" class="dicon">资源详情</a>
                                <dl>
                                    <dt><a href="Detail.aspx?nvaChannelid=<%#Eval("channel_id") %>&id=<%#Eval("id") %>">
                                        <img src="<%#Eval("img_url") %>" width="190" height="80" /></a></dt>
                                    <dd><span><%#Eval("title") %></span><p><%#Eval("composition_scheme") %> </p>
                                    </dd>
                                </dl>
                            </li>
                        </ItemTemplate>
                        <FooterTemplate>
                            </ul>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>

                <div id="PageContent" runat="server" class="paging">
                </div>

            </div>
            <!--sleft-->

            <uc1:righuc id="myuc" runat="server"></uc1:righuc>
            <!--sright-->

        </div>
        <!--search-->





    </div>
    <!--content-->
</asp:Content>
