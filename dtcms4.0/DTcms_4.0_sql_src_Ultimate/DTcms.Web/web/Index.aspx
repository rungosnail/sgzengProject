<%@ Page Title="" Language="C#" MasterPageFile="~/web/master.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="DTcms.Web.web.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="css/index.css" rel="stylesheet" />
    <div class="content">

        <div class="self">
            <b class="selftitle">自营资源</b>
            <dl>
                <dt>
                    
                        <asp:Repeater ID="rptProprietary" runat="server">
                            <HeaderTemplate>
                                <ul>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <li><a href="#">
                                    <img src="<%#Eval("img_url") %>" width="430" height="260" /></a>
                                    <span><a href="#"><%#Eval("title") %></a></span>
                                </li>
                            </ItemTemplate>
                            <FooterTemplate>
                                </ul>
                            </FooterTemplate>
                        </asp:Repeater>
                    
                </dt>
                <dd>
                    <%=RightHtml %>

                    <ul>
                        <asp:Repeater ID="rptReadList" runat="server">
                            <ItemTemplate>
                                <li><a href="#"><%#Eval("title") %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </dd>
            </dl>
        </div>
        <!--self-->



        <%=sbHtml.ToString() %>
    </div>

    
</asp:Content>

