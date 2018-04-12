<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>头部</title>
<link rel="stylesheet" type="text/css" href="${ctx }/backstage/css/css.css" />
</head>

<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="${ctx }/backstage/images/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">公共管理</a>&nbsp;-</span>&nbsp;意见管理
			</div>
		</div>
		<div class="page">
			<!-- main页面样式 -->
			<div class="indexL">
				<img class="indexBn" src="${ctx }/backstage/images/indexBanner.png" />
			</div>
			<!-- main页面样式end -->
		</div>
	</div>
</body>
</html>