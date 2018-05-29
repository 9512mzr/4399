<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<!-- saved from url=(0044)https://zujuan.21cnjy.com/ucenter/u-download -->
<html class=" XL">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
<script src="${ctx }/static/js/hm.js"></script>
<script>
	(function(doc, win) {
		// 基于 window.screen.width 实现自适应布局
		var screenWidth = 0, size = 'XL', root = doc.documentElement;
		if (window.screen && screen.width) {
			screenWidth = screen.width;
			if (screenWidth >= 1200)
				size = 'XL'; // 大屏 - 1200px         
			else if (screenWidth < 1200)
				size = 'XS'; // 小屏 - 1000px
		}
		root.className += " " + size; // 标记CSS
		win.SIZE = size; // 标记JS        
	})(document, window);

	window.OT2 = {}; // 全局命名空间
	OT2.AboveIE9 = true; // 默认非iE或IE9及以上
	OT2.ns = function(name) {
		var container = OT2;
		var parts = name.split('.');
		var current = '';
		if (parts[0] == 'OT2')
			parts.shift();
		while (current = parts.shift()) {
			if (!container[current])
				container[current] = {};
			container = container[current];
		}
		return container;
	};
	var HostInfo = "https://zujuan.21cnjy.com/";
	USER = {
		"uid" : 8985606,
		"username" : "21jy_569002710",
		"email" : "",
		"mobile" : 15732167701,
		"regip" : "111.11.85.6",
		"regdate" : 1521705941,
		"regsource" : 3,
		"lastloginip" : 1863013638,
		"lastlogintime" : 1521705941,
		"auth_key" : "-MudhiE5Rf7HIftIFIivC2i2bZcruHRy",
		"avatar" : {
			"small_avatar" : "http:\/\/uc.21cnjy.com\/avatar.php?uid=8985606&size=small",
			"big_avatar" : "http:\/\/uc.21cnjy.com\/avatar.php?uid=8985606&size=big"
		},
		"realname" : "21jy_569002710",
		"gender" : null,
		"identity" : null,
		"xd" : null,
		"chid" : null,
		"district" : null,
		"school" : null,
		"school_permit_id" : null,
		"parent" : "",
		"signature" : null,
		"memberProfile" : null,
		"school_inf" : null,
		"baseSchool" : null,
		"tokenA" : null,
		"tikuAdmin" : false,
		"testLimit" : null,
		"basketLimit" : 30,
		"isVip" : false
	};
	OT2.CSRF = {
		"_csrf" : "RiTg2KrQvmTx9P1Cz-kvNLxhfJ1FOXvQ89OzQwEkAr4xXpetw5fsKrqwygSbpRp97Aklq3B9SZe4kOE6Ux025A=="
	};
</script>
<!--[if lt IE 9]>
<script> OT2.AboveIE9= false;</script>
<![endif]-->
<link rel="stylesheet" href="${ctx }/static/css/base.min.css">
<link rel="stylesheet" href="${ctx }/static/css/spriter-mix.min.css">
<link rel="stylesheet" href="${ctx }/static/css/ui-dialog.css">
<link rel="stylesheet" href="${ctx }/static/css/artDialog-skin-ot2.min.css">
<link rel="stylesheet" href="${ctx }/static/css/main.min.css">
<link rel="stylesheet" href="${ctx }/static/css/popup.min.css">
<script src="${ctx }/static/js/jquery.min.js"></script>
<script type="text/javascript">
	$.ajaxSetup({
		cache : false
	});
</script>
<script src="${ctx }/static/js/underscore-min.js"></script>
<script src="${ctx }/static/js/cookie.min.js"></script>
<script src="${ctx }/static/js/json3.min.js"></script>
<script src="${ctx }/static/js/dialog-plus.js"></script>
<script src="${ctx }/static/js/artDialog-config.min.js"></script>
<script src="${ctx }/static/js/element.min.js"></script>
<script src="${ctx }/static/js/localdata.min.js"></script>
<script src="${ctx }/static/js/util.min.js"></script>
<link rel="stylesheet" href="${ctx }/static/css/layer.css"
	id="layuicss-skinlayercss">
