<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="utf-8" xmlns:th="http://www.thymeleaf.org" >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>网校在线学习平台</title>
    <%@include file="../common/res.jsp"%>

</head>

<body>
<%@include file="../common/header2.jsp"%>
<div class="f-main">
    <div class="types-block clearfix" style="text-align: center;">
        <h3 class="types-title">登录</h3>
        <form class="oc-form" id="infoForm" style="text-align: center;border: 1px solid #CCC;width: 600px;margin:0 auto;padding:20px;" method="post" action="/auth/doLogin">
            <li>请用：admin/11111 登录</li>
            <li><label>用户名</label>
                <input name="username"  value="" type="text"  class="input-text"  placeholder="请输入用户名" >
            </li>
            <li><label>密码</label>
                <input id="password" name="password" type="password" class="input-text" placeholder="请输入密码" autocomplete="off" />
            </li>
            <li><label>验证码</label>
                <input id="identiryCode" name="identiryCode" maxlength="6" class="input-text" type="text" style="width: 150px;" placeholder="请输入验证码"/>
                <a class="vali-base"><img  onclick="reloadIndityImg('indeityImgLogin');" id="indeityImgLogin"  src="${s.base}/tools/identiry/code.html" style="width:80px;height:40px;float:left;margin-left:10px;"/></a>
            </li>
            <li>
                <label style="background-color:#FFF;"></label>
                <input type="checkbox" value="1" id="checkbox1" name="rememberMe" style="float: left;">
                <span class="text"  style="float: left;margin-left:2px;">下次自动登录</span>
            </li>
            <c:if test="${errcode eq 4}">
                <li style="text-align: left;">
                    <label style="background-color:#FFF;"></label>
                    <span style="color:red;">请输入正确的验证码</span>
                </li>
            </c:if>
            <c:if test="${errcode eq 2}">
                <li style="text-align: left;">
                    <label style="background-color:#FFF;"></label>
                    <span style="color:red;">用户名密码错</span>
                </li>
            </c:if>

            <li class="clearfix" style="margin-top: 20px;">
                <input type="submit" value="登录" class="btn"style="margin-right:20px;">
                <div class="btn" onclick="window.location.href='/auth/register'">注册</div>
            </li>
        </form>
    </div>
</div>
<%@include file="../common/footer.jsp"%>

</body>

</html>

