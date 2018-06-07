<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<!-- saved from url=(0066)https://zujuan.21cnjy.com/question?chid=11&xd=3&tree_type=category -->
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
<link rel="shortcut icon" type="image/x-icon"
	href="https://zujuan.21cnjy.com/images/favicon.ico">
<link rel="apple-touch-icon"
	href="https://zujuan.21cnjy.com/images/touchicon.png">
<meta name="csrf-param" content="_csrf">
<meta name="csrf-token"
	content="qk_x2YgtB9hT7vvVEfyC193onG5qYhhSveKn-q5zflrvG56hykcwqBaAg-RglOSP5I2xW1M0Lj7OuP_L7D1GNQ==">
<title>高中-生物-手动搜题 -二一组卷</title>
<script src="${ctx }/static/library/hm.js.下载"></script>
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
	var HostInfo = "#";
	USER = {};//通知js用户的信息
	OT2.CSRF = {
		"_csrf" : "qk_x2YgtB9hT7vvVEfyC193onG5qYhhSveKn-q5zflrvG56hykcwqBaAg-RglOSP5I2xW1M0Lj7OuP_L7D1GNQ=="
	};
</script>
<!--[if lt IE 9]>
<script> OT2.AboveIE9= false;</script>
<![endif]-->
<link rel="stylesheet" href="${ctx }/static/library/base.min.css">
<link rel="stylesheet" href="${ctx }/static/library/spriter-mix.min.css">
<link rel="stylesheet" href="${ctx }/static/library/ui-dialog.css">
<link rel="stylesheet"
	href="${ctx }/static/library/artDialog-skin-ot2.min.css">
<link rel="stylesheet" href="${ctx }/static/library/main.min.css">
<link rel="stylesheet" href="${ctx }/static/library/popup.min.css">
<script src="${ctx }/static/library/jquery.min.js.下载"></script>
<script type="text/javascript">
	$.ajaxSetup({
		cache : false
	});
</script>
<script src="${ctx }/static/library/underscore-min.js.下载"></script>
<script src="${ctx }/static/library/cookie.min.js.下载"></script>
<script src="${ctx }/static/library/json3.min.js.下载"></script>
<script src="${ctx }/static/library/dialog-plus.js.下载"></script>
<script src="${ctx }/static/library/artDialog-config.min.js.下载"></script>
<script src="${ctx }/static/library/element.min.js.下载"></script>
<script src="${ctx }/static/library/localdata.min.js.下载"></script>
<script src="${ctx }/static/library/util.min.js.下载"></script>
<link rel="stylesheet" href="${ctx }/static/library/layer.css"
	id="layuicss-skinlayercss">
</head>
<script type="text/javascript">
	function topage(currentpage) {
		var form = document.forms[0];
		form.currentpage.value = currentpage;
		form.submit();
	}
</script>


<body class="f-usn">
	<!--[if lt IE 7]>
