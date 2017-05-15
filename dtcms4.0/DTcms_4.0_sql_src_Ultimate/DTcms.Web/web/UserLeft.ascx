<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserLeft.ascx.cs" Inherits="DTcms.Web.web.UserLeft" %>
<div class="perleft">
    <dl>
        <dt>账户总览</dt>
        <dd>
            <ul>
                <li id="liUsercenter" class="percur"><a href="Usercenter.aspx">账户总览</a></li>
                <li id="liUserRecords"><a href="UserRecords.aspx">账户记录</a></li>
            </ul>
        </dd>
    </dl>
    <dl>
        <dt>资源管理</dt>
        <dd>
            <ul>
                <li id="liUserBuys" ><a href="UserBuys.aspx">我购买的资源</a></li>
            </ul>
        </dd>
    </dl>

    <dl>
        <dt>账号信息</dt>
        <dd>
            <ul>
                <li id="liUserInfo"><a href="UserInfo.aspx">个人资料</a></li>
                <li id="liUserPwd"><a href="UserPwd.aspx">密码修改</a></li>
            </ul>
        </dd>
    </dl>
</div>
<script type="text/javascript">
    var navurl = window.location.href;
    if (navurl.indexOf("sercenter.aspx") != -1) {
        $(".percur").removeClass();
        $("#liUsercenter").attr("class", "percur");
    } else if (navurl.indexOf("UserRecords.aspx") != -1)
    {
        $(".percur").removeClass();
        $("#liUserRecords").attr("class", "percur");
    } else if (navurl.indexOf("UserBuys.aspx") != -1) {
        $(".percur").removeClass();
        $("#liUserBuys").attr("class", "percur");
    }
    else if (navurl.indexOf("UserInfo.aspx") != -1) {
        $(".percur").removeClass();
        $("#liUserInfo").attr("class", "percur");
    }
    else if (navurl.indexOf("UserPwd.aspx") != -1) {
        $(".percur").removeClass();
        $("#liUserPwd").attr("class", "percur");
    }
</script>
