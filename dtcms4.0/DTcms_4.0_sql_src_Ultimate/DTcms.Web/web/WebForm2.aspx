<%@ Page Title="" Language="C#" MasterPageFile="~/web/master.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="DTcms.Web.web.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <style type="text/css" media="screen">
	/*li,ul li{
			list-style: none;
		}*/
		.banner{
			width: 800px;
			height: 450px;
			margin:100px  auto;
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
			width: 800px;
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
		.prev{ left: 760px !important; font-family: "宋体";}
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
	</style>    <div class="banner">
		<div class="banner-inner">
			<img src="images/index_11.gif" alt="" name="0">
			<img src="images/index_11.gif" alt="" name="1">
			<img src="images/index_11.gif" alt="" name="2">
			<img src="images/index_11.gif" alt="" name="3">
		</div>
		<div class="ctrlbtn">
			<a href="javascript:;" class="prev" >></a>
			<a href="javascript:;" class="next"><</a>
		</div>
		<ul class="pageCtrl">
			<li class="active"></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="scripts/lunbo.js"></script>

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
</asp:Content>
