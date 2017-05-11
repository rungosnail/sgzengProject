<%@ Page Title="" Language="C#" MasterPageFile="~/web/master.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="DTcms.Web.web.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="css/index.css" rel="stylesheet" />

    <style type="text/css" media="screen">
	/*li,ul li{
			list-style: none;
		}*/
		.banner{
			width: 1200px;
			height: 450px;
            margin:0 auto;
			position: relative;
			overflow: hidden;
            z-index:1001;
		}
		.banner-inner {
			width: 3200px;
			height: 450px;
			position: absolute;
			left: 0;
			top: 0;
		}
		.banner img{
			width: 1200px;
			height: 450px;
			display: block;
			vertical-align: middle;
			float: left;
		}
		.banner .ctrlbtn a{
			display: block;
			position: absolute;
			top: 50%;
			width: 40px;
			height:100px;
			line-height: 100px;
			text-align: center;
			cursor: pointer;
			font-size: 24px;
			margin-top: -50px;
			color: white;
			background: rgba(100,100,100,.5);
		}
		.prev{ left: 97% !important; font-family: "宋体";}
		.next{
			left: 0;font-family: "宋体";
		}
		.banner a:hover{
			background: rgba(255,255,255,0.5)
		}
		.banner ul{
			position: absolute;
			left: 0;
			bottom: 10px;
			width: 100%;
			text-align: center;
		}
		.banner li{ display: inline-block; width: 10px; height: 10px; overflow: hidden; margin: 0 5px; background-color: rgba(255,255,255,.5); border-radius: 50%; z-index: 1111; cursor: pointer;}
		.banner .active{
			background: rgba(255,255,255,1)
		}
	</style>

  <div class="banner" id="divAdhtml" runat="server">

	</div>
    <script src="scripts/lunbo.js?v=2010"></script>

	<script type="text/javascript">
		$(".banner").changePic({
			figureBtnAct:"active",
			clickNode:$(".pageCtrl li"),
			loopNode:$(".banner-inner"),
			loopCircle:"-800px",
			sameNode:$("img"),
			attrData:"name",
			leftBtn:$(".prev"),
			rightBtn:$(".next")
		})
	</script>
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

