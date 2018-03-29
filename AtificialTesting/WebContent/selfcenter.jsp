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
			<div class="header-logo">
				<a href="https://zujuan.21cnjy.com/"> <img
					src="${ctx }/static/images/app_logo.png" alt="" title="">
				</a>
			</div>
			<div class="header-logo-sd f-fr">

				<div class="user f-fr f-pr topbar-dropmap">
					<a href="https://zujuan.21cnjy.com/ucenter" target="_blank">21jy_569002710<i
						class="icona-tri ml"></i></a>
					<div class="drop-bd">
						<ul>
							<li><a href="https://zujuan.21cnjy.com/ucenter/u-download"
								target="_blank">下载记录</a></li>
							<li><a href="https://zujuan.21cnjy.com/ucenter/u-zujuan"
								target="_blank">组卷记录</a></li>
							<li><a href="https://zujuan.21cnjy.com/ucenter/u-ceshi"
								target="_blank">测试记录</a></li>
							<li><a href="https://zujuan.21cnjy.com/ucenter/u-shiti"
								target="_blank">我的收藏</a></li>
							<li><a
								href="https://zujuan.21cnjy.com/ucenter/u-question-wrong"
								target="_blank">错题本</a></li>
							<li><a href="https://zujuan.21cnjy.com/ucenter/index"
								target="_blank">个人信息</a></li>
							<li class="split-line"></li>
							<li><a data-method="post"
								href="https://zujuan.21cnjy.com/logout">退出</a></li>
						</ul>
						<span class="icona-dia-tri"></span>
					</div>
				</div>
				<div class="user f-fr">
					<a href="https://zujuan.21cnjy.com/ucenter/u-msg?from=top"><i
						class="icona-xinxi"></i>消息<span>(0)</span></a>
				</div>
				<div class="header-nav">
					<!--<a href="http://oldzujuan.21cnjy.com/" target="_blank">【返回旧版】</a>-->
					<!--<span class="split"></span>-->
					<a href="https://zujuan.21cnjy.com/" class="help"><i
						class="icona-home"></i>网站首页</a> <span class="split"></span> <a
						href="https://zujuan.21cnjy.com/help" class="help" target="_blank"><i
						class="icona-help"></i>帮助中心</a> <span class="split"></span> <a
						href="https://zujuan.21cnjy.com/payment/vip" target="_blank"><i
						class="icona-buy"></i>购买VIP</a> <span class="split"></span> <a
						href="https://zujuan.21cnjy.com/help/request" target="_blank"><i
						class="icona-buy"></i>申请试用</a> <span class="split"></span> <a
						href="https://zujuan.21cnjy.com/payment/vip-card" target="_blank"><i
						class="icona-buy"></i>激活VIP</a> <span class="split"></span> <span
						class="topbar-dropmap"> <a
						href="https://zujuan.21cnjy.com/ucenter/u-download#"><i
							class="icona-qixia"></i>旗下站点</a>
						<div class="drop-bd">
							<ul>
								<li><a target="_blank"
									href="http://www.21cnjy.com/zhitongche/">校网通</a></li>
								<li><a target="_blank" href="http://zujuan.21cnjy.com/">在线组卷</a></li>
								<li><a target="_blank" href="http://www.jbzyk.com/">校本资源库</a></li>
								<li><a target="_blank" href="http://tiku.21cnjy.com/">在线题库</a></li>
								<li><a target="_blank"
									href="http://www.21cnjy.com/video.php">名师课堂</a></li>
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
					//                okValue: '去验证',
					//                ok: function () {
					//                    window.location.href = '<?//= Url::to(['/ucenter/u-safe'])?>//';
					//                },
					fixed : true,
					cancelValue : '取消',
					cancel : function() {
					}
				});
				d.showModal();
			}
		})
	</script>
	<div class="g-bd1 f-cb g-container">
		<div class="g-sd1">
			<div class="user-msg">
				<div class="msg-box">
					<div class="user-pic">
						<div class="pic-border">
							<img src="${ctx }/static/images/avatar.php">
						</div>
					</div>

					<div class="user-id">
						<p class="user-idname">21jy_569002710</p>
						<p class="user-level">
							<i class="icona-lv-gold"></i>普通用户
						</p>
					</div>

				</div>
				<div class="points">
					<ul>
						<li><p>
								<span>0</span>积分
							</p></li>
						<li><p class="line-border">
								<span>0</span>学币
							</p></li>
					</ul>
				</div>
				<div class="user-using">
					<ul>
						<li><a href="https://zujuan.21cnjy.com/ucenter/u-download"
							class="using-active"><i class="icona-download3"></i>下载记录</a></li>
						<li><a href="https://zujuan.21cnjy.com/ucenter/u-zujuan"><i
								class="icona-zjjl"></i>组卷记录</a></li>
						<li><a href="https://zujuan.21cnjy.com/ucenter/u-ceshi"><i
								class="icona-csjl"></i>测试记录</a></li>
						<li>
							<div class="mt">
								<span href="javascript:;"><i class="icona-shoucang2"></i>我的收藏</span><b
									class="icona-right2"></b>
							</div>
							<div class="mc">
								<p>
									<a href="https://zujuan.21cnjy.com/ucenter/u-shiti"><i
										class="icona-ellipsesm"></i>试题收藏</a>
								</p>
								<p>
									<a href="https://zujuan.21cnjy.com/ucenter/u-shijuan"><i
										class="icona-ellipsesm"></i>试卷收藏</a>
								</p>
								<p>
									<a href="https://zujuan.21cnjy.com/ucenter/u-zhuanti"><i
										class="icona-ellipsesm"></i>专题收藏</a>
								</p>
							</div>
						</li>
						<li><a
							href="https://zujuan.21cnjy.com/ucenter/u-question-wrong"><i
								class="icona-ctb"></i>错题本</a></li>
						<li><a href="https://zujuan.21cnjy.com/ucenter/u-error"><i
								class="dj-error"></i>纠错记录</a></li>
						<li><a href="https://zujuan.21cnjy.com/ucenter/index"><i
								class="icona-set"></i>个人信息</a></li>

						<li><a href="https://zujuan.21cnjy.com/ucenter/u-menu"><i
								class="dj-menu"></i>订单管理</a></li>
						<li><a href="https://zujuan.21cnjy.com/ucenter/u-msg"><i
								class="icona-msg"></i>我的信息</a></li>
					</ul>
				</div>
				<script>
					$(function() {

						var toNote = '';
						if (toNote) {
							var d = dialog({
								title : '安全提醒',
								content : '<div class="email-con"><h1>邮箱未验证</h1><p>验证邮箱可大大提高账号的安全性</p></div>',
								okValue : '去验证',
								ok : function() {
									window.location.href = '/ucenter/u-safe';
								},
								fixed : true,
								cancelValue : '取消',
								cancel : function() {
								}
							});
							d.showModal();
						}
					});

					var umenu_slider = function() {
						var _url = '/ucenter/u-download';
						$(".user-using").find("[href='" + _url + "']").each(
								function() {
									$(this).addClass("using-active");
									var li = $(this).closest('li');
									if (li.find('.mt').length > 0)
										li.addClass('active');
								});
						$('.user-using').on('click', '.mt', function(evt) {
							$(this).parent('li').toggleClass('active');
						});
					};
					setTimeout(umenu_slider, 0);
				</script>
			</div>
		</div>
		<div class="g-mn1">
			<div class="g-mn1c">
				<div class="user-con">
					<h1>下载记录</h1>
					<div class="userzj-list userzj-list1">
						<div class="null-page"
							style="width: 100%; text-align: center; color: #333; font-size: 14px; margin-top: 80px;">
							<img src="./下载记录_files/blank.png"><br>
							<br> <span
								style="font-size: 16px; color: #666666; font-family: Microsoft YaHei">未搜索到相关数据!</span>
						</div>
					</div>
					<div class="page"></div>
				</div>
			</div>
		</div>
	</div>

	<script src="${ctx }/static/js/element.min.js"></script>
	<script>
		var paper = new OT2.Paper({}); // 试卷实例化
	</script>
	<!--footer开始-->

	<div class="footer">
		<div class="footer-con g-container">
			<div class="footer-top f-cb">
				<div class="con-gs">
					<h3>公司介绍</h3>
					<p>Company Introduction</p>
					<ul>
						<li><i class="icona-ellipse"></i><a
							href="http://www.21cnjy.com/about/about_about.php"
							target="_blank">公司简介</a></li>
						<li><i class="icona-ellipse"></i><a
							href="https://zujuan.21cnjy.com/help/copyright" target="_blank">版权声明</a></li>
						<li><i class="icona-ellipse"></i><a
							href="http://www.21cnjy.com/about/about_company-news.php"
							target="_blank">公司动态</a></li>
						<li><i class="icona-ellipse"></i><a
							href="https://zujuan.21cnjy.com/help/feedback" target="_blank">意见反馈</a></li>
					</ul>
				</div>
				<div class="con-fw">
					<h3>服务介绍</h3>
					<p>Service Introduction</p>
					<ul class="fw-list">
						<li><i class="icona-ellipse"></i><a
							href="https://zujuan.21cnjy.com/help/zujuan" target="_blank">组卷通服务</a></li>
						<li><i class="icona-ellipse"></i><a
							href="https://zujuan.21cnjy.com/help/vip" target="_blank">VIP会员服务</a></li>
						<li><i class="icona-ellipse"></i><a
							href="https://zujuan.21cnjy.com/help/diy" target="_blank">学校定制化服务</a></li>
					</ul>
				</div>
				<div class="con-bz">
					<h3>帮助中心</h3>
					<p>Help center</p>
					<ul>
						<li><i class="icona-ellipse"></i><a
							href="https://zujuan.21cnjy.com/help/demo" target="_blank">视频帮助</a></li>
						<li><i class="icona-ellipse"></i><a
							href="https://zujuan.21cnjy.com/help/faq" target="_blank">常见问题</a></li>
						<li><i class="icona-ellipse"></i><a
							href="https://zujuan.21cnjy.com/help/makepaper" target="_blank">如何组卷</a></li>
						<li><i class="icona-ellipse"></i><a
							href="https://zujuan.21cnjy.com/help/download" target="_blank">下载试卷</a></li>
						<li><i class="icona-ellipse"></i><a
							href="https://zujuan.21cnjy.com/help/test" target="_blank">在线测试</a></li>

						<li><i class="icona-ellipse"></i><a
							href="https://zujuan.21cnjy.com/new" target="_blank">最新试题</a></li>
					</ul>
				</div>
				<div class="con-ewm">
					<img src="./下载记录_files/ewm.png" style="width: 80px" alt="二一教育APP">
					<p>二一教育APP</p>
				</div>
				<div class="con-lx">
					<i class="icona-phone"></i>
					<div class="lx-txt">
						<p class="lx-txt-p1">400-637-9991</p>
						<p class="lx-txt-p2">周一至周五 8:30-17:30</p>
					</div>
					<div class="lx-teacher">
						<a href="javascript:;" id="jBizQQWPA"><i class="icona-kefu"></i>在线咨询客服</a>
					</div>
				</div>
			</div>
			<div class="footer-bottom">
				<p class="copyright">
					2006-2016 二一教育股份有限公司<a href="http://www.miibeian.gov.cn/"
						class="copy">粤ICP备11039084号</a> 粤教信息(2013)2号
				</p>
				<p class="footer-adress">
					<span>邮编：518000</span> <span>地址：深圳市龙岗区横岗街道深峰路3号启航商务大厦5楼5M</span>
				</p>
			</div>
		</div>
	</div>

	<!--footer结束-->
	<script src="${ctx }/static/js/global.min.js"></script>
	<a class="return" href="javascript:;" style="right: 9px;"><i
		class="icona-top"></i></a>
	<!--<script src="https://wpa.b.qq.com/cgi/wpa.php" type="text/javascript"></script>-->
	<script>
		//    BizQQWPA.addCustom({aty: '0', a: '0', nameAccount: 4006379991, selector: 'jBizQQWPA'});
		(function(window, undefined) {
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
	<script src="${ctx }/static/js/yii.js"></script>
	<script src="${ctx }/static/js/layer.js"></script>



</body>
</html>