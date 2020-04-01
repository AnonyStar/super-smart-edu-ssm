<!DOCTYPE html>
<html lang="utf-8">
	<head>
	    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1">
		<meta name="keywords" content="">
		<meta name="description" content="">
		<title>个人主页</title>
		<%@include file="../common/res.jsp"%>

	</head>

	<body>
		<#include "../common/header.html">
		<div class="f-main clearfix">
			<div class="setting-left">
					<#include "./nav.html">
			</div>
			
			<div class="setting-right"  >
				<div><span class="f-16">我的收藏</span></div>
				<div class="split-line" style="margin: 20px 0px;"></div>
				
				<form id="queryPageForm" action="">
				<#if (page.items)??>
				<#list page.items as item>
				<div class="comment clearfix">
					<div class="comment-main" style="width: 100%">
						<a href="${s.base}/course/learn/${item.objectId!}.html" target="_blank" class="user-name link-a" style="font-size:20px;">
						${item.name!}
						</a>
						<div class="comment-content">
							<span class="learn-rate">分类：
								<#if item.classify??>
									<#if item.classify == 1>课程</#if>
								</#if>
							</span>
							<span>收藏时间：
							<#if item.createTime??>
							${item.createTime?string('yyyy-MM-dd')}
							</#if>
							</span>
						</div>
					</div>
				</div>		
				</#list>
				
				<#include "../common/tailPage2.html">
				</#if>
				</form>
					
			</div>
		</div>
		
		<#include "../common/footer.html">
	</body>
	
</html>