<link href="//static.21cnjy.com/kill-ie/kill-ie.css" rel="stylesheet" type="text/css">
<script src="//static.21cnjy.com/kill-ie/kill-ie.js"></script>
<![endif]-->
	<link rel="stylesheet" href="${ctx }/static/library/manual.min.css">
	<script src="${ctx }/static/library/html5media.min.js.下载"></script>
	<!--[if IE 9]><script src="//static.21cnjy.com/js/html5shiv.min.js"></script><![endif]-->

	<!--顶部导航开始-->
	<div class="topbox">
		<div class="topinner g-container">
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
#sssq{
text-align:left;
}
#footer1{
width: 100%;
float:left;

}
.footer-con g-container{
width: 100%;
} 
.footer-top f-cb{
width: 100%;}
</style>
			<script>
				function user_news() {
					var remain = -1; // 剩余到期天数
					var $usernews = $('.user-news');
					var p = $usernews.parent();
					var h = p.height();
					p.css('position', 'relative');
					$usernews.css('top', h + 'px');

					var vip_overtip_close = OT2.Cookie.get('vip_overtip_date');
					if (remain == 0 && vip_overtip_close == 'end') {
						OT2.Cookie.set('vip_overtip_date', 'end', new Date(
								new Date().getTime() + 30 * 24 * 3600 * 1000)); // 更新cookie有效期
						return false; // 结束不显示
					}
					var d = new Date();
					var v = [ d.getFullYear(), d.getMonth(), d.getDate() ]
							.join('/');
					if (!vip_overtip_close || vip_overtip_close != v)
						$usernews.show();
					$usernews
							.find('.user-news-close')
							.on(
									'click',
									function() {
										$usernews.hide();
										if (remain == 0) {
											OT2.Cookie.set('vip_overtip_date',
													'end', new Date(new Date()
															.getTime()
															+ 30
															* 24
															* 3600
															* 1000));
											return false;
										}
										OT2.Cookie
												.set(
														'vip_overtip_date',
														v,
														new Date(
																new Date()
																		.getTime() + 24 * 3600 * 1000));
									});
				}
			</script>
			
			<div class="slogan">

				<a
					href="https://zujuan.21cnjy.com/question?chid=11&amp;xd=3&amp;tree_type=category#">二一教育旗下产品</a>

			</div>

			<div class="webhelp">
				<!--<a href="home.html" class="help"><i class="icona-home"></i>网站首页</a>-->
				<!--<span class="split"></span>-->
				<!--<a href="http://oldzujuan.21cnjy.com/" target="_blank">【返回旧版】</a>-->
				<!--<span class="split"></span>-->
				<a href="https://zujuan.21cnjy.com/help" class="help"
					target="_blank"><i class="icona-help"></i>帮助中心</a> <span
					class="split"></span> <a
					href="https://zujuan.21cnjy.com/payment/vip" target="_blank"><i
					class="icona-buy"></i>购买VIP</a> <span class="split"></span> <a
					href="https://zujuan.21cnjy.com/help/request" target="_blank"><i
					class="icona-buy"></i>申请试用</a> <span class="split"></span> <a
					onclick="return OT2.Global.initLogin();"><i class="icona-buy"></i>欢迎您：${sessionScope.name}</a>

				<div class="drop-bd">
					<ul>
						<li><a target="_blank"
							href="http://www.21cnjy.com/zhitongche/">校网通</a></li>
						<li><a target="_blank" href="http://zujuan.21cnjy.com/">在线组卷</a></li>
						<li><a target="_blank" href="http://www.jbzyk.com/">校本资源库</a></li>
						<li><a target="_blank" href="http://tiku.21cnjy.com/">在线题库</a></li>
						<li><a target="_blank" href="http://www.21cnjy.com/video.php">名师课堂</a></li>
						<li><a target="_blank"
							href="http://www.21cnjy.com/productshow/index.php?prod=school">数字化校园</a></li>
						<li><a target="_blank"
							href="http://www.21cnjy.com/productshow/index.php?prod=yun">区域云平台</a></li>
						<li><a target="_blank"
							href="http://www.21cnjy.com/productshow/app/">二一教育APP</a></li>
					</ul>
					<span class="icona-dia-tri"></span>
				</div>
				</span> <span class="split"></span>
				<div class="loginbox">

					<span></span> <a href="loign.jsp" class="register"><span>注销</span></a>
				</div>
				<span class="split"></span>
			</div>
	</div>
	</div>
	<!--顶部导航结束-->
	<!--头部搜索部分开始-->
	<div class="top-middle">
		<div class="top-minner g-container f-cb">
			<div class="logobox">
				<a href="https://zujuan.21cnjy.com/?1=1"> <img
					src="${ctx }/static/images/logo2.png" alt="4399教育" title="在线组卷平台"></a>
			</div>
			<div class="g-mn">
				<div class="searchbox">
					<form id="search-form"
						action="https://zujuan.21cnjy.com/question/search" method="get">
						<div class="search-text" id="J_SearchMenu">
							<span class="text-select"><em class="J_tit">试题</em><i
								class="icona-tri"></i></span>
							<p class="select-items">
								<a href="javascript:;"><input type="radio" name=""
									value="/question/search" class="f-dn" checked=""><span>试题</span></a>
								<a href="javascript:;"><input type="radio" name=""
									value="/paper/search" class="f-dn"><span>试卷</span></a>
							</p>
						</div>
						<div class="search-inputbox">
							<input type="text" name="content" value="" class="search-input"
								placeholder="请输入关键词搜索 高中生物 资源">
						</div>
						<div class="search-btn">
							<button class="btn" type="submit">
								<i class="icona-search"></i>
							</button>
						</div>
					</form>
					<script>
						$(function() {
							var name = $(".nav-items a.item span").html();
							$("input[name='content']").attr({
								'placeholder' : '请输入关键词搜索 ' + name + ' 资源'
							});
						})
					</script>
				</div>
			</div>
			<div class="contactbox">
				<a class="link-into" href="#"
					target="_blank"><img src="${ctx }/static/library/VIP.gif"><strong>购买VIP</strong></a>
				<a class="link-into" href="https://zujuan.21cnjy.com/help/request"
					target="_blank"><img src="${ctx }/static/library/xwt.gif"><strong>开通学校服务</strong></a>
			</div>
		</div>
	</div>
	<!--头部搜索部分结束-->
	<!--头部导航部分开始-->
	<script>
		OT2.xd_chid = {
			"chid" : "11",
			"xd" : "3"
		} || null;
	</script>
	<div class="top-navbox">
		<div class="top-nav g-container">
			<div class="nav-items">
				<a
					href="https://zujuan.21cnjy.com/question?chid=11&amp;xd=3&amp;tree_type=category#"
					class="item">当前：<span>高中生物</span><i class="icona-tri2"></i></a>
				<div class="item-list">
					<div class="list-xx">
						<h3>小学</h3>
						<a
							href="https://zujuan.21cnjy.com/question?chid=2&amp;xd=1&amp;tree_type=category"
							onclick=" return true;">语文</a> <a
							href="https://zujuan.21cnjy.com/question?chid=3&amp;xd=1&amp;tree_type=category"
							onclick=" return true;">数学</a> <a
							href="https://zujuan.21cnjy.com/question?chid=4&amp;xd=1&amp;tree_type=category"
							onclick=" return true;">英语</a> <a
							href="https://zujuan.21cnjy.com/question?chid=5&amp;xd=1&amp;tree_type=category"
							onclick=" return true;">科学</a> <a
							href="https://zujuan.21cnjy.com/question?chid=9&amp;xd=1&amp;tree_type=category"
							onclick=" return true;">政治思品</a>
					</div>
					<div class="list-cz">
						<h3>初中</h3>
						<a
							href="https://zujuan.21cnjy.com/question?chid=2&amp;xd=2&amp;tree_type=category"
							onclick=" return true;">语文</a> <a
							href="https://zujuan.21cnjy.com/question?chid=3&amp;xd=2&amp;tree_type=category"
							onclick=" return true;">数学</a> <a
							href="https://zujuan.21cnjy.com/question?chid=4&amp;xd=2&amp;tree_type=category"
							onclick=" return true;">英语</a> <a
							href="https://zujuan.21cnjy.com/question?chid=5&amp;xd=2&amp;tree_type=category"
							onclick=" return true;">科学</a> <a
							href="https://zujuan.21cnjy.com/question?chid=6&amp;xd=2&amp;tree_type=category"
							onclick=" return true;">物理</a> <a
							href="https://zujuan.21cnjy.com/question?chid=7&amp;xd=2&amp;tree_type=category"
							onclick=" return true;">化学</a> <a
							href="https://zujuan.21cnjy.com/question?chid=8&amp;xd=2&amp;tree_type=category"
							onclick=" return true;">历史</a> <a
							href="https://zujuan.21cnjy.com/question?chid=9&amp;xd=2&amp;tree_type=category"
							onclick=" return true;">政治思品</a> <a
							href="https://zujuan.21cnjy.com/question?chid=10&amp;xd=2&amp;tree_type=category"
							onclick=" return true;">地理</a> <a
							href="https://zujuan.21cnjy.com/question?chid=20&amp;xd=2&amp;tree_type=category"
							onclick=" return true;">历史与社会</a> <a
							href="https://zujuan.21cnjy.com/question?chid=21&amp;xd=2&amp;tree_type=category"
							onclick=" return true;">社会思品</a> <a
							href="https://zujuan.21cnjy.com/question?chid=11&amp;xd=2&amp;tree_type=category"
							onclick=" return true;">生物</a>
					</div>
					<div class="list-gz">
						<h3>高中</h3>
						<a
							href="https://zujuan.21cnjy.com/question?chid=2&amp;xd=3&amp;tree_type=category"
							onclick=" return true;">语文</a> <a
							href="https://zujuan.21cnjy.com/question?chid=3&amp;xd=3&amp;tree_type=category"
							onclick=" return true;">数学</a> <a
							href="https://zujuan.21cnjy.com/question?chid=4&amp;xd=3&amp;tree_type=category"
							onclick=" return true;">英语</a> <a
							href="https://zujuan.21cnjy.com/question?chid=6&amp;xd=3&amp;tree_type=category"
							onclick=" return true;">物理</a> <a
							href="https://zujuan.21cnjy.com/question?chid=7&amp;xd=3&amp;tree_type=category"
							onclick=" return true;">化学</a> <a
							href="https://zujuan.21cnjy.com/question?chid=8&amp;xd=3&amp;tree_type=category"
							onclick=" return true;">历史</a> <a
							href="https://zujuan.21cnjy.com/question?chid=9&amp;xd=3&amp;tree_type=category"
							onclick=" return true;">政治思品</a> <a
							href="https://zujuan.21cnjy.com/question?chid=10&amp;xd=3&amp;tree_type=category"
							onclick=" return true;">地理</a> <a
							href="https://zujuan.21cnjy.com/question?chid=11&amp;xd=3&amp;tree_type=category"
							onclick=" return true;">生物</a> <a
							href="https://zujuan.21cnjy.com/question?chid=14&amp;xd=3&amp;tree_type=category"
							onclick=" return true;">信息技术</a>
					</div>
				</div>
			</div>
			<div class="nav-list">
				<ul>
					<li><a class="" href="https://zujuan.21cnjy.com/">首页</a></li>
					<li class="complex-nav-item"><a href="javascript:;"
						class="active">手动组卷</a>
						<div class="dd-list">
							<a
								href="https://zujuan.21cnjy.com/question?tree_type=category&amp;chid=11&amp;xd=3"><i>章节同步选题</i></a>
							<a
								href="https://zujuan.21cnjy.com/question?tree_type=knowledge&amp;chid=11&amp;xd=3"><i>知识点选题</i></a>
						</div></li>
					<li class="complex-nav-item"><a href="javascript:;" class="">智能组卷</a>
						<div class="dd-list">
							<a href="https://zujuan.21cnjy.com/smarter?tree_type=category"><i>章节智能组卷</i></a>
							<a href="https://zujuan.21cnjy.com/smarter?tree_type=knowledge"><i>知识点智能组卷</i></a>
							<a onclick="return OT2.Global.initLogin();"><i>双向细目表组卷</i></a>
						</div></li>
					<li class="complex-nav-item"><a class="" href="javascript:;"
						onclick=" return true;">试卷库</a>
						<div class="dd-list">
							<a href="#"><i>同步试卷</i></a>
							<a
								href="#"><i>测试试卷</i></a>
							<a
								href="#"><i>真卷&amp;模拟卷</i></a>
						</div></li>
					<li><a class="" href="https://zujuan.21cnjy.com/subject"
						onclick=" return true;">专题特供</a></li>
				</ul>
			</div>
		</div>
	</div>
	<script>
		function mechanToLogin() {
			var tologin = 0;
			if (tologin) {
				OT2.Global.initLogin();
				return false;
			}
			return true;
		}
	</script>
	
	<!--头部导航部分结束-->
	<!--头部结束-->
	<div class="breadcrumb g-container">
		<i class="icona-dingwei"></i>当前位置： <a
			href="3">首页</a> <b>&gt;</b> <a
			href="#">高中生物</a>
	</div>
	<div class="search-type d-search-type g-container">
		<div class="type-items">
			<div class="type-tit">教材：</div>
			<div class="type-conbox">
				<div class="type-con">
					<div class="con-items">
						<a
							href="https://zujuan.21cnjy.com/question?bookversion=97963&amp;chid=11&amp;xd=3"
							data-bcaid="97963" class="type-active">北师大版</a> <a
							href="https://zujuan.21cnjy.com/question?bookversion=68560&amp;chid=11&amp;xd=3"
							data-bcaid="68560">沪科版</a> <a
							href="https://zujuan.21cnjy.com/question?bookversion=36493&amp;chid=11&amp;xd=3"
							data-bcaid="36493">苏教版</a> <a
							href="https://zujuan.21cnjy.com/question?bookversion=36142&amp;chid=11&amp;xd=3"
							data-bcaid="36142">人教版（新课程标准）</a> <a
							href="https://zujuan.21cnjy.com/question?bookversion=37925&amp;chid=11&amp;xd=3"
							data-bcaid="37925">浙科版</a> <a
							href="https://zujuan.21cnjy.com/question?bookversion=51593&amp;chid=11&amp;xd=3"
							data-bcaid="51593">中图版</a>
					</div>
				</div>
			</div>
		</div>
		<div class="type-items">
			<div class="type-tit">年级：</div>
			<div class="type-conbox">
				<div class="type-con">
					<div class="con-items">
						<a
							href="https://zujuan.21cnjy.com/question?categories=143538&amp;bookversion=97963&amp;nianji=143538&amp;chid=11&amp;xd=3"
							data-bcaid="143538" class="type-active">必修一</a> <a
							href="https://zujuan.21cnjy.com/question?categories=97965&amp;bookversion=97963&amp;nianji=97965&amp;chid=11&amp;xd=3"
							data-bcaid="97965">必修二</a> <a
							href="https://zujuan.21cnjy.com/question?categories=97966&amp;bookversion=97963&amp;nianji=97966&amp;chid=11&amp;xd=3"
							data-bcaid="97966">必修三</a> <a
							href="https://zujuan.21cnjy.com/question?categories=97967&amp;bookversion=97963&amp;nianji=97967&amp;chid=11&amp;xd=3"
							data-bcaid="97967">选修一</a> <a
							href="https://zujuan.21cnjy.com/question?categories=97968&amp;bookversion=97963&amp;nianji=97968&amp;chid=11&amp;xd=3"
							data-bcaid="97968">选修二</a> <a
							href="https://zujuan.21cnjy.com/question?categories=97969&amp;bookversion=97963&amp;nianji=97969&amp;chid=11&amp;xd=3"
							data-bcaid="97969">选修三</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<input type="hidden" name="categories" value="143538">

	<div class="g-container f-cb">
		<div class="g-sd1">
			<div class="chapter-con f-usn" onselectstart="return false">
				<h1>选择章节</h1>
				<div id="J_Tree" class="t2-tree-smart0" style="height: auto;">
					<div class="t2-tree">
						<ul class="t2bd">
							<li class="complex-nav-item"  data-treeid="143542"><a href="javascript:;"
						class="active">
						<span></span> <em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第1章
											人类探索细胞的历史</em></a>
						<div  class="t2hd" id="sssq">
							<a
								href="${ctx }/tochapter?number=1&degree=${degree}&thetype=${thetype}"><i>走进细胞</i></a>
							<a
								href="${ctx }/tochapter?number=2&degree=${degree}&thetype=${thetype}"><i>组成细胞的分子</i></a>
							<a
								href="${ctx }/tochapter?number=3&degree=${degree}&thetype=${thetype}"><i>细胞的基本结构</i></a>
							<a
								href="${ctx }/tochapter?number=4&degree=${degree}&thetype=${thetype}"><i>细胞物质输入与输出</i></a>
							<a
								href="${ctx }/tochapter?number=5&degree=${degree}&thetype=${thetype}"><i>细胞的能量供应利用</i></a>
							<a
								href="${ctx }/tochapter?number=6&degree=${degree}&thetype=${thetype}"><i>细胞的生命历程</i></a>
						</div></li>
							<br>
							<li class="complex-nav-item"  data-treeid="143542"><a href="javascript:;"
						class="active">
						<span></span> <em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第2章
											遗传基因的发现与发展历程</em></a>
						<div  class="t2hd" id="sssq">
							<a
								href="${ctx }/tochapter?number=7&degree=${degree}&thetype=${thetype}"><i>遗传因子的发现</i></a>
							<a
								href="${ctx }/tochapter?number=8&degree=${degree}&thetype=${thetype}"><i>基因和染色体的关系</i></a>
							<a
								href="${ctx }/tochapter?number=9&degree=${degree}&thetype=${thetype}"><i>基因的本质</i></a>
							<a
								href="${ctx }/tochapter?number=10&degree=${degree}&thetype=${thetype}"><i>基因的表达</i></a>
							<a
								href="${ctx }/tochapter?number=11&degree=${degree}&thetype=${thetype}"><i>基因突变及其他变异</i></a>
							<a
								href="${ctx }/tochapter?number=12&degree=${degree}&thetype=${thetype}"><i>从杂交育种到基因工程</i></a>
						</div></li>
														<br>
														<li class="complex-nav-item"  data-treeid="143542"><a href="javascript:;"
						class="active">
						<span></span> <em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第3章
											现代动物植物的研究</em></a>
						<div  class="t2hd" id="sssq">
							<a
								href="${ctx }/tochapter?number=13&degree=${degree}&thetype=${thetype}"><i>现代生物进化</i></a>
							<a
								href="${ctx }/tochapter?number=14&degree=${degree}&thetype=${thetype}"><i>人体的内生态环境</i></a>
							<a
								href="${ctx }/tochapter?number=15&degree=${degree}&thetype=${thetype}"><i>动物和人体生命活动调节</i></a>
							<a
								href="${ctx }/tochapter?number=16&degree=${degree}&thetype=${thetype}"><i>植物的激素调节</i></a>
												</div></li>	
							<br>			
							<li class="complex-nav-item"  data-treeid="143542"><a href="javascript:;"
						class="active">
						<span></span> <em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第4章
											地球生态环境的探索与发现</em></a>
						<div  class="t2hd" id="sssq">
							<a
								href="${ctx }/tochapter?number=17&degree=${degree}&thetype=${thetype}"><i>种群和群落</i></a>
							<a
								href="${ctx }/tochapter?number=18&degree=${degree}&thetype=${thetype}"><i>生态系统及其稳定性</i></a>
							<a
								href="${ctx }/tochapter?number=19&degree=${degree}&thetype=${thetype}"><i>生态环境保护</i></a>
							
						</div></li>
						
						
						<br>
	
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="g-mn1">
			<div class="g-mn1c">
				<div class="tag-type f-cb">
					<div class="tag-items f-cb">
						<div class="tag-tit">题型：</div>
						<div class="tag-conbox">
							<div class="tag-con">
								<div class="con-items">
									<input type="hidden" name="question_channel_type" value="">
									<a data-name="question_channel_type" data-value="" href="${ctx }/tochapter?degree=${degree}&number=${number}&thetype=1"
										class="${typeclass1}">单选题</a> <a
										data-name="question_channel_type" data-value="1" href="${ctx }/tochapter?degree=${degree}&number=${number}&thetype=2" class="${typeclass2}">综合题</a>

									
								</div>
							</div>
						</div>
					</div>
					<div class="tag-items f-cb">
						<div class="tag-tit">难易程度：</div>
						<div class="tag-conbox">
							<div class="tag-con">
								<div class="con-items">
									<input type="hidden" name="difficult_index" value=""> 
									<a data-name="difficult_index"data-value="1" href="${ctx }/tochapter?degree=&number=${number}&thetype=${thetype}" class="${classall}">全部</a> 
									<a data-name="difficult_index"data-value="1" href="${ctx }/tochapter?degree=简单&number=${number}&thetype=${thetype}" class="${class1}">容易</a> 
									<a data-name="difficult_index"data-value="3" href="${ctx }/tochapter?number=${number}&degree=一般&thetype=${thetype}" class="${class2}">一般</a>
									<a data-name="difficult_index"data-value="5" href="${ctx }/tochapter?degree=困难&number=${number}&thetype=${thetype}"class="${class3}">困难</a>
								</div>
							</div>
						</div>
					</div>
					<div class="tag-items f-cb">
						<div class="tag-tit">题类筛选：</div>
						<div class="tag-conbox">
							<div class="tag-con">
								<div class="con-items">
									<input type="hidden" name="exam_type" value=""> <a
										data-name="exam_type" data-value="" href="#"
										class="type-active">全部</a> <a data-name="exam_type"
										data-value="1" href="#">高考真题</a> <a data-name="exam_type"
										data-value="2" href="#">常考题</a> <a data-name="exam_type"
										data-value="7" href="#">模拟题</a>
								</div>
							</div>
						</div>
					</div>
					<div class="tag-items f-cb"></div>
					<style>
