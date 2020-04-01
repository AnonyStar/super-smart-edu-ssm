<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="utf-8" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>个人主页</title>
    <!--<#include "../common/res.jsp">-->
    <%@include file="../common/res.jsp" %>

</head>

<body>
<%@include file="../common/header.jsp" %>

<!--
    <#include "../common/header.jsp">-->
<div class="f-main clearfix">
    <div class="setting-left">
        <%--	<#include "./nav.html">--%>
        <%@include file="./nav.jsp" %>

    </div>

    <div class="setting-right">
        <div><span class="f-16">最新动态</span></div>
        <div class="split-line" style="margin: 20px 0px;"></div>

        <form id="queryPageForm" action="">
            <%--	<#if (page.items)??>
                <#list page.items as item>--%>
            <div class="comment clearfix">
                <div class="comment-header">
                    <%--<#if item.header?? && item.header != ''>--%>
                    <img class="lecturer-uimg" src="${item.header}">
                    <%--<#else>--%>
                    <img class="lecturer-uimg" src="${s.base}/res/i/header.jpg">
                    <%--</#if>--%>
                </div>

                <div class="comment-main" style="width: 840px;">
                    <div class="user-name">${item.username}</div>
                    <div class="comment-content">
                        <div>
                            <a href="/course/learn/${item.courseId}.html" target="_blank" class="link-a"
                               style="font-weight:bold;">
                                ${item.courseName}
                            </a>
                        </div>
                        <div style="margin-top:3px;">
                            <a href="${s.base}/course/video/${item.sectionId}.html" target="_blank" class="link-a">
                                ${item.sectionName}
                            </a>
                        </div>
                    </div>
                    <div class="comment-footer">时间：${item.createTime}</div>
                </div>
            </div>
            <%--</#list>
            </#if>--%>
            <%--<#include "../common/tailPage2.jsp">--%>
            <%@include file="../common/tailPage2.jsp" %>
        </form>
    </div>
</div>
<%@include file="../common/footer.jsp" %>


</body>
</html>
