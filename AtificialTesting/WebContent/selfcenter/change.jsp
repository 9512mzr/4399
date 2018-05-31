<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ctx }/static/css/u-center.min.css">
<link rel="stylesheet" href="${ctx }/static/css/layer1.css"
	id="layuicss-skinlayercss">
</head>
<body>
<div class="w">
			<div class="user-mn">
				<div class="yz-title cfx">
					<h2>更改密码</h2>
				</div>
				<div style="margin-left: 220px; margin-bottom: 10px">
					<input type="radio" value="1" name="way" checked="">密码验证修改
				</div>

				<div class="pwd-wrap cfx" id="pwd-panel">
					<form class="reg-form"
						action="pwchanged.action?name=${list1.teacherid}" method="post">
						<input type="hidden" name="_csrf"
							value="aDAwSURBZTEkRmAODxsceCcDBBEzeVVSRUMHM3wmH18SVmARLSUgAg==">
						<div class="form-line">
							<label for="old_password">旧密码：</label>
							<div class="set-input">
								<input type="password" name="old_password" id="old_password"
									placeholder="请输入登录密码">
							</div>
						</div>
						<div class="form-line">
							<label for="password">新密码：</label>
							<div class="set-input">
								<input type="password" name="password" id="password"
									placeholder="请输入新的登录密码">
							</div>
						</div>
						<div class="form-line">
							<label for="password2">重复密码：</label>
							<div class="set-input">
								<input type="password" name="password2" id="password2"
									placeholder="请输入新的登录密码">
							</div>
						</div>
						<button class="right-btn" type="submit">确认</button>
						<a href="${ctx }/login.jsp" class="right-btn" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;确认&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
					</form>
				</div>
			</div>
		</div>
</body>
</html>