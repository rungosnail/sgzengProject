<%@ Page Title="" Language="C#" MasterPageFile="~/web/master.Master" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="DTcms.Web.web.SearchResult" %>

<%@ Register TagName="righuc" TagPrefix="uc1" Src="~/web/Right.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--nav-->

    <div class="content">

        <div class="search">
            <div class="sleft">
                <div class="result">搜索关键字<span id="spkeyword"> </span>, 共 <span><%=totalCount %></span> 个结果</div>
                <%if (totalCount == 0)
                    {  %>
                <div class="noresult">
                    <p>诶呀！暂时没有找到与<span id="spNokeyword"></span>相关的资源</p>
                </div>
                <%}
                else
                { %>
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
                <%} %>

                <div id="PageContent" runat="server" class="paging">
                </div>

            </div>
            <!--sleft-->

            <uc1:righuc ID="myuc" runat="server"></uc1:righuc>
            <!--sright-->

        </div>
        <!--search-->





    </div>
    <!--content-->
    <script type="text/javascript">
        //获取url中的参数
        function getUrlParam(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
            var r = window.location.search.substr(1).match(reg);  //匹配目标参数
            if (r != null) return unescape(r[2]); return null; //返回参数值
        }

        $(document).ready(function () {
            var skey = getUrlParam("keyword");
            if ($("#spNokeyword").val() != undefined) {
                $("#spNokeyword").html("\"" + skey + "\"");
            } else {
                $("#spkeyword").html("\"" + skey + "\"");
            }
            $("#txtkeyword").val(skey);
            
           
        });
    </script>
</asp:Content>
