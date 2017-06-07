<%@ Page Title="" Language="C#" MasterPageFile="~/web/master.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="DTcms.Web.web.Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1">
        <link href="html/carousel-mask/css/carousel-style.css" rel="stylesheet" />
        <script src="html/carousel-mask/js/carousel.js"></script>
        <link href="css/carousel-style.css" rel="stylesheet" />
        <div class="content">
            <div class="crumb">您的位置：<a href="Index.aspx">活动资源网</a> > <a href="List.aspx?nvaChannelid=<%=ChannelId %>"><%=schannel %> </a>> <span><%=title %></span></div>
            <div class="detail">

                <div class="dleftshow" id="divImg" runat="server">
                </div>


                <div class="drighttext">
                    <asp:Repeater ID="rptInfo" runat="server">
                        <ItemTemplate>
                            <h3><%#Eval("title") %></h3>
                            <p>方案组成：<%#Eval("composition_scheme") %></p>
                            <p>场地要求：<%#Eval("site_requirements") %></p>
                            <p>费用预算：<%#Eval("cost_budget") %></p>
                            <p>展期：<%#Eval("exhibition_time") %></p>
                            <p>方案下载：<a href="#">立即下载</a></p>
                            <p>资源联系：<%#Eval("resource_linkage") %></p>
                            <ul id="ckul">
                                <li>
                                    <input id="ckmarketprice" checked="checked" type="checkbox" name="ckPrice" value="<%#Eval("market_price") %>" />方案下载<span>￥<%#Eval("market_price") %></span> （<a href="#" class="reg">注册会员</a> <span>免费体验 5次</span>）</li>
                                <li>
                                    <input id="cksellprice" type="checkbox" name="ckPrice" value="<%#Eval("sell_price") %>" />资源联系 <span>￥<%#Eval("sell_price") %></span></li>
                                <li><a href="#" class="go">年费会员畅享无限方案，限时活动价仅￥600/年</a></li>
                            </ul>
                            <dl>
                                <dt>售价：<b id="bpricecount">￥<%#Eval("market_price") %></b></dt>
                                <dd><a style="cursor: pointer;" onclick="btninfo(<%#Eval("id") %>)">提交订单</a></dd>
                            </dl>
                        </ItemTemplate>
                    </asp:Repeater>



                </div>
                <!--drighttext-->
            </div>


            <div class="otherinfo">
                <b>该主题其它资源</b>
                <ul>
                    <asp:Repeater ID="rptOtherList" runat="server">
                        <ItemTemplate>
                            <li><a href="Detail.aspx?nvaChannelid=<%#Eval("channel_id") %>&id=<%#Eval("id") %>">
                                <img src="<%#Eval("img_url") %>" /></a><p><a href="Detail.aspx?nvaChannelid=<%#Eval("channel_id") %>&id=<%#Eval("id") %>"><%#Eval("title") %></a></p>
                                <span><%#Eval("site_requirements") %> &nbsp;&nbsp;<%#Eval("cost_budget") %> </span></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>

            <div class="ad">
                <%=adHtml %>
            </div>
        </div>
        <script src="scripts/jquery-3.1.1.min.js"></script>
        <script src="scripts/carousel.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                var array = $("#smallimg li")
                $(array).each(function (index, val) {
                    $(this).click(function () {
                        _index1 = index + 1;
                        if (_index1 < 1) {
                            _index1 = $itemNum - 2;
                            $('.scroll').css('left', -$itemW * ($itemNum - 1) + "px");
                            $('.scroll').animate({ left: -_index1 * $itemW }, $timer);
                        } else if (_index1 > $itemNum - 2) {
                            _index1 = 1;
                            $('.scroll').css('left', '0px');
                            $('.scroll').animate({ left: -_index1 * $itemW }, $timer);
                        } else {
                            $('.scroll').animate({ left: -_index1 * $itemW }, $timer);
                        }

                        smalImg(_index1);

                        _2D();

                    });
                });

                $("#ckul li").click(function () {

                    var countPrice = 0.00;
                    $("input[name='ckPrice']").each(function () {
                        if ($(this).is(':checked') == true) {
                            //  $("input[name='ckPrice']").removeAttr("checked");
                            countPrice = parseFloat(countPrice) + parseFloat($(this).val());
                        }
                    });
                    $("#bpricecount").html("￥" + countPrice.toFixed(2));
                });
            });


            function btninfo(id) {
                $.ajax({
                    type: "POST",
                    url: "/tools/submit_ajax.ashx?action=user_check_login",
                    dataType: "json",
                    timeout: 20000,
                    success: function (data, textStatus) {
                        if (data.status == 1) {
                            var icase = $("#ckmarketprice").is(':checked');
                            var iphone = $("#cksellprice").is(':checked');
                            window.location.href = "OrderPay.aspx?id=" + id + "&icase=" + (icase == true ? "1" : "0") + "&iphone=" + (iphone == true ? "1" : "0");
                        } else {
                            alert("您还未登录...");
                            window.location.href = "Login.aspx";
                        }
                    }
                });
            }
        </script>
        <!--content-->
    </form>
</asp:Content>