</head>



<body>
	<!--[if lt IE 7]>
<link href="//static.21cnjy.com/kill-ie/kill-ie.css" rel="stylesheet" type="text/css">
<script src="//static.21cnjy.com/kill-ie/kill-ie.js"></script>
<![endif]-->
	<link rel="stylesheet" href="${ctx }/static/css/inner-user.min.css">
	<script src="${ctx }/static/js/paper.min.js"></script>
	<div class="header">
		<div class="header-inner g-container f-cb">
			<style>
.user-news {
	position: absolute;
	top: 40px;
	right: 0;
	background: #fefefe;
	width: 260px;
	min-height: 112px;
	line-height: 24px;
	border: 1px solid #ccc;
	border-radius: 4px;
	font-size: 14px;
	box-shadow: 0 0 10px #dcdcdc;
	display: none;
}

.user-news-hd {
	border-bottom: 1px solid #efefef;
	padding-bottom: 4px;
	margin: 6px 10px;
	font-size: 12px;
	color: #666;
}

.user-news .icon {
	display: block;
	top: -8px;
	right: 40px;
	position: absolute;
}

.user-news-close {
	position: absolute;
	right: 10px;
	top: 10px;
	width: 16px;
	height: 16px;
}

.user-news-close img {
	width: 100%;
	height: 100%;
}

.vip-overtip {
	text-align: center;
}

.vip-overtip {
	padding-top: 6px;
}

.vip-overtip p strong {
	color: red;
	margin: 0 3px;
}

.vip-overtip .tip-notice {
	color: red;
	font-size: 16px;
	font-weight: bold;
}

.vip-overtip a {
	color: #52c684;
}
</style>
			<div class="header-logo">
				<a href=""> <img
					src="${ctx }/static/images/app_logo.png" alt="" title="">
				</a>
			</div>
			<div class="header-logo-sd f-fr">

				<div class="user f-fr f-pr topbar-dropmap">
					<a href="" target="_blank">21jy_569002710<i
						class="icona-tri ml"></i></a>
					<div class="drop-bd">
						<ul>
							<li><a href="selfcenter.jsp"
								target="_blank">下载记录</a></li>
							<li><a href="${ctx }/selfcenter.jsp"
								target="_blank">组卷记录</a></li>
							<li><a href=""
								target="_blank">测试记录</a></li>
							<li><a href=""
								target="_blank">我的收藏</a></li>
							<li><a
								href=""
								target="_blank">错题本</a></li>
							<li><a href=""
								target="_blank">个人信息</a></li>
							<li class="split-line"></li>
							<li><a data-method="post"
								href="">退出</a></li>
						</ul>
						<span class="icona-dia-tri"></span>
					</div>
				</div>
				<div class="user f-fr">
					<a href=""><i
						class="icona-xinxi"></i>消息<span>(0)</span></a>
				</div>
				<div class="header-nav">
					<!--<a href="" target="_blank">【返回旧版】</a>-->
					<!--<span class="split"></span>-->
					<a href="" class="help"><i
						class="icona-home"></i>网站首页</a> <span class="split"></span> <a
						href="" class="help" target="_blank"><i
						class="icona-help"></i>帮助中心</a> <span class="split"></span> <a
						href="" target="_blank"><i
						class="icona-buy"></i>购买VIP</a> <span class="split"></span> <a
						href="" target="_blank"><i
						class="icona-buy"></i>申请试用</a> <span class="split"></span> <a
						href="" target="_blank"><i
						class="icona-buy"></i>激活VIP</a> <span class="split"></span> <span
						class="topbar-dropmap"> <a
						href=""><i
							class="icona-qixia"></i>旗下站点</a>
					</span> <span class="split"></span>
				</div>
			</div>
		</div>
	</div>
	<script src="${ctx }/static/js/element.min.js"></script>
	
	<script src="${ctx }/static/js/yii.js"></script>
	<script src="${ctx }/static/js/layer.js"></script>



</body>
</html>