#J_Nj span {
	cursor: pointer;
	display: inline-block;
	height: 20px;
	line-height: 20px;
	margin: 8px;
	padding: 0 4px;
}

#J_NjError {
	color: red;
	display: none;
	font-size: 12px;
	font-weight: 400;
	margin-left: 5px;
}
</style>
					<div class="tag-items f-cb">
						<div class="tag-tit">适用年级：</div>
						<div class="tag-conbox">
							<div class="tag-con">
								<input type="hidden" name="grade_id[]" checked="" value="0">
								<div id="J_Nj" class="q-set f-usn">
									<span class="checkbox checked"> <i class="icona-check"></i>
										<input type="checkbox" name="grade_id[]" checked="" value="10"
										style="display: none">高一
									</span> <span class="checkbox checked"> <i class="icona-check"></i>
										<input type="checkbox" name="grade_id[]" checked="" value="11"
										style="display: none">高二
									</span> <span class="checkbox checked"> <i class="icona-check"></i>
										<input type="checkbox" name="grade_id[]" checked="" value="12"
										style="display: none">高三
									</span> <span class="checkbox checked"> <i class="icona-check"></i>
										<input type="checkbox" name="grade_id[]" checked="" value="13"
										style="display: none">选修
									</span> <em id="J_NjError" style="display: none">*适用年级至少选择一个！</em>
								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="sort">
					<div class="sort-left">
						<input type="hidden" name="sortField" value="time"> 排序： <a
							href="javascript:;" id="sort-time" class="time sort-active">时间<i
							class="icona-sort3"></i></a> <a href="javascript:;" id="sort-count"
							class="count">组卷次数<i class="icona-down"></i></a>
					</div>
					<div class="switch-detail f-fl">
						<!--                    <a class="checkbox" id="deleteUseQid">过滤已使用试题</a>-->
						<span class="deleteUseQid" title="过滤掉您半年内使用过的试题"> <input
							type="hidden" name="filterquestion" value="0"> <i
							class="icona-check"></i> <input type="checkbox" name="" value="0"
							style="display: none"> 过滤已使用的试题
						</span>
					</div>
					<a class="select-btn" href="javascript:;"
						onclick="return OT2.Global.initLogin();">选择本页全部试题</a>
					<div class="total">
						共计：<b>${c_page.totalRecords}</b>题
					</div>
				</div>
				<div class="search-list">

					<ul id="J_QuestionList">

						<c:set var="i" value="1"/>
						<c:forEach items="${c_page.c_list}" var="ti" >
													<li data-qid="7058037">
								<div class="search-exam">
									<div class="exam-head">
										<p class="exam-head-left">
											<span>题型：单选题</span><i class="line"></i> <span>题类：模拟题</span><i
												class="line"></i> <span>难易度：${ti.difficulty}</span>
										</p>
										<p class="exam-head-right">
											<span>试题来源：<a href="#" target="_blank">河北师范大学2015届期末考试4399收集整理</a></span>
										</p>
									</div>
									<div class="exam-con">

										<div class="exam-q">
											<c:set var="j" value="${c_page.pageNo}"></c:set>
											<c:out value="${i+6*(j-1)}"/> .&nbsp;&nbsp;&nbsp; ${ti.content} 
										</div>
									<c:set var="i" value="${i+1}"/>
										




									</div>
									<div class="exam-foot">
										<p class="exam-foot-left">
											<a target="_blank"
												href="https://zujuan.21cnjy.com/question/detail/7058037"><i
												class="icona-jiexi"></i>查看解析</a> <a href="javascript:;"
												onclick="OT2.QCollect(this, 7058037 )"><i
												class="icona-shoucang"></i>收藏</a> <a href="javascript:;"
												onclick="new OT2.ErrorReport( 7058037 )"><i
												class="icona-jiucuo"></i>纠错</a>
										</p>
										<p class="exam-foot-right">
											<c:choose>
												<c:when test="${typeclass2 != null }">
													<a class="addbtn J_AddQuestion" href="${ctx }/add?id=-1&bigId=${ti.getBigQuestionId()}"><b>+</b>选题</a>
												</c:when>
												<c:otherwise>
													<a class="addbtn J_AddQuestion" href="${ctx }/add?id=${ti.getChoiceQuestionId() }&bigId=-1"><b>+</b>选题</a>
												</c:otherwise>
											</c:choose>
											 

										</p>
									</div>
								</div>
							</li>
							</ul>
						<ul id="J_QuestionList">
						</c:forEach>			

				</div>
				<input type="hidden" name="page" value="1">
				<div class="page">

					<div class="pagenum">
						<table style="margin-left: 300px;">
							<tr>
								<td colspan="6" align="center" bgcolor="">共&nbsp;&nbsp;&nbsp;${c_page.totalRecords}&nbsp;&nbsp;&nbsp;条记录;
									共&nbsp;&nbsp;&nbsp;${c_page.totalPages}&nbsp;&nbsp;&nbsp;页
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
									href="${ctx }/${wocaonima}?pageNo=${c_page.topPageNo}&number=${number}&degree=${degree}&thetype=${thetype}"
									class="btn_r">首页</a> <c:choose>
										<c:when test="${c_page.pageNo!=1}">
											<a
												href="${ctx }/${wocaonima}?pageNo=${c_page.previousPageNo }&number=${number}&degree=${degree}&thetype=${thetype}"
												class="btn_r">上一页</a>
										</c:when>
										<c:otherwise>
											<a class="btn_r">上一页</a>
										</c:otherwise>
									</c:choose> <c:choose>
										<c:when test="${c_page.pageNo != page.totalPages}">
											<a
												href="${ctx }/${wocaonima}?pageNo=${c_page.nextPageNo }&number=${number}&degree=${degree}&thetype=${thetype}"
												class="btn_r">下一页</a>
										</c:when>
										<c:otherwise>
											<a class="btn_r">下一页</a>
										</c:otherwise>
									</c:choose> <a href="${ctx }/${wocaonima}?pageNo=${c_page.bottomPageNo }&number=${number}&degree=${degree}&thetype=${thetype}"
									class="btn_r">尾页</a>

								</td>
								<td>
									<form action="${ctx }/${wocaonima}" method="get">
									    <input type="hidden" name="number" value="${number}"/>
									    <input type="hidden" name="degree" value="${degree}"/>
									    <input type="hidden" name="thetype" value="${thetype}"/>
									    
									     
										<input
											style="border: 1px solid #dcdcdc; color: #333; display: inline-block; font-size: 12px; height: 32px; width: 30px; line-height: 32px; margin: 0 5px; padding: 0 5px; text-align: center; white-space: nowrap;"
											name="pageNo" type="text" value="${c_page.pageNo}">
										<button type="submit">跳转</button>
									</form>


								</td>
							</tr>
						</table>

					</div>
				</div>
				<div class="null-page"
					style="width: 100%; text-align: center; color: #333; font-size: 14px; margin-top: 80px; display: none;">
					<img src="./高中-生物-手动搜题 -二一组卷_files/blank.png"><br>
					<br> <span
						style="font-size: 16px; color: #666666; font-family: Microsoft YaHei">未搜索到相关数据!</span>
				</div>
			</div>
		</div>
	</div>
	<!--试题篮-->

	<div class="basket" id="J_Basket">
		<div class="basket-tit">
			<p>
				<a href="${ctx}/show"><i class="icona-gouwulan"></i><em>生成试卷</em></a>
			</p>
			<span><i class="icona-gouwuleft"></i></span>
		</div>
		<div class="basket-con">
			<div class="basket-count">
				<div class="basket-head">
					共计：（<span>0</span>）道题
				</div>
				<div class="baskrt-list"></div>
			</div>
			<div class="basket-foot">
				<a id="to-paper-admin-edit" data-method="post" class="basket-btn"
					href="https://zujuan.21cnjy.com/paper/admin-edit"
					style="display: none">编辑</a> <a id="to-paper-edit"
					data-method="post" class="basket-btn"
					href="https://zujuan.21cnjy.com/paper/edit" style="">生成试卷</a> <a
					id="to-paper-admin-cancel" class="basket-btn" shref="/question"
					style="display: none">取消</a>
			</div>
		</div>
	</div>
	<script>
		$(function() {
			var cachePaper = null;
			try {
				cachePaper = JSON3.parse(OT2.LocalData.get('basket_cachePid'));
			} catch (e) {

			}
			var admin_url = '/paper/admin-edit';
			if (cachePaper) {
				var pid = cachePaper.pid;
				admin_url += '?pid=' + pid + '&clean=0';
				$('#to-paper-admin-edit').show().attr({
					href : admin_url
				});
				$('#to-paper-admin-cancel').show().click(function() {
					var _this = this;
					OT2.LocalData.remove(cachePaper.paper_key);
					OT2.LocalData.remove('basket_cacheObj_v2');
					OT2.LocalData.remove('basket_cachePid');
					setTimeout(function() {
						window.location.href = $(_this).attr('shref');
					}, 500);

				});
				$('.basket-tit').css({
					background : '#ffb03d none repeat scroll 0 0'
				});
			} else {
				$('#to-paper-edit').show();
			}

			$(".basket-foot a[data-method='post']").click(
					function() {
						if (typeof USER.uid === 'undefined') {
							OT2.Global.initLogin();
							return false;
						}
						var cacheObj = {};
						try {
							cacheObj = JSON3.parse(OT2.LocalData
									.get('basket_cacheObj_v2'))
									|| {};
						} catch (e) {

						}
						var qids = [];
						var _data = _.sortBy(cacheObj, 'order');
						// _.each(cacheObj, function (v) {
						_.each(_data, function(v) {
							if (v.xd == OT2.xd_chid.xd
									&& v.xk == OT2.xd_chid.chid) {
								qids.push(v.id);
							}
						});
						if (typeof USER.basketLimit === 'undefined')
							USER.basketLimit = 30; // 未登录默认三十条
						var len = qids.length;
						if (len == 0) {
							OT2.Util.alert('试题篮是空的，请添加试题！');
							return false;
						}
						if (len > USER.basketLimit) {
							OT2.Util.alert('试题篮试题数量超过限制');
							return false;
						}
						$(this).attr({
							'data-params' : JSON3.stringify({
								'qids' : qids
							})
						});
						//alert(0);
						return true;
					});
		})

		<script type="text/javascript" src="${ctx }/static/library/get-parameters">
	</script>
	<script src="${ctx }/static/library/tree.min.js.下载"></script>
	<script src="${ctx }/static/library/error-report.min.js.下载"></script>
	<script src="${ctx }/static/library/question-txt.min.js.下载"></script>
	<script src="./高中-生物-手动搜题 -二一组卷_files/jquery.md5.js.下载"></script>
	<script src="${ctx }/static/library/question.min.js.下载"></script>
	<!--<script src="/lib/mock/mock-data.js"></script>-->
	<script src="${ctx }/static/library/q-list.min.js.下载"></script>
	<div style="position: absolute; display: none;"></div>
	<script src="${ctx }/static/library/element.min.js.下载"></script>
	<script>
		$(document.body).addClass('f-usn').on('selectstart', function() {
			return false;
		}).on('contextmenu', function() {
			return false;
		});
		var MockDataTestPaper = [ {
			"head_title" : "题目",
			"questions" : [
					{
						"question_id" : "7057991",
						"qsn_id" : null,
						"question_type" : "1",
						"question_channel_type" : "1",
						"question_status" : "2",
						"question_tags" : "",
						"chid" : "11",
						"xd" : "3",
						"create_by" : "1348058075_O54gFl",
						"create_uid" : "7693066",
						"create_date" : "2018-10-23 09:05:09",
						"update_by" : "21jy_941541823",
						"update_uid" : "8046014",
						"update_date" : "2018-03-31 20:42:04",
						"update_reason" : "",
						"audit_by" : "21jy_941541823",
						"audit_uid" : "8046014",
						"audit_date" : "2018-03-31 11:05:51",
						"audit2_by" : "1348058075_O54gFl",
						"audit2_uid" : "7693066",
						"audit2_date" : "2018-03-31 20:42:04",
						"opinion" : "",
						"parent_id" : "0",
						"sort" : 1,
						"is_objective" : "1",
						"difficult_index" : "3",
						"master_level" : "2",
						"exam_type" : "7",
						"evaluated" : "0",
						"region_ids" : "13",
						"grade_id" : "12",
						"question_source" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷",
						"mode" : "3",
						"is_delete" : "0",
						"md5sum" : "6e07d48c4208181967e75e949ced21ef",
						"title" : "下图甲表示由磷脂分子合成的人工膜的结构示意图，下图乙表示人的红细胞膜的结构示意图及葡萄糖和乳酸的跨膜运输情况，图丙中A为1mol/L的葡...",
						"kid_num" : "3",
						"paperid" : "806463",
						"save_num" : "15",
						"oldqid" : "0",
						"paper" : {
							"pid" : "806463",
							"title" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷"
						},
						"extra_file" : "",
						"question_text" : "下图甲表示由磷脂分子合成的人工膜的结构示意图，下图乙表示人的红细胞膜的结构示意图及葡萄糖和乳酸的跨膜运输情况，图丙中A为1mol/L的葡萄糖溶液，B为1mol/L的乳酸溶液，下列说法不正确的是(&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )<br/><img data-cke-saved-src=\"http://tikupic.21cnjy.com/b3/7c/b37c825af477690c70d23cff33e55795.png\" src=\"http://tikupic.21cnjy.com/b3/7c/b37c825af477690c70d23cff33e55795.png\" v:shapes=\"图片_x0020_100000\" height=\"152\" width=\"518\">",
						"options" : {
							"A" : "由于磷脂分子具有亲水的头部和疏水的尾部，图甲人工膜在水中磷脂分子排列成单层",
							"B" : "若图乙所示细胞放在无氧环境中，葡萄糖和乳酸的跨膜运输都不会受到影响",
							"C" : "若用图甲所示人工膜作为图丙中的半透膜，当液面不再变化时，左侧液面等于右侧液面",
							"D" : "图丁中①为信号分子，与靶细胞细胞膜上的②特异性结合，体现了细胞膜的信息交流功能"
						},
						"answer" : "http://webshot.21cnjy.com/q/62/3f/6fdbb26ae2d5ecd25e96b0e667a3_7057991an.png?hash=8126ce1d96e36626fd333b76ba616383&sign=d470e8bb3728bf6e0abf46d4d496beda",
						"explanation" : "http://webshot.21cnjy.com/q/62/3f/6fdbb26ae2d5ecd25e96b0e667a3_7057991ex.png?hash=d557882fa628c700403dff9463dd888a&sign=692c909026effce8f6f5bb6d743ed84b",
						"pic_answer" : "0",
						"pic_explanation" : "0",
						"knowledge" : "http://webshot.21cnjy.com/q/62/3f/6fdbb26ae2d5ecd25e96b0e667a3_7057991kn.png?hash=8b869447b8cb7d6031c9a9a6ebf2b173&sign=ceafc49e5219f8922fc24881cae0470c",
						"category" : null,
						"is_collect" : false,
						"done" : false,
						"myanswer" : "",
						"score" : {
							"score" : 2
						},
						"sort2" : 1,
						"is_use" : 0
					},
					{
						"question_id" : "7057995",
						"qsn_id" : null,
						"question_type" : "1",
						"question_channel_type" : "1",
						"question_status" : "2",
						"question_tags" : "",
						"chid" : "11",
						"xd" : "3",
						"create_by" : "1348058075_O54gFl",
						"create_uid" : "7693066",
						"create_date" : "2018-10-23 09:05:09",
						"update_by" : "21jy_941541823",
						"update_uid" : "8046014",
						"update_date" : "2018-03-31 20:42:04",
						"update_reason" : "",
						"audit_by" : "21jy_941541823",
						"audit_uid" : "8046014",
						"audit_date" : "2018-03-31 11:01:31",
						"audit2_by" : "1348058075_O54gFl",
						"audit2_uid" : "7693066",
						"audit2_date" : "2018-03-31 20:42:04",
						"opinion" : "",
						"parent_id" : "0",
						"sort" : 2,
						"is_objective" : "1",
						"difficult_index" : "3",
						"master_level" : "2",
						"exam_type" : "7",
						"evaluated" : "0",
						"region_ids" : "13",
						"grade_id" : "12",
						"question_source" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷",
						"mode" : "3",
						"is_delete" : "0",
						"md5sum" : "5f6fa54f5cb2b2a3afce218440621102",
						"title" : "下列关于细胞呼吸的叙述中，正确的是( )",
						"kid_num" : "1",
						"paperid" : "806463",
						"save_num" : "10",
						"oldqid" : "0",
						"paper" : {
							"pid" : "806463",
							"title" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷"
						},
						"extra_file" : "",
						"question_text" : "下列关于细胞呼吸的叙述中，正确的是(&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )",
						"options" : {
							"A" : "葡萄糖在线粒体中彻底氧化分解，释放大量能量",
							"B" : "人体细胞内CO<sub>2</sub>/O<sub>2</sub>值，线粒体比细胞质基质低",
							"C" : "消耗等摩尔葡萄糖，有氧呼吸散失的热能比无氧呼吸少",
							"D" : "有氧呼吸第一阶段产生的丙酮酸和[H]都能进入线粒体"
						},
						"answer" : "http://webshot.21cnjy.com/q/4a/46/d0fbee7bead0d80802cd78d85217_7057995an.png?hash=0c1b211c1b86f9e77c06d9935f3e038a&sign=280523e9bfe0c7618efbcaded9fcbf80",
						"explanation" : "http://webshot.21cnjy.com/q/4a/46/d0fbee7bead0d80802cd78d85217_7057995ex.png?hash=3d9a4333e18f7f9ec6aad8f7aa3f2ce0&sign=c793966c2b55627bc9c40c02541aa0b1",
						"pic_answer" : "0",
						"pic_explanation" : "0",
						"knowledge" : "http://webshot.21cnjy.com/q/4a/46/d0fbee7bead0d80802cd78d85217_7057995kn.png?hash=4eb286c04844e634de43ebf4411d701c&sign=8964e15c50519d8b6ede066effe3559a",
						"category" : null,
						"is_collect" : false,
						"done" : false,
						"myanswer" : "",
						"score" : {
							"score" : 2
						},
						"sort2" : 2,
						"is_use" : 0
					},
					{
						"question_id" : "7058037",
						"qsn_id" : null,
						"question_type" : "1",
						"question_channel_type" : "1",
						"question_status" : "2",
						"question_tags" : "",
						"chid" : "11",
						"xd" : "3",
						"create_by" : "1348058075_O54gFl",
						"create_uid" : "7693066",
						"create_date" : "2018-10-23 09:05:09",
						"update_by" : "21jy_941541823",
						"update_uid" : "8046014",
						"update_date" : "2018-03-31 20:42:04",
						"update_reason" : "",
						"audit_by" : "21jy_941541823",
						"audit_uid" : "8046014",
						"audit_date" : "2018-03-31 10:22:12",
						"audit2_by" : "1348058075_O54gFl",
						"audit2_uid" : "7693066",
						"audit2_date" : "2018-03-31 20:42:04",
						"opinion" : "",
						"parent_id" : "0",
						"sort" : 3,
						"is_objective" : "1",
						"difficult_index" : "3",
						"master_level" : "2",
						"exam_type" : "7",
						"evaluated" : "0",
						"region_ids" : "13",
						"grade_id" : "12",
						"question_source" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷",
						"mode" : "3",
						"is_delete" : "0",
						"md5sum" : "767dd3c365bb0fd14b9c1abc7999c01d",
						"title" : "某生物的一个细胞刚刚完成着丝点分裂，下列有关叙述正确的是( )",
						"kid_num" : "1",
						"paperid" : "806463",
						"save_num" : "13",
						"oldqid" : "0",
						"paper" : {
							"pid" : "806463",
							"title" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷"
						},
						"extra_file" : "",
						"question_text" : "某生物的一个细胞刚刚完成着丝点分裂，下列有关叙述正确的是(&nbsp;&nbsp;&nbsp; )",
						"options" : {
							"A" : "着丝点分裂会导致DNA数目加倍",
							"B" : "此时细胞中一定不存在同源染色体",
							"C" : "着丝点分裂与纺锤丝的牵引无关",
							"D" : "此时细胞中染色体数目一定是该生物体细胞的两倍"
						},
						"answer" : "#",
						"explanation" : "#",
						"pic_answer" : "0",
						"pic_explanation" : "0",
						"knowledge" : "#",
						"category" : null,
						"is_collect" : false,
						"done" : false,
						"myanswer" : "",
						"score" : {
							"score" : 2
						},
						"sort2" : 3,
						"is_use" : 0
					},
					{
						"question_id" : "7058049",
						"qsn_id" : null,
						"question_type" : "7",
						"question_channel_type" : "26",
						"question_status" : "2",
						"question_tags" : "",
						"chid" : "11",
						"xd" : "3",
						"create_by" : "1348058075_O54gFl",
						"create_uid" : "7693066",
						"create_date" : "2018-10-23 09:05:09",
						"update_by" : "21jy_941541823",
						"update_uid" : "8046014",
						"update_date" : "2018-03-31 20:42:04",
						"update_reason" : "",
						"audit_by" : "21jy_941541823",
						"audit_uid" : "8046014",
						"audit_date" : "2018-03-27 20:59:58",
						"audit2_by" : "1348058075_O54gFl",
						"audit2_uid" : "7693066",
						"audit2_date" : "2018-03-31 20:42:04",
						"opinion" : "",
						"parent_id" : "0",
						"sort" : 4,
						"is_objective" : "0",
						"difficult_index" : "3",
						"master_level" : "2",
						"exam_type" : "7",
						"evaluated" : "0",
						"region_ids" : "13",
						"grade_id" : "12",
						"question_source" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷",
						"mode" : "3",
						"is_delete" : "0",
						"md5sum" : "6154d422f86f8ecf51dfc25f4e582078",
						"title" : "为探究不同光暗交替频率对某植物光合作用的影响，科学家以生长健壮、状态基本相同的某植物为材料，设计了如下图1所示的A、B、C、D四组实验...",
						"kid_num" : "1",
						"paperid" : "806463",
						"save_num" : "5",
						"oldqid" : "0",
						"paper" : {
							"pid" : "806463",
							"title" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷"
						},
						"list" : [
								{
									"question_id" : "7087417",
									"qsn_id" : null,
									"question_type" : "4",
									"question_channel_type" : "26",
									"question_status" : "1",
									"question_tags" : "",
									"chid" : "11",
									"xd" : "3",
									"create_by" : "",
									"create_uid" : "0",
									"create_date" : "2018-10-23 09:05:09",
									"update_by" : "",
									"update_uid" : "0",
									"update_date" : null,
									"update_reason" : "",
									"audit_by" : "",
									"audit_uid" : "0",
									"audit_date" : null,
									"audit2_by" : "",
									"audit2_uid" : "0",
									"audit2_date" : null,
									"opinion" : "",
									"parent_id" : "7058049",
									"sort" : 4,
									"is_objective" : "0",
									"difficult_index" : "3",
									"master_level" : "2",
									"exam_type" : "7",
									"evaluated" : "0",
									"region_ids" : "",
									"grade_id" : "12",
									"question_source" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷",
									"mode" : "1",
									"is_delete" : "0",
									"md5sum" : "",
									"title" : "",
									"kid_num" : "1",
									"paperid" : null,
									"save_num" : "0",
									"oldqid" : "0",
									"paper" : null,
									"extra_file" : "",
									"question_text" : "本实验中，四组实验选择的植株要“生长健壮、状态基本相同”，其目的是<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />。试再举出两种影响本实验结果的环境因子：<input type=\"text\" placeholder=\"2\" ms-duplex-string =\"child.myanswer[2]\" class=\"cke_questions_blankInput\" />。",
									"options" : "",
									"answer" : "#",
									"explanation" : "",
									"pic_answer" : "0",
									"pic_explanation" : "0",
									"knowledge" : null,
									"category" : null,
									"done" : false,
									"myanswer" : {
										"1" : "",
										"2" : ""
									},
									"sort2" : 1
								},
								{
									"question_id" : "7087419",
									"qsn_id" : null,
									"question_type" : "4",
									"question_channel_type" : "26",
									"question_status" : "1",
									"question_tags" : "",
									"chid" : "11",
									"xd" : "3",
									"create_by" : "",
									"create_uid" : "0",
									"create_date" : "2018-10-23 09:05:09",
									"update_by" : "",
									"update_uid" : "0",
									"update_date" : null,
									"update_reason" : "",
									"audit_by" : "",
									"audit_uid" : "0",
									"audit_date" : null,
									"audit2_by" : "",
									"audit2_uid" : "0",
									"audit2_date" : null,
									"opinion" : "",
									"parent_id" : "7058049",
									"sort" : 5,
									"is_objective" : "0",
									"difficult_index" : "3",
									"master_level" : "2",
									"exam_type" : "7",
									"evaluated" : "0",
									"region_ids" : "",
									"grade_id" : "12",
									"question_source" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷",
									"mode" : "1",
									"is_delete" : "0",
									"md5sum" : "",
									"title" : "",
									"kid_num" : "1",
									"paperid" : null,
									"save_num" : "0",
									"oldqid" : "0",
									"paper" : null,
									"extra_file" : "",
									"question_text" : "图1实验中，光处理产生的产物被用于图2中的<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />过程（填序号）。图2中能产生〔H〕的过程有<input type=\"text\" placeholder=\"2\" ms-duplex-string =\"child.myanswer[2]\" class=\"cke_questions_blankInput\" />（填序号）。",
									"options" : "",
									"answer" : "#",
									"explanation" : "",
									"pic_answer" : "0",
									"pic_explanation" : "0",
									"knowledge" : null,
									"category" : null,
									"done" : false,
									"myanswer" : {
										"1" : "",
										"2" : ""
									},
									"sort2" : 2
								},
								{
									"question_id" : "7087421",
									"qsn_id" : null,
									"question_type" : "4",
									"question_channel_type" : "26",
									"question_status" : "1",
									"question_tags" : "",
									"chid" : "11",
									"xd" : "3",
									"create_by" : "",
									"create_uid" : "0",
									"create_date" : "2018-10-23 09:05:09",
									"update_by" : "",
									"update_uid" : "0",
									"update_date" : null,
									"update_reason" : "",
									"audit_by" : "",
									"audit_uid" : "0",
									"audit_date" : null,
									"audit2_by" : "",
									"audit2_uid" : "0",
									"audit2_date" : null,
									"opinion" : "",
									"parent_id" : "7058049",
									"sort" : 6,
									"is_objective" : "0",
									"difficult_index" : "3",
									"master_level" : "2",
									"exam_type" : "7",
									"evaluated" : "0",
									"region_ids" : "",
									"grade_id" : "12",
									"question_source" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷",
									"mode" : "1",
									"is_delete" : "0",
									"md5sum" : "",
									"title" : "",
									"kid_num" : "1",
									"paperid" : null,
									"save_num" : "0",
									"oldqid" : "0",
									"paper" : null,
									"extra_file" : "",
									"question_text" : "预期A、B、C组结果的M<sub>1</sub>、M<sub>2</sub>、M<sub>3</sub>数值大小关系为M<sub>1</sub>&lt;M<sub>2</sub>&lt;M<sub>3</sub>。综合四组实验结果，试解释该植物积累有机物的相对含量随光暗交替频率变化的原因是<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />。",
									"options" : "",
									"answer" : "#",
									"explanation" : "",
									"pic_answer" : "0",
									"pic_explanation" : "0",
									"knowledge" : null,
									"category" : null,
									"done" : false,
									"myanswer" : {
										"1" : ""
									},
									"sort2" : 3
								} ],
						"extra_file" : "",
						"question_text" : "为探究不同光暗交替频率对某植物光合作用的影响，科学家以生长健壮、状态基本相同的某植物为材料，设计了如下图1所示的A、B、C、D四组实验。其中A组先光照4min后黑暗处理4min；B组先光照lmin后黑暗处理lmin，交替四个周期；C组先光照30s后黑暗处理30s，交替8个周期；D连续光照8min。实验结果是A组植物积累有机物的相对含量为M<sub>1</sub>%， B组为M<sub>2</sub>%，C组为M<sub>3</sub>%，D组为100%。图2为该植物某生命活动的过程示意图。据图回答下列有关问题：<br/><img data-cke-saved-src=\"#" src=\"http://tikupic.21cnjy.com/c1/d3/c1d314c32fb429df0ef5660284677b97.png\" v:shapes=\"图片_x0020_100016\" height=\"112\" width=\"513\">",
						"options" : "[]",
						"answer" : "",
						"answer_json" : [ "" ],
						"explanation" : "#",
						"pic_answer" : "0",
						"pic_explanation" : "0",
						"knowledge" : "#",
						"category" : null,
						"is_collect" : false,
						"done" : false,
						"myanswer" : "",
						"score" : {
							"score" : 5,
							"subScore" : [ 2, 2, 1 ]
						},
						"sort2" : 4,
						"is_use" : 0
					},
					{
						"question_id" : "7057985",
						"qsn_id" : null,
						"question_type" : "1",
						"question_channel_type" : "1",
						"question_status" : "2",
						"question_tags" : "",
						"chid" : "11",
						"xd" : "3",
						"create_by" : "1348058075_O54gFl",
						"create_uid" : "7693066",
						"create_date" : "2018-10-23 09:05:09",
						"update_by" : "21jy_941541823",
						"update_uid" : "8046014",
						"update_date" : "2018-03-31 20:42:04",
						"update_reason" : "",
						"audit_by" : "21jy_941541823",
						"audit_uid" : "8046014",
						"audit_date" : "2018-03-31 10:44:11",
						"audit2_by" : "1348058075_O54gFl",
						"audit2_uid" : "7693066",
						"audit2_date" : "2018-03-31 20:42:04",
						"opinion" : "",
						"parent_id" : "0",
						"sort" : 7,
						"is_objective" : "1",
						"difficult_index" : "3",
						"master_level" : "1",
						"exam_type" : "7",
						"evaluated" : "0",
						"region_ids" : "13",
						"grade_id" : "12",
						"question_source" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷",
						"mode" : "3",
						"is_delete" : "0",
						"md5sum" : "63eb9d7c90097ae573622bb8237784f7",
						"title" : "下列物质或结构在元素组成上都相同的有下面哪几组( )①核糖、核糖核酸、核糖体 ②ATP、质粒、磷脂 ③纤维素、脂肪、乳糖 ④胆固醇、糖原、胰岛素",
						"kid_num" : "5",
						"paperid" : "806463",
						"save_num" : "10",
						"oldqid" : "0",
						"paper" : {
							"pid" : "806463",
							"title" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷"
						},
						"extra_file" : "",
						"question_text" : "下列物质或结构在元素组成上都相同的有下面哪几组(&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )<br/>①核糖、核糖核酸、核糖体 ②ATP、质粒、磷脂 ③纤维素、脂肪、乳糖 ④胆固醇、糖原、胰岛素",
						"options" : {
							"A" : "①②",
							"B" : "②③",
							"C" : "②④",
							"D" : "①④"
						},
						"answer" : "http://webshot.21cnjy.com/q/e7/c0/b0e06b42bfeec4bcb0c6772d36dd_7057985an.png?hash=335ba9236259253a883e66e14019ba3e&sign=9772d13e149925db8e3856d6b96b1e16",
						"explanation" : "http://webshot.21cnjy.com/q/e7/c0/b0e06b42bfeec4bcb0c6772d36dd_7057985ex.png?hash=01694652adf62483586540b1ea471ca0&sign=843db37c7c1881ce3f657782aaa0f0c2",
						"pic_answer" : "0",
						"pic_explanation" : "0",
						"knowledge" : "http://webshot.21cnjy.com/q/e7/c0/b0e06b42bfeec4bcb0c6772d36dd_7057985kn.png?hash=067ae9718424ff46e6be26d4231a0567&sign=300781cc07bf5544e7298dc55a1b4408",
						"category" : null,
						"is_collect" : false,
						"done" : false,
						"myanswer" : "",
						"score" : {
							"score" : 2
						},
						"sort2" : 5,
						"is_use" : 0
					},
					{
						"question_id" : "7058045",
						"qsn_id" : null,
						"question_type" : "1",
						"question_channel_type" : "1",
						"question_status" : "2",
						"question_tags" : "",
						"chid" : "11",
						"xd" : "3",
						"create_by" : "1348058075_O54gFl",
						"create_uid" : "7693066",
						"create_date" : "2018-10-23 09:05:09",
						"update_by" : "21jy_941541823",
						"update_uid" : "8046014",
						"update_date" : "2018-03-31 20:42:04",
						"update_reason" : "",
						"audit_by" : "21jy_941541823",
						"audit_uid" : "8046014",
						"audit_date" : "2018-03-31 10:10:56",
						"audit2_by" : "1348058075_O54gFl",
						"audit2_uid" : "7693066",
						"audit2_date" : "2018-03-31 20:42:04",
						"opinion" : "",
						"parent_id" : "0",
						"sort" : 8,
						"is_objective" : "1",
						"difficult_index" : "3",
						"master_level" : "2",
						"exam_type" : "7",
						"evaluated" : "0",
						"region_ids" : "13",
						"grade_id" : "12",
						"question_source" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷",
						"mode" : "3",
						"is_delete" : "0",
						"md5sum" : "67ec97fa757e7f64ccf5e29b7140bc9c",
						"title" : "下列选项中不符合含量关系“c=a+b，且a>b”的是( )",
						"kid_num" : "4",
						"paperid" : "806463",
						"save_num" : "10",
						"oldqid" : "0",
						"paper" : {
							"pid" : "806463",
							"title" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷"
						},
						"extra_file" : "",
						"question_text" : "下列选项中不符合含量关系“c=a+b，且a&gt;b”的是(&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )",
						"options" : {
							"A" : "a非必需氨基酸种类、b必需氨基酸种类、c人体蛋白质的氨基酸种类",
							"B" : "a各细胞器的膜面积、b细胞核的膜面积、c生物膜系统的膜面积",
							"C" : "a线粒体的内膜面积、b线粒体的外膜面积、c线粒体膜面积",
							"D" : "a叶肉细胞的自由水、b叶肉细胞的结合水、c叶肉细胞总含水量"
						},
						"answer" : "#",
						"explanation" : "#",
						"pic_answer" : "0",
						"pic_explanation" : "0",
						"knowledge" : "#",
						"category" : null,
						"is_collect" : false,
						"done" : false,
						"myanswer" : "",
						"score" : {
							"score" : 2
						},
						"sort2" : 6,
						"is_use" : 0
					},
					{
						"question_id" : "7057993",
						"qsn_id" : null,
						"question_type" : "1",
						"question_channel_type" : "1",
						"question_status" : "2",
						"question_tags" : "",
						"chid" : "11",
						"xd" : "3",
						"create_by" : "1348058075_O54gFl",
						"create_uid" : "7693066",
						"create_date" : "2018-10-23 09:05:09",
						"update_by" : "21jy_941541823",
						"update_uid" : "8046014",
						"update_date" : "2018-03-31 20:42:04",
						"update_reason" : "",
						"audit_by" : "21jy_941541823",
						"audit_uid" : "8046014",
						"audit_date" : "2018-03-31 11:02:51",
						"audit2_by" : "1348058075_O54gFl",
						"audit2_uid" : "7693066",
						"audit2_date" : "2018-03-31 20:42:04",
						"opinion" : "",
						"parent_id" : "0",
						"sort" : 9,
						"is_objective" : "1",
						"difficult_index" : "3",
						"master_level" : "2",
						"exam_type" : "7",
						"evaluated" : "0",
						"region_ids" : "13",
						"grade_id" : "12",
						"question_source" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷",
						"mode" : "3",
						"is_delete" : "0",
						"md5sum" : "7b094688bf08f4d796c66dc07690c022",
						"title" : "图示A，B两种物质混合后各自的浓度变化，已知T1时加入酶C，反应在酶C的最适条件下进行。当改变条件时，T2值会发生相应变化。下列选项中，条...",
						"kid_num" : "1",
						"paperid" : "806463",
						"save_num" : "4",
						"oldqid" : "0",
						"paper" : {
							"pid" : "806463",
							"title" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷"
						},
						"extra_file" : "",
						"question_text" : "图示A，B两种物质混合后各自的浓度变化，已知T1时加入酶C，反应在酶C的最适条件下进行。当改变条件时，T2值会发生相应变化。下列选项中，条件改变与T2值变化对应正确的是(&nbsp;&nbsp;&nbsp; )<br/><img data-cke-saved-src=\"http://tikupic.21cnjy.com/fa/fe/fafe2bc9a17c24b97561d4ef7afd10a3.png\" src=\"http://tikupic.21cnjy.com/fa/fe/fafe2bc9a17c24b97561d4ef7afd10a3.png\" v:shapes=\"图片_x0020_1\" height=\"116\" width=\"214\"><table cellspacing=\"0\" cellpadding=\"0\" border=\"1\" width=\"100%\"><tbody><tr><td width=\"115\">选项</td><td width=\"240\">条件改变</td><td width=\"192\">T2值变化</td></tr><tr><td width=\"115\">A</td><td width=\"240\">适当增大pH</td><td width=\"192\">增大</td></tr><tr><td width=\"115\">B</td><td width=\"240\">适当降低温度</td><td width=\"192\">减小</td></tr><tr><td width=\"115\">C</td><td width=\"240\">适当降低A的浓度</td><td width=\"192\">减小</td></tr><tr><td width=\"115\">D</td><td width=\"240\">适当增加酶C的量</td><td width=\"192\">增大</td></tr></tbody></table>",
						"options" : {
							"A" : "A",
							"B" : "B",
							"C" : "C",
							"D" : "D"
						},
						"answer" : "#,
						"explanation" : "#",
						"pic_answer" : "0",
						"pic_explanation" : "0",
						"knowledge" : "#",
						"category" : null,
						"is_collect" : false,
						"done" : false,
						"myanswer" : "",
						"score" : {
							"score" : 2
						},
						"sort2" : 7,
						"is_use" : 0
					},
					{
						"question_id" : "7058021",
						"qsn_id" : null,
						"question_type" : "1",
						"question_channel_type" : "1",
						"question_status" : "2",
						"question_tags" : "",
						"chid" : "11",
						"xd" : "3",
						"create_by" : "1348058075_O54gFl",
						"create_uid" : "7693066",
						"create_date" : "2018-10-23 09:05:09",
						"update_by" : "21jy_941541823",
						"update_uid" : "8046014",
						"update_date" : "2018-03-31 20:42:04",
						"update_reason" : "",
						"audit_by" : "21jy_941541823",
						"audit_uid" : "8046014",
						"audit_date" : "2018-03-31 11:22:11",
						"audit2_by" : "1348058075_O54gFl",
						"audit2_uid" : "7693066",
						"audit2_date" : "2018-03-31 20:42:04",
						"opinion" : "",
						"parent_id" : "0",
						"sort" : 10,
						"is_objective" : "1",
						"difficult_index" : "3",
						"master_level" : "2",
						"exam_type" : "7",
						"evaluated" : "0",
						"region_ids" : "13",
						"grade_id" : "12",
						"question_source" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷",
						"mode" : "3",
						"is_delete" : "0",
						"md5sum" : "851a19f26d72302f2cb88487a562ab6b",
						"title" : "细胞所处的能量状态用ATP、ADP和AMP之间的关系式来表示，称为能荷，公式如下:能荷=其中AMP为一磷酸腺苷。能荷对代谢起着重要的调节作用，高...",
						"kid_num" : "1",
						"paperid" : "806463",
						"save_num" : "4",
						"oldqid" : "0",
						"paper" : {
							"pid" : "806463",
							"title" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷"
						},
						"extra_file" : "",
						"question_text" : "细胞所处的能量状态用ATP、ADP和AMP之间的关系式来表示，称为能荷，公式如下:<br/><img data-cke-saved-src=\"http://tikupic.21cnjy.com/8c/60/8c60d1154f16638eaed87021115aaeef.png\" src=\"http://tikupic.21cnjy.com/8c/60/8c60d1154f16638eaed87021115aaeef.png\" v:shapes=\"图片_x0020_5\" height=\"66\" width=\"100\"><br/>能荷=其中AMP为一磷酸腺苷。能荷对代谢起着重要的调节作用，高能荷时，ATP生成过程被抑制，而ATP的利用过程被激发；低能荷时，其效应相反。下列说法不正确的是(&nbsp;&nbsp; )",
						"options" : {
							"A" : "根据能荷的公式组成，推测一般情况下细胞能荷数值小于1",
							"B" : "细胞中ATP、ADP和AMP之间可以相互转化",
							"C" : "细胞在吸收Mg<sup>2+</sup>时，能荷较低",
							"D" : "能荷及其调节是生物界的共性"
						},
						"answer" : "#",
						"explanation" : "#",
						"pic_answer" : "0",
						"pic_explanation" : "0",
						"knowledge" : "#",
						"category" : null,
						"is_collect" : false,
						"done" : false,
						"myanswer" : "",
						"score" : {
							"score" : 2
						},
						"sort2" : 8,
						"is_use" : 0
					},
					{
						"question_id" : "7057997",
						"qsn_id" : null,
						"question_type" : "1",
						"question_channel_type" : "1",
						"question_status" : "2",
						"question_tags" : "",
						"chid" : "11",
						"xd" : "3",
						"create_by" : "1348058075_O54gFl",
						"create_uid" : "7693066",
						"create_date" : "2018-10-23 09:05:09",
						"update_by" : "21jy_941541823",
						"update_uid" : "8046014",
						"update_date" : "2018-03-31 20:42:04",
						"update_reason" : "",
						"audit_by" : "21jy_941541823",
						"audit_uid" : "8046014",
						"audit_date" : "2018-03-31 10:59:30",
						"audit2_by" : "1348058075_O54gFl",
						"audit2_uid" : "7693066",
						"audit2_date" : "2018-03-31 20:42:04",
						"opinion" : "",
						"parent_id" : "0",
						"sort" : 11,
						"is_objective" : "1",
						"difficult_index" : "1",
						"master_level" : "2",
						"exam_type" : "7",
						"evaluated" : "0",
						"region_ids" : "13",
						"grade_id" : "12",
						"question_source" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷",
						"mode" : "3",
						"is_delete" : "0",
						"md5sum" : "ab848ebc760b656b7a12b1c2650701d0",
						"title" : "下列关于人体细胞分化、衰老、凋亡和癌变的叙述，错误的是( )",
						"kid_num" : "4",
						"paperid" : "806463",
						"save_num" : "10",
						"oldqid" : "0",
						"paper" : {
							"pid" : "806463",
							"title" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷"
						},
						"extra_file" : "",
						"question_text" : "下列关于人体细胞分化、衰老、凋亡和癌变的叙述，错误的是(&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )",
						"options" : {
							"A" : "细胞分化是形成特异性蛋白质的过程",
							"B" : "衰老细胞的形态、结构和功能会发生变化",
							"C" : "细胞凋亡的根本原因是凋亡基因的表达",
							"D" : "原癌基因和抑癌基因在正常细胞中不能表达"
						},
						"answer" : "#",
						"explanation" : "#",
						"pic_answer" : "0",
						"pic_explanation" : "0",
						"knowledge" : "#",
						"category" : null,
						"is_collect" : false,
						"done" : false,
						"myanswer" : "",
						"score" : {
							"score" : 2
						},
						"sort2" : 9,
						"is_use" : 0
					},
					{
						"question_id" : "7058019",
						"qsn_id" : null,
						"question_type" : "1",
						"question_channel_type" : "1",
						"question_status" : "2",
						"question_tags" : "",
						"chid" : "11",
						"xd" : "3",
						"create_by" : "1348058075_O54gFl",
						"create_uid" : "7693066",
						"create_date" : "2018-10-23 09:05:09",
						"update_by" : "21jy_941541823",
						"update_uid" : "8046014",
						"update_date" : "2018-03-31 20:42:04",
						"update_reason" : "",
						"audit_by" : "21jy_941541823",
						"audit_uid" : "8046014",
						"audit_date" : "2018-03-31 11:28:24",
						"audit2_by" : "1348058075_O54gFl",
						"audit2_uid" : "7693066",
						"audit2_date" : "2018-03-31 20:42:04",
						"opinion" : "",
						"parent_id" : "0",
						"sort" : 12,
						"is_objective" : "1",
						"difficult_index" : "3",
						"master_level" : "2",
						"exam_type" : "7",
						"evaluated" : "0",
						"region_ids" : "13",
						"grade_id" : "12",
						"question_source" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷",
						"mode" : "3",
						"is_delete" : "0",
						"md5sum" : "2c4d028723f9fae52206207f5304c5c1",
						"title" : "呼吸作用过程中在线粒体的内膜上NADH将有机物降解得到的高能电子传递给质子泵，后者利用这一能量将H&lt;sup&gt;+&lt;/sup&gt;泵到线粒体基质外，使得线...",
						"kid_num" : "1",
						"paperid" : "806463",
						"save_num" : "2",
						"oldqid" : "0",
						"paper" : {
							"pid" : "806463",
							"title" : "福建省永安一中、德化一中、漳平一中2018届高三上学期生物第二次联考试卷"
						},
						"extra_file" : "",
						"question_text" : "呼吸作用过程中在线粒体的内膜上NADH将有机物降解得到的高能电子传递给质子泵，后者利用这一能量将H<sup>+</sup>泵到线粒体基质外，使得线粒体内外膜间隙中H<sup>+</sup>浓度提髙，大部分H+通过特殊的结构①回流至线粒体基质，同时驱动ATP合成(如下图）。下列叙述错误的是(&nbsp;&nbsp;&nbsp; )<br/><img data-cke-saved-src=\"http://tikupic.21cnjy.com/b8/86/b88664759e94e174c56d28a832f2243e.png\" src=\"http://tikupic.21cnjy.com/b8/86/b88664759e94e174c56d28a832f2243e.png\" v:shapes=\"图片_x0020_4\" height=\"177\" width=\"280\">",
						"options" : {
							"A" : "H<sup>+</sup>由膜间隙向线粒体基质的跨膜运输属于协助扩散",
							"B" : "结构①是一种具有ATP水解酶活性的通道（载体)蛋白",
							"C" : "上述过程中能量转化过程是:有机物中稳定化学能→电能→ATP中活跃化学能",
							"D" : "好氧细菌不可能发生上述过程"
						},
						"answer" : "#",
						"explanation" : "#",
						"pic_answer" : "0",
						"pic_explanation" : "0",
						"knowledge" : "#",
						"category" : null,
						"is_collect" : false,
						"done" : false,
						"myanswer" : "",
						"score" : {
							"score" : 2
						},
						"sort2" : 10,
						"is_use" : 0
					} ],
			"scores" : []
		} ];
		if (MockDataTestPaper.length == 0
				|| MockDataTestPaper[0]['questions'].length) {
			$('.null-page').hide();
		}
		OT2.renderQList(MockDataTestPaper);
		var showCheckbox = true; // 目录树树，是否显示复选框
		var Tree = new OT2.Tree($('#J_Tree'));
		var select_form = $('#select-form');
		if (QList.list.length) {
			$('.null-page').hide();
		}
		// 年级复选选框
		var nj_g = [];
		$('#J_Nj').find('.checkbox').each(function() {
			new OT2.Element.checkbox(this, nj_g).bindEvent(function() {
				var len = _.filter(nj_g, function(item) {
					return item.checked == true;
				}).length;
				$('#J_NjError').css('display', len == 0 ? 'inline' : 'none');
				//TowerEvent.publish('Node:result', nj_g);
			});

			// $(this).click(function () {
			// });
		});
	</script>
	<script>
		fetchTree(
				143538,
				[
						{
							"id" : "143542",
							"title" : "\u7b2c1\u7ae0 \u4eba\u7c7b\u63a2\u7d22\u7ec6\u80de\u7684\u5386\u53f2",
							"hasChild" : true
						},
						{
							"id" : "143544",
							"title" : "\u7b2c2\u7ae0 \u7ec6\u80de\u7684\u5316\u5b66\u7ec4\u6210",
							"hasChild" : true
						},
						{
							"id" : "143546",
							"title" : "\u7b2c3\u7ae0 \u7ec6\u80de\u7684\u7269\u8d28\u4ee3\u8c22",
							"hasChild" : true
						},
						{
							"id" : "143548",
							"title" : "\u7b2c4\u7ae0 \u7ec6\u80de\u7684\u80fd\u91cf\u4ee3\u8c22",
							"hasChild" : true
						},
						{
							"id" : "143550",
							"title" : "\u7b2c5\u7ae0 \u7ec6\u80de\u7684\u4fe1\u606f\u4f20\u9012",
							"hasChild" : true
						},
						{
							"id" : "143552",
							"title" : "\u7b2c6\u7ae0 \u7ec6\u80de\u7684\u589e\u6b96",
							"hasChild" : true
						},
						{
							"id" : "143554",
							"title" : "\u7b2c7\u7ae0 \u7ec6\u80de\u7684\u5206\u5316\u3001\u51cb\u4ea1\u548c\u8870\u8001",
							"hasChild" : true
						},
						{
							"id" : "143556",
							"title" : "\u7b2c8\u7ae0 \u539f\u6838\u7ec6\u80de\u4e0e\u975e\u7ec6\u80de\u751f\u7269\u4f53",
							"hasChild" : true
						} ]);
		function fetchTree(catid, data) {
			//var CName = 'categories';
			Tree.fetch('/question/tree', {
				id : catid,
				type : 'category'
			}, data);
			Tree.subscribe('Node:select', function(node) {
				$("input[name='categories']").val(node.model.id);
				$('li').removeClass('active');
				node.$el.addClass('active');
				reloadQuestionList();
			});
		}
	</script>
	<script>
		/**
		 * 答案与解析显示 切换
		 * 2017.2.17 lgh
		 */
		$('.switch-detail').find('.checkbox').on('click', function() {
			var $checkedbox = $(this).find('input[type=checkbox]').first();
			var checked = $checkedbox.prop('checked');
			$checkedbox.prop('checked', !checked);
			$(this)[checked ? 'removeClass' : 'addClass']('checked');
			QList.basket.publish('show-analyticbox', !checked);
		});
		$('.switch-detail').find('.deleteUseQid').on('click', function() {
			if (typeof USER.uid === 'undefined') {
				OT2.Global.initLogin();
				return false;
			}
			var $checkedbox = $(this).find('input[type=checkbox]').first();
			var checked = $checkedbox.prop('checked');
			$checkedbox.prop('checked', !checked);
			$(this).find('input[name="filterquestion"]').val(checked ? 0 : 1);
			$(this)[checked ? 'removeClass' : 'addClass']('checked');
			reloadQuestionList();
		});

		$(".tag-con > .con-items > a").click(function() {
			var ob = $(this);
			if (!ob.hasClass('type-active')) {
				ob.parent().find("input").val(ob.data('value'));
				ob.parent().find('.type-active').removeClass('type-active');
				ob.addClass('type-active');
			}
			reloadQuestionList();
			return false;
		});
		$("#J_Nj > span").click(function() {
			reloadQuestionList();
			return false;
		});
		$('#sort-time').click(function() {
			$("input[name='sortField']").val('time');
			$('.sort-active').removeClass('sort-active');
			$(this).addClass('sort-active');
			reloadQuestionList();
			return false;
		});
		$('#sort-count').click(function() {
			$("input[name='sortField']").val('count');
			$('.sort-active').removeClass('sort-active');
			$(this).addClass('sort-active');
			reloadQuestionList();
			return false;
		});
		function reloadQuestionList(onPager) {

			if (!onPager) {
				$("input[name='page']").val(1);
			}
			var inputs = select_form.serializeArray();
			$
					.getJSON('/question/list', inputs)
					.done(
							function(data) {
								MockDataTestPaper = data.data;
								OT2.renderQList(MockDataTestPaper);
								if (data.total) {
									$('.null-page').hide();
								} else {
									$('.null-page').show();
								}
								$('.page').html(data.pager);
								$("div[class='total'] > b").html(data.total);
								var checked = $('.switch-detail').find(
										'.checkbox input[type=checkbox]').prop(
										'checked');
								QList.basket.publish('show-analyticbox',
										checked); // 初始化操作
								$("div[class='pagenum'] > a[href*='page']")
										.click(
												function() {
													var ob = $(this);
													$("input[name='page']")
															.val(
																	ob
																			.data('page'));
													reloadQuestionList(true);
													if (typeof window.dispatchEvent === 'undefined')
														$('html, body')
																.scrollTop(0);
													else
														$('html, body')
																.animate(
																		{
																			scrollTop : 0
																		},
																		'fast');
													return false;
												});
								$("#paper-jump")
										.click(
												function(e) {
													e.preventDefault();
													var ob = $(this);
													$("input[name='page']")
															.val();
													reloadQuestionList(true);
													if (typeof window.dispatchEvent === 'undefined')
														$('html, body')
																.scrollTop(0);
													else
														$('html, body')
																.animate(
																		{
																			scrollTop : 0
																		},
																		'fast');
													return false;
												});
								$("#paper-jump")
										.keyup(
												function(e) {
													e.preventDefault();
													var ob = $(this);
													$("input[name='page']")
															.val();
													reloadQuestionList(true);
													if (typeof window.dispatchEvent === 'undefined')
														$('html, body')
																.scrollTop(0);
													else
														$('html, body')
																.animate(
																		{
																			scrollTop : 0
																		},
																		'fast');
													return false;
												});
							});
		}
		var offsettop = $('.chapter-con').offset().top;
		$(window)
				.scroll(function() {
					var h = $(document).scrollTop();
					if (h > offsettop) {
						$('.chapter-con').css({
							'position' : 'fixed',
							'width' : '258px',
							'top' : '0px',
							'z-index' : '9'
						});
					} else {
						$('.chapter-con').css({
							'position' : 'relative',
							'z-index' : '0'
						})
					}
					if (h >= $(document).height() - $(window).height() - 300) {
						if ($('#J_Tree').height() > 400) {
							$('#J_Tree').css({
								'height' : '400px'
							})
						}
					} else {
						$('#J_Tree').css({
							'height' : 'auto'
						})
					}
				})
	</script>
	<!--footer开始-->
