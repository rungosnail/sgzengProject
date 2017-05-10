<%@ Page Language="C#" MasterPageFile="~/web/master.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="DTcms.Web.web.List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="crumb">您的位置：<a href="#">活动资源网</a> > <span id="spNavtitle">动漫IP</span></div>
        <!--crumb-->

        <div class="list">
            <div class="subtitle"><b>最新主题</b></div>
            <asp:Repeater ID="rptlist" runat="server">
                <HeaderTemplate>
                    <ul>
                </HeaderTemplate>
                <ItemTemplate>
                    <li>
                        <a href='<%#Eval("channel_id").ToString()=="10"?("StarexpertList.aspx?nvaChannelid="+Eval("channel_id")+"&id="+Eval("id")):("Detail.aspx?nvaChannelid="+Eval("channel_id")+"&id="+Eval("id"))%>'>
                            <img src="<%#Eval("img_url") %>" /></a>
                        <p><a href=' <%# Eval("channel_id").ToString()=="10"?("StarexpertList.aspx?nvaChannelid="+Eval("channel_id")+"&id="+Eval("id")):("Detail.aspx?nvaChannelid="+Eval("channel_id")+"&id="+Eval("id"))%>'><%#(Eval("channel_id").ToString()=="10"?Eval("name"):Eval("title")) %></a></p>
                        
                        <span><%# Eval("channel_id").ToString()=="10"?Eval("name"):Eval("site_requirements") %> &nbsp;&nbsp;<%#Eval("channel_id").ToString()=="10"?Eval("job_occupation"):Eval("cost_budget") %></span>
                        
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
    <script type="text/javascript">
        $(document).ready(function () {
            var navtitle = $("#hdnavtitle").val();
            if (navtitle != "") {
                $("#spNavtitle").html(navtitle);
                $(".subtitle b").html(navtitle);
            }
        });
    </script>
</asp:Content>
