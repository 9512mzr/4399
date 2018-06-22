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
	<link rel="stylesheet" href="${ctx }/static/css/inner-user.min.css">
	<!-- 左边节点 -->
	<div class="container">
			<!--<dl class="system_log">
			 <div class="msg-box">
			 
			 		<div class="user-pic">
						<div class="pic-border">
							<img src="${ctx }/static/images/avatar.php">
						</div>
					</div>

					<div class="user-id">
						<p class="user-idname">欢迎：${nickName }</p>
						<p class="user-level">
							<i class="icona-lv-gold"></i>普通用户
						</p>
					</div>
				</div>
			</dl>-->
			<div class="user-using">
					<ul>
						
						<li><a href="${ctx }/Judge/getDates" target="main"><i
								class="icona-zjjl"></i>待判题目</a></li>
						<li><a href="${ctx }/selfcenter/change.jsp" target="main"><i
								class="icona-csjl"></i>修改密码</a></li>
						<li>
							<a href="${ctx }/addQuestion.jsp" target="main"><i
								class="icona-csjl"></i>测试记录</a></li>
						<li><a href="${ctx }/artificial/showAllDate" target="main"><i
								class="icona-ctb"></i>教学评估</a></li>
						<li><a href="${ctx }/addQuestion.jsp" target="main"><i
								class="dj-error"></i>纠错记录</a></li>
						<li><a href="${ctx }/addQuestion.jsp" target="main"><i
								class="icona-set"></i>个人信息</a></li>
						<li><a href="${ctx }/Judge/getWorng" target="main"><i
								class="dj-menu"></i>学生错题</a></li>
						<li><a href="${ctx }/upload.jsp" target="main"><i
								class="dj-menu"></i>上传答题卡</a></li>
						<li><a href="${ctx }/addQuestion.jsp" target="main"><i
								class="icona-msg"></i>我的信息</a></li>
					</ul>
				</div>

		</div>

	</div>
</body>
</html>