<div class="footer">
    <div class="footer-con g-container">
        <div class="footer-top f-cb">
            <div class="con-gs">
                <h3>公司介绍</h3>
                <p>Company Introduction</p>
                <ul>
                    <li><i class="icona-ellipse"></i><a href="#" target="_blank">公司简介</a></li>
                    <li><i class="icona-ellipse"></i><a href="#" target="_blank">版权声明</a></li>
                    <li><i class="icona-ellipse"></i><a href="#" target="_blank">公司动态</a></li>
                    <li><i class="icona-ellipse"></i><a href="#" target="_blank">意见反馈</a></li>
                </ul>
            </div>
            <div class="con-fw">
                <h3>服务介绍</h3>
                <p>Service Introduction</p>
                <ul class="fw-list">
                    <li><i class="icona-ellipse"></i><a href="#" target="_blank">组卷通服务</a></li>
                    <li><i class="icona-ellipse"></i><a href="#" target="_blank">VIP会员服务</a></li>
                    <li><i class="icona-ellipse"></i><a href="#" target="_blank">学校定制化服务</a></li>
                </ul>
            </div>
            <div class="con-bz">
                <h3>帮助中心</h3>
                <p>Help center</p>
                <ul>
                    <li><i class="icona-ellipse"></i><a href="#" target="_blank">视频帮助</a></li>
                    <li><i class="icona-ellipse"></i><a href="#" target="_blank">常见问题</a></li>
                    <li><i class="icona-ellipse"></i><a href="#" target="_blank">如何组卷</a></li>					
                    <li><i class="icona-ellipse"></i><a href="#" target="_blank">下载试卷</a></li>
                    <li><i class="icona-ellipse"></i><a href="#" target="_blank">在线测试</a></li>

