<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<link href="${ctx }/selfcenter/css/haiersoft.css" rel="stylesheet"
	type="text/css" media="screen,print" />
<link href="${ctx }/selfcenter/css/print.css" rel="stylesheet"
	type="text/css" media="print" />
<script src="${ctx }/selfcenter/js/jquery-1.10.1.min.js"></script>
<script src="${ctx }/selfcenter/js/side.js" type="text/javascript"></script>
</head>

<body>
	<!-- picBox -->
	<div class="picBox" onClick="switchSysBar()" id="switchPoint"></div>
	<!-- /picBox -->
	<!-- wrap_right -->
	<div class="wrap_right">
		<!-- Header -->
		<!-- /Header -->
		</header>

		<!-- /wrap_right -->

		<div id="Contents">
			<!-- MainForm -->
			<div id="MainForm">
				<div class="form_boxB">
					<c:if test="${sessionScope.dates!=null&&sessionScope.dates!='[]'}">
						<h2>
							<p1>选择您要判断的题</p1>
						</h2>
					</c:if>
					<table cellpadding="0" cellspacing="0">
						<c:forEach items="${sessionScope.dates}" var="dates2">
							<tr>
								<a href="${ctx }/Judge/getJudges?date=${dates2}"  target="_blank">${dates2}</a>
								<br>
							</tr>
						</c:forEach>
						<c:if test="${sessionScope.dates==null||sessionScope.dates=='[]'}">
							<p>没有题</p>
						</c:if>
						<a href="${ctx }/up1.jsp">上传答题卡</a><br>
						<a href="${ctx }/paper/fengeshijuan">获得新的待判题</a>
					</table>
				</div>
			</div>
		</div>
		<!-- /Contents -->

		<!-- /footer -->
		<footer>
		<address>2007 Corporation,All Rights</address>
		</footer>
		<!-- /footer -->
	</div>
</body>
</html>
