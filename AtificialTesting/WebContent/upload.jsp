<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link href="${ctx }/static/css/zyUpload.css" rel="stylesheet" type="text/css">
		<script src="${ctx }/static/js/jquery-1.7.2.js"></script>
		<script src="${ctx }/static/js/zyFile.js"></script>
		<script src="${ctx }/static/js/zyUpload.js"></script>
		<script src="${ctx }/static/js/demo.js"></script>
	</head>
<body>
	<div id="demo" class="demo"></div> 
</body>
</html>