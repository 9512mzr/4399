<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>
</head>
<frameset rows="60,*" cols="*" scrolling="No" framespacing="0"
	frameborder="no" border="0"> <frame src="mytesttop.jsp"
	name="headmenu" id="mainFrame" title="mainFrame"><!-- 引用头部 -->
<!-- 引用左边和主体部分 --> <frameset rows="50*" cols="240,*" scrolling="No"
	framespacing="0" frameborder="no" border="0"> <frame
	src="mytestleft.jsp" name="leftmenu" id="mainFrame" title="mainFrame">
<frame src="main.jsp" name="main" scrolling="yes" noresize="noresize"
	id="rightFrame" title="rightFrame"></frameset></frameset>
</html>