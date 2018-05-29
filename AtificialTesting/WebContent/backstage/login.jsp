<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录</title>
<link rel="stylesheet" type="text/css" href="${ctx }/backstage/css/public.css" />
<link rel="stylesheet" type="text/css" href="${ctx }/backstage/css/page.css" />
<script type="text/javascript" src="${ctx }/backstage/js/jquery.min.js"></script>
<script type="text/javascript" src="${ctx }/backstage/js/public.js"></script>
</head>
<body>
	<!-- 登录body -->
	<div class="logDiv">
		<img class="logBanner" src="${ctx }/backstage/images/logBanner.png" />
		<form  action="../adminlogin" method="post">
		<div class="logGet">
			<!-- 头部提示信息 -->
			<div class="logD logDtip">
				<p class="p1">登录</p>
			</div>
			<!-- 输入框 -->
			<div class="lgD">
				<img class="img1" src="${ctx }/backstage/images/logName.png" />
				<input id="adminid" name="aid" type="text" placeholder="输入用户名" />
			</div>
			<div class="lgD">
				<img class="img1" src="${ctx }/backstage/images/logPwd.png" /><input id="adminpass" name="apass" type="text"
					placeholder="输入用户密码" />
			</div>
			<div class="logC">
				 <button type="submit">登 录</button>
			</div>
		</div>
		</form>
	</div>
	<!-- 登录body  end -->

	<!-- 登录页面底部 -->
	<div class="logFoot">
		<p class="p1">版权所有：安徽公司公司</p>
		<p class="p2">123456789</p>
	</div>
	<!-- 登录页面底部end -->
   
</body>
</html>