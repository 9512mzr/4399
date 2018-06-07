<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="generator" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<link href="${ctx }/backstage/css/haiersoft.css" rel="stylesheet" type="text/css" media="screen,print" />
<link href="${ctx }/backstage/css/print.css" rel="stylesheet" type="text/css"  media="print" />
<script src="${ctx }/backstage/js/jquery-1.10.1.min.js"></script>
<script src="${ctx }/backstage/js/side.js" type="text/javascript"></script>
</head>

<body>


<!-- MainForm -->
	<div id="MainForm">
		<div class="form_boxA">
			<h2>用户列表</h2>
			<table cellpadding="0" cellspacing="0">
				<tr>
					<th>老师ID</th>
					<th>帐号</th>
					<th>昵称</th>
					<th></th>
				</tr>
					<c:forEach items="${page.getJournalList() }" var="Journal">
						<tr>
							<td>${Journal.teacherId }</td>
							<td>${Journal.nickName }</td>
							<td>${Journal.loginTime }</td>
						</tr>
					</c:forEach>	
			</table>
			<table style="margin-left: 0px;">
				       <tr>
				            <td colspan="6" align="center" bgcolor="">共${page.totalRecords}条记录 共${page.totalPages}页 当前第${page.pageNo}页 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                <a href="<%=request.getContextPath()%>/loginlog/list?pageNo=${page.topPageNo}" class="btn_r">首页</a>
				                <c:choose>
				                  <c:when test="${page.pageNo!=1}">             
				                      <a href="<%=request.getContextPath()%>/loginlog/list?pageNo=${page.previousPageNo }" class="btn_r">上一页</a>                
				                  </c:when>
				                  <c:otherwise>   
				                      <a class="btn_r">上一页</a>       
				                  </c:otherwise>
				                </c:choose>
				                <c:choose>
				                  <c:when test="${page.pageNo != page.totalPages}">
				                    <a href="<%=request.getContextPath()%>/loginlog/list?pageNo=${page.nextPageNo }" class="btn_r">下一页</a>
				                  </c:when>
				                  <c:otherwise>    
				                      <a class="btn_r">下一页</a>
				                  </c:otherwise>
				                </c:choose>
				                <a href="<%=request.getContextPath()%>/loginlog/list?pageNo=${page.bottomPageNo}&id=${id}" class="btn_r">尾页</a>
				            </td>
				        </tr>
			</table>
		</div>
	</div>
<!-- /MainForm -->

</body>
</html>