<li><i class="icona-ellipse"></i><a href="#" target="_blank">最新试题</a></li>
                </ul>
            </div>
            <div class="con-ewm">
                <img src="${ctx }/static/library/123.png" style="width:80px" alt="4399教育APP">
                <p>4399教育APP</p>
            </div>
            <div class="con-lx">
                <i class="icona-phone"></i>
                <div class="lx-txt">
                    <p class="lx-txt-p1">400-400-4000</p>
                    <p class="lx-txt-p2">周一至周五  8:30-17:30</p>
                </div>
                <div class="lx-teacher">
                    <a href="javascript:;" id="jBizQQWPA"><i class="icona-kefu"></i>在线咨询客服</a>
                </div>
            </div>
        </div>
        <div class="footer-bottom">            
            <p class="copyright">2017-2018 4399教育股份有限公司<a href="http://www.miibeian.gov.cn/" class="copy">粤ICP备11039084号</a> 粤教信息(2013)2号</p>
            <p class="footer-adress">
                <span>邮编：518000</span>
                <span>地址：河北师范大学新校区软件学院</span>
            </p>
        </div>	
    </div>	
</div>
	<!--footer结束-->
	<div id="Login_Pal" style="display: none">
		<link rel="stylesheet" href="${ctx }/static/library/reg.min.css">
		<style>
