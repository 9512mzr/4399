<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="com.entity.Choicequestion"%>
<%@ page import="com.entity.Bigquestion"%>
<%@ page import="com.entity.TestBasket"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html class=" XL">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="renderer" content="webkit">
<!--用在360中-->
<meta name="force-rendering" content="webkit">
<!--用在其它-->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1">
<link rel="canonical" href="http://m.zujuan.com/paper/view-782410.shtml">
<!--移动端访问首页跳转到移动首页-->
<script src="${ctx }/static/js/push.js"></script>
<script src="${ctx }/static/js/hm1.js"></script>
<script type="text/javascript">
	(function(Switch) {
		var switch_pc = window.location.hash;
		if (switch_pc != "#pc") {
			if (/iphone|ipod|ipad|Android|nokia|blackberry|webos|webmate|bada|lg|ucweb|skyfire|sony|ericsson|mot|samsung|sgh|lg|philips|panasonic|alcatel|lenovo|cldc|midp|wap|mobile/i
					.test(navigator.userAgent.toLowerCase())) {

				Switch.location.href = 'http://m.zujuan.com/paper/view-782410.shtml';
			}
		}
	})(window);
</script>

<!--<base target="_top">-->
<base href="." target="_top">
<meta name="csrf-param" content="_csrf">
<meta name="csrf-token"
	content="vPakEbXQWccP6zwqaEuktbZqhB_Xpvn8duqG8naHEKHxldxT3eQDs3m5ZEQhCZT3hwzWVo-Ws88zibSzRLd27A==">
<title>test</title>
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
	USER = {};//通知js用户的信息
	OT2.CSRF = {
		"_csrf" : "vPakEbXQWccP6zwqaEuktbZqhB_Xpvn8duqG8naHEKHxldxT3eQDs3m5ZEQhCZT3hwzWVo-Ws88zibSzRLd27A=="
	};
	OT2.HostUrl = "http%3A%2F%2Fwww.zujuan.com%2Fpaper%2Fview-782410.shtml";
</script>
<!--[if lt IE 9]>
<script> OT2.AboveIE9= false;</script>
<![endif]-->
<link rel="stylesheet" href="${ctx }/static/css/base.min1.css">
<link rel="stylesheet" href="${ctx }/static/css/spriter-mix.min1.css">
<link rel="stylesheet" href="${ctx }/static/css/ui-dialog1.css">
<link rel="stylesheet"
	href="${ctx }/static/css/artDialog-skin-ot2.min1.css">
<link rel="stylesheet" href="${ctx }/static/css/main.min1.css">
<link rel="stylesheet" href="${ctx }/static/css/popup.min1.css">
<script src="${ctx }/static/js/jquery.min1.js"></script>
<script type="text/javascript">
	$.ajaxSetup({
		cache : false
	});
</script>
<script src="${ctx }/static/js/underscore-min1.js"></script>
<script src="${ctx }/static/js/cookie.min1.js"></script>
<script src="${ctx }/static/js/json3.min1.js"></script>
<script src="${ctx }/static/js/dialog-plus1.js"></script>
<script src="${ctx }/static/js/util.min1.js"></script>
<link rel="stylesheet" href="${ctx }/static/css/test-preview.min.css">
<link rel="stylesheet" href="${ctx }/static/css/u-center.min.css">
</head>
<body>
	<div class="heading">
		<div class="heading-main">
			<div class="heading-logo">
				<img src="${ctx }/static/images/logo1.png" alt="logo"> <span>账户中心</span>
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
					<span>${list1.nickName}</span> <a href="${ctx }/login.jsp"
						target="_blank">【退出】</a>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(function() {
			var toNote = '';

			if (toNote) {
				var notice = null;
				var d = dialog({
					title : '提醒',
					content : '<div class="email-con"><h1>' + notice[0]
							+ '</h1><p>' + notice[1] + '</p></div>',
					fixed : true,
					cancelValue : '取消',
					cancel : function() {
					}
				});
				d.showModal();
			}
		})
	</script>
	<!--头部结束-->
	<div class="breadcrumb g-container">
		<i class="icona-dingwei"></i>位置： <a href="http://www.zujuan.com/">首页</a>
	</div>
	<script>
		OT2.xd_chid = {
			"chid" : 11,
			"xd" : 2
		} || null;
	</script>
	<div class="preview-con g-container">
		<div class=" f-fl f-w">
			<div class="dj-preview">
				<div class="preview-title">
					<h1></h1>
					<p>
						<span><i class="icona-time2"></i>更新日期：2018-03-20</span> <span><i
							class="icona-leixing"></i>类型：专题试卷</span>
					</p>
				</div>
				<div class="preview-body" id="J_PaperBody">
					<h3>一、单选题</h3>
					<c:set var="i" value="1" />
					<c:forEach items="${Basket}" var="basket">
						<div class="search-list">
							<ul>
								<li data-qid="3755280">
									<div class="search-exam">
										<div class="exam-con">
											<div class="exam-q">
												<c:out value="${i}" />
												.${basket.choicequestion.content }
											</div>
										</div>
										<c:set var="i" value="${i+1}" />
									</div>
								</li>
							</ul>
						</div>
					</c:forEach>
					<h3>二、综合题</h3>
					<c:set var="j" value="1" />
					<c:forEach items="${Basket1}" var="basket1">
						<div class="search-list">
							<ul>
								<li data-qid="6662749">
									<div class="search-exam">
										<div class="exam-con">
											<div class="exam-qlist">
												<div class="exam-con">
													<div class="exam-q">
														<p>
															<c:out value="${j}" />
															.${basket1.bigQuestion.content }
														</p>
													</div>
													<c:set var="j" value="${j+1}" />
												</div>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</c:forEach>
				</div>
				<form action="paper/getpaper" method="post">
					<p>
						<label for="username" class="uname" data-icon="u">输入试卷名称</label> 
						<input id="name" name="name" required="name" type="text" />
					</p>
					<p class="login button">
						<input type="submit" value="一键生成试卷，答案，答题卡" />
					</p>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="./static/get-parameters"></script>
	<script src="./static/js/highcharts.js"></script>
	<script src="./static/js/error-report.min.js"></script>
	<script src="./static/js/question-txt.min.js"></script>
	<script src="./static/js/question.min.js"></script>
	<script src="./static/js/element.min1.js"></script>
	<script src="./static/js/paper.min1.js"></script>
	<div style="position: absolute; display: none;"></div>
	<script src="./static/js/element.min1.js"></script>
	<script src="./static/js/field.min.js"></script>
	<script src="./static/js/user.min.js"></script>
	<script>
		$('.J_LoginTab').on('click', '.tab', function(evt) {
			var _i = $(this).data('type');
			$(this).hide();
			$(this).siblings().show();
			var $tabs = $('.J_LoginTabContent');
			$tabs.hide();
			$tabs.eq(_i).show();
			if (_i == 0) {
				$('.oth-qq a').show();
			} else {
				$('.oth-qq a').eq(0).hide();
			}
		});
		$('.weixin-btn').on('click', function() {
			$(this).hide();
			$('.J_LoginTab .tab').hide();
			$('.J_LoginTab .tab').eq(1).show();
			$('.J_LoginTabContent').hide();
			$('.J_LoginTabContent').eq(1).show();
		});
	</script>
	<script src="./static/js/global.min.js"></script>
	<a class="return" href="javascript:;"
		style="right: 89.5px; display: none;"><i class="icona-top"></i></a>
	<script src="./static/js/yii1.js"></script>
	<script src="./static/js/sitecount.js"></script>

</body>
</html>