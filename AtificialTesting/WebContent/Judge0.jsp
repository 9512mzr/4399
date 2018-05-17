<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%@ page import="java.io.*,java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${sessionScope.dates!=null&&sessionScope.dates!='[]'}">
   <p>选择您要判断的题</p>
</c:if>
<c:forEach items="${sessionScope.dates}" var="dates2">
	<a href="${ctx }/Judge/getJudges?date=${dates2}">${dates2}</a><br>
</c:forEach>
<c:if test="${sessionScope.dates==null||sessionScope.dates=='[]'}">
   <p>没有题</p>
</c:if>
</body>
</html>