.reg-form {
	z-index: 1110;
	left: 50%;
	margin-left: -180px;
	top: 0;
}

.reg-mask {
	position: fixed;
	left: 0;
	top: 0;
	bottom: 0;
	right: 0;
	background: #000;
	opacity: 0.5;
	filter: alpha(opacity = 50);
	z-index: 1000;
}

.reg-form .btn-close {
	position: absolute;
	right: 16px;
	top: 16px;
	display: block;
	text-indent: -9999px;
	width: 24px;
	height: 24px;
	background: url(/images/close_24.png) no-repeat center center;
}

.reg-form .btn-close:hover {
	opacity: 0.8;
}
</style>
		<div class="reg-mask"></div>
		<div class="reg-form">
			<ul>
				<li><a href="javascript:;" class="reg-active">登录</a></li>
			</ul>
			<a class="btn-close J_CloseForm">x</a>
			<form id="J_LoginForm" class="reg-form-detail"
				action="https://zujuan.21cnjy.com/login" method="post">
				<input type="hidden" name="_csrf"
					value="qk_x2YgtB9hT7vvVEfyC193onG5qYhhSveKn-q5zflrvG56hykcwqBaAg-RglOSP5I2xW1M0Lj7OuP_L7D1GNQ==">
				<div class="reg-form-input">
					<label for="account" class="placeholder">请输入网站账号/手机号码/邮箱</label> <input
						type="text" name="LoginForm[username]" id="account"
						placeholder="请输入网站账号/手机号码/邮箱">
					<div class="fm-warn">
						<p></p>
						<i></i>
					</div>

				</div>
				<div class="reg-form-input">
					<label for="password" class="placeholder">请输入密码</label> <input
						type="password" name="LoginForm[password]" id="password"
						placeholder="请输入密码">
					<div class="fm-warn">
						<p></p>
						<i></i>
					</div>

				</div>
				<div class="login-line">
					<div class="login-auto">
						<span class="checkbox checked f-usn" onselectstart="return false"><i
							class="icona-check"></i><input type="checkbox" checked=""
							value="1" class="f-dn" name="LoginForm[rememberMe]">自动登录</span>
					</div>
					<div class="login-pwd">
						<a
							href="#"
							target="_blank">忘记密码</a>
					</div>
				</div>
				<div class="reg-btn">
					<button type="submit">登录</button>
				</div>
			</form>
			<div class="login-others">
				<div class="login-others-method">
					其它登录方式： <a
						href="#"><i
						class="icona-wxloginbtn"> </i></a> <a
						href="#"><i
						class="icona-qqloginbtn"> </i></a>
				</div>
				<div class="login-reg">
					<a target="_blank"
						href="#">免费注册<i
						class="icona-right-arrow"></i></a>
				</div>

			</div>
		</div>
	</div>
	<script src="${ctx }/static/library/element.min.js.下载"></script>
	<script src="${ctx }/static/library/field.min.js.下载"></script>
	<script src="${ctx }/static/library/user.min.js.下载"></script>
	<script src="${ctx }/static/library/global.min.js.下载"></script>
	<a class="return" href="javascript:;"
		style="right: 0px; display: block;"><i class="icona-top"></i></a>
	<!--<script src="https://wpa.b.qq.com/cgi/wpa.php" type="text/javascript"></script>-->
	<script>
		//    BizQQWPA.addCustom({aty: '0', a: '0', nameAccount: 4006379991, selector: 'jBizQQWPA'});
				(
						function(window, undefined) {
							try {
								var document = window.document;
								document.getElementById('jBizQQWPA').onclick = function() {
									window
											.open(
													'http://wpa.b.qq.com/cgi/wpa.php?ln=1&key=XzkzODE4MjQ4OF80NjM1NzhfNDAwNjM3OTk5MV8yXw&uin=',
													'_blank',
													'height=544, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');
								}
							} catch (e) {
							}
						}(window));
	</script>
	<div class="data">
		<div class="inner-data">
			<script type="text/javascript">
				var _hmt = _hmt || [];
				(function() {
					var hm = document.createElement("script");
					hm.src = "https://hm.baidu.com/hm.js?5d70f3704df08b4bfedf4a7c4fb415ef";
					var s = document.getElementsByTagName("script")[0];
					s.parentNode.insertBefore(hm, s);
				})();
				//var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1668216'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/stat.php%3Fid%3D1668216%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));
			</script>
		</div>
	</div>
	<script src="${ctx }/static/library/yii.js.下载"></script>
	<script src="${ctx }/static/library/layer.js.下载"></script>


</body>
</html>