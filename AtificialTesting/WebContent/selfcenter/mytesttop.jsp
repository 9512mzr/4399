<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html class=" XL">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
<link rel="stylesheet" href="${ctx }/static/css/u-center.min.css">
</head>

<body>
<div class="heading">
    <div class="heading-main">
        <div class="heading-logo">
            <img src="${ctx }/static/images/logo1.png" alt="logo">
            <span>账户中心</span>
        </div>
        <div class="r-wrap">
            <ul class="heading-nav">
                <li class="item"><a href="" target="_blank">4399世纪教育网</a></li>
                <li class="sep">|</li>
                <li class="item"><a href="" target="_blank">4399组卷平台</a></li>
                <li class="sep">|</li>
                <li class="item"><a href="" target="_blank">课堂无忧</a></li>
                <li class="sep">|</li>
                <li class="item"><a href="" target="_blank">在线题库</a></li>
                <li class="sep">|</li>
                <li class="item"><a href="" target="_blank">名师课堂</a></li>
            </ul>
            <div class="heading-exit">
                <!--<img src="/static/images/register/s-user.png" alt="logo">-->
                <span>${list1.nickName}</span>
                <a href="${ctx }/login.jsp" target="_blank">【退出】</a>      
            </div>
        </div>
    </div>
</div>
<div class=" cfx">
		<div class="g-top">
			<div class="w">
				<div class="user-info">
					<div class="info-img">
						<img src="${ctx }/static/images/7.png" alt="picture"
							id="user-site-photo">
						<div class="info-cnt">
							<p>
								用户名：<span>${nickName}</span>[ID：${sessionScope.userid}]
							</p>
							<p>
								身份：<span>教师</span>
							</p>
							<p>
								真实姓名：<span>183****3255</span>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="qrcode">
				<img src="${ctx }/static/images/code.png">
				<div class="qrcode-msg">
					<h3>4399教育微信公众号</h3>
					<p>每天实时推送最新资讯；</p>
					<p>定期发放福利，稳如老狗；</p>
				</div>
			</div>
		</div>
</div>
</body>
</html>