<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<title>首页左侧导航</title>
<link rel="stylesheet" type="text/css" href="${ctx }/backstage/css/public.css" />
<script type="text/javascript" src="${ctx }/backstage/js/jquery.min.js"></script>
<script type="text/javascript" src="${ctx }/backstage/js/public.js"></script>
<head></head>

<body id="bg">
	<!-- 左边节点 -->
	<div class="container">
		<div class="leftsidebar_box">
			<a href="right.jsp" target="main"><div class="line">
					<img src="${ctx }/backstage/images/coin01.png" />&nbsp;&nbsp;首页
				</div></a>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${ctx }/backstage/images/coin03.png" /><img class="icon2"
						src="${ctx }/backstage/images/coin04.png" />老师管理<img class="icon3"
						src="${ctx }/backstage/images/coin19.png" /><img class="icon4"
						src="${ctx }/backstage/images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${ctx }/backstage/images/coin111.png" /><img class="coin22"
						src="${ctx }/backstage/images/coin222.png" />
						 <a class="cks" href="${ctx }/teachers/list"
						target="main">会员管理</a><img class="icon5" src="${ctx }/backstage/images/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${ctx }/backstage/images/coin01.png" /><img class="icon2"
						src="${ctx }/backstage/images/coin02.png" /> 日志<img class="icon3"
						src="${ctx }/backstage/images/coin19.png" /><img class="icon4"
						src="${ctx }/backstage/images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${ctx }/backstage/images/coin111.png" /><img class="coin22"
						src="${ctx }/backstage/images/coin222.png" /> <a class="cks" href="${ctx }/loginlog/list"
						target="main">登陆日志</a><img class="icon5" src="${ctx }/backstage/images/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="${ctx }/backstage/images/coin111.png" /><img class="coin22"
						src="${ctx }/backstage/images/coin222.png" /><a class="cks" href="p2.jsp"
						target="main">反馈管理</a><img class="icon5" src="${ctx }/backstage/images/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${ctx }/backstage/images/coin07.png" /><img class="icon2"
						src="${ctx }/backstage/images/coin08.png" /> 会员管理<img class="icon3"
						src="${ctx }/backstage/images/coin19.png" /><img class="icon4"
						src="${ctx }/backstage/images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${ctx }/backstage/images/coin111.png" /><img class="coin22"
						src="${ctx }/backstage/images/coin222.png" /><a href="p1.jsp" target="main"
						class="cks">会员管理</a><img class="icon5" src="${ctx }/backstage/images/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${ctx }/backstage/images/coinL1.png" /><img class="icon2"
						src="${ctx }/backstage/images/coinL2.png" /> 系统管理<img class="icon3"
						src="${ctx }/backstage/images/coin19.png" /><img class="icon4"
						src="${ctx }/backstage/images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${ctx }/backstage/images/coin111.png" /><img class="coin22"
						src="${ctx }/backstage/images/coin222.png" /><a href="changepwd.jsp"
						target="main" class="cks">修改密码</a><img class="icon5"
						src="${ctx }/backstage/images/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="${ctx }/backstage/images/coin111.png" /><img class="coin22"
						src="${ctx }/backstage/images/coin222.png" /><a class="cks">退出</a><img
						class="icon5" src="${ctx }/backstage/images/coin21.png" />
				</dd>
			</dl>

		</div>

	</div>
</body>
</html>