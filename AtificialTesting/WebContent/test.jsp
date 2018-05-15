<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="com.entity.Choicequestion"%>
<%@ page import="com.entity.Bigquestion"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<!-- saved from url=(0045)http://www.zujuan.com/paper/view-782410.shtml -->
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
</head>



<body>

	<link rel="stylesheet" href="${ctx }/static/css/test-preview.min.css">
	<div class="header">
		<div class="header-inner g-container f-cb">

			<div class="header-logo">
				<a href="http://www.zujuan.com/"><img
					src="./static/images/app_logo_zujuan.png" alt="组卷网"></a>
			</div>

			<div class="header-nav">
				<span class="split"></span><a href="http://www.zujuan.com/"
					class="help"><i class="icona-home"></i>网站首页</a> <span class="split"></span><a
					onclick="return OT2.Global.initLogin();"><b>购买VIP</b></a> <span
					class="split"></span><a onclick="return OT2.Global.initLogin();">激活VIP卡</a>
				<span class="split"></span><a
					onclick="return OT2.Global.initLogin();">团体购买</a> <span
					class="split"></span> <a href="http://littlebees.taobao.com/"
					target="_blank">淘宝店</a> <span class="split"></span>
				<div class="loginbox">
					<a shref="/login" class="login"
						onclick="OT2.Global.initLogin(); return false;"><span>注册&amp;登录</span></a>
					<!--
			   <a href="/regist" class="register"><span>注册</span></a>
				-->
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
					//                    window.location.href = '//';
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
					<h1>备考2018年中考生物一轮基础复习：专题五 绿色植物与生物圈的水循环、碳氧平衡、有机物制造者、爱护植被绿化祖国</h1>
					<p>
						<span><i class="icona-time2"></i>更新日期：2018-03-20</span>
						<!--span><i class="icona-download"></i>下载次数：2</span-->
						<span><i class="icona-leixing"></i>类型：专题试卷</span> <span><i
							class="icona-leixing"></i>手机版：<a
							href="http://m.zujuan.com/paper/view-782410.shtml#mobile">Wap</a></span>
					</p>
				</div>
				<div class="preview-act f-cb">
					<a class="select-all act-link" href="javascript:;"
						onclick="return OT2.Global.initLogin();">选择试卷全部试题</a>
				</div>
				<div class="preview-body" id="J_PaperBody">
					<h3>一、单选题</h3>
					<!-- 以下为分页内容 -->
					<%
						ArrayList<Choicequestion> choice = (ArrayList<Choicequestion>) request.getSession().getAttribute("courses");
						ArrayList<Bigquestion> BigQu = (ArrayList<Bigquestion>) request.getSession().getAttribute("Bcourses");
						if(BigQu==null){
							response.sendRedirect(request.getContextPath()+"/Big/showAll");
							return;
						}else if(choice==null){
							response.sendRedirect(request.getContextPath()+"/Choice/showAll");
							return;
						}	
						int i = 0;
					%>
					<c:forEach items="${sessionScope.courses}" var="Choicequestion">
						<div class="search-list">
							<ul>
								<li data-qid="3755280">
									<div class="search-exam">
										<div class="exam-con">
											<div class="exam-q">${Choicequestion.content }（&nbsp;&nbsp;&nbsp;
												）</div>

											<div class="exam-s">
												<span class="op-item"
													style="width: 219px; margin-right: 0px; clear: none;"><span
													class="op-item-meat" style="margin-top: 0px;">${Choicequestion.option1 }</span></span>
												<span class="op-item"
													style="width: 219px; margin-right: 0px; clear: none;"><span
													class="op-item-meat" style="margin-top: 0px;">${Choicequestion.option2 }</span></span>
												<span class="op-item"
													style="width: 219px; margin-right: 0px; clear: none;"><span
													class="op-item-meat" style="margin-top: 0px;">${Choicequestion.option3 }</span></span>
												<span class="op-item"
													style="width: 219px; margin-right: 0px; clear: none;"><span
													class="op-item-meat" style="margin-top: 0px;">${Choicequestion.option4 }</span></span>
											</div>
											<%
												String[] imgs = choice.get(i).getImage().split(";");
													for (int j = 0; j < imgs.length; j++) {
											%>
											<img alt="" src="<%=imgs[j]%>">
											<%
												}
											%>
										</div>
										<div class="exam-foot">
											<p class="exam-foot-left">
											<script>
												function answer(ans)
												{
													alert(ans);
												}
											</script>
												<a
													href="http://www.zujuan.com/question/detail-3755280.shtml"
													onclick="answer('${Choicequestion.answer }');return false;"
													target="_blank">
												<i class="icona-jiexi">
												</i>查看解析
												</a> 
												<a
													onclick="OT2.QCollect(this, 3755280)" href="javascript:;"><i
													class="icona-shoucang"></i>收藏</a> <a
													onclick="new OT2.ErrorReport(3755280)" href="javascript:;"><i
													class="icona-jiucuo"></i>纠错</a>
											</p>
											<p class="exam-foot-right">
												<a class="J_AddQuestion addbtn" href="<%=request.getContextPath()%>/add?id=${Choicequestion.choiceQuestionId}&name=选择"><b>+</b>选题</a>
											</p>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<%
							i++;
						%>
					</c:forEach>
					<!-- 以上为分页内容 -->
					<table style="margin-left: 500px;"> 
						<tr>
							<td colspan="6" align="center" bgcolor="">共${page.totalRecords}条记录
								共${page.totalPages}页 当前第${page.pageNo}页
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="<%=request.getContextPath()%>/Choice/showAll/${methodname }?pageNo=${page.topPageNo}&id=${id}&massage=${name}"
								class="btn_r">首页</a> <c:choose>
									<c:when test="${page.pageNo!=1}">
										<a
											href="<%=request.getContextPath()%>/Choice/showAll/${methodname }?pageNo=${page.previousPageNo }&id=${id}&massage=${name}"
											class="btn_r">上一页</a>
									</c:when>
									<c:otherwise>
										<a class="btn_r">上一页</a>
									</c:otherwise>
								</c:choose> <c:choose>
									<c:when test="${page.pageNo != page.totalPages}">
										<a
											href="<%=request.getContextPath()%>/Choice/showAll/${methodname }?pageNo=${page.nextPageNo }&id=${id}&massage=${name}"
											class="btn_r">下一页</a>
									</c:when>
									<c:otherwise>
										<a class="btn_r">下一页</a>
									</c:otherwise>
								</c:choose> <a
								href="<%=request.getContextPath()%>/Choice/showAll/${methodname }?pageNo=${page.bottomPageNo}&id=${id}&massage=${name}"
								class="btn_r">尾页</a>
							</td>
						</tr>
					</table>
					<h3>二、综合题</h3>
					<%
						
						i = 0;
					%>
					<c:forEach items="${sessionScope.Bcourses}" var="Bigquestion">
						<div class="search-list">
							<ul>
								<li data-qid="6662749">
									<div class="search-exam">
										<div class="exam-con">
											<div class="exam-qlist">
												<div class="exam-con">
													<div class="exam-q">
														<%
															String[] imgs=BigQu.get(i).getImage().split(";");
															for(int j=0;j<imgs.length;j++){
																%>
																<img alt="" src="<%=imgs[j] %>">
																<%
															}
														%>
														<p>
															${Bigquestion.content }
														</p>
													</div>
												</div>
											</div>
										</div>
	
										<div class="exam-foot">
											<p class="exam-foot-left">
												<a href="http://www.zujuan.com/question/detail-6662749.shtml"
												onclick="answer('${Bigquestion.answer }');return false;"
													target="_blank"><i class="icona-jiexi"
													
												>
													</i>查看解析
												</a> <a
													onclick="OT2.QCollect(this, 6662749)" href="javascript:;"><i
													class="icona-shoucang"></i>收藏</a> <a
													onclick="new OT2.ErrorReport(6662749)" href="javascript:;"><i
													class="icona-jiucuo"></i>纠错</a>
											</p>
											<p class="exam-foot-right">
												<a class="J_AddQuestion addbtn" href="<%=request.getContextPath()%>/add?id=${Bigquestion.bigQuestionId }&name=大题"><b>+</b>选题</a>
											</p>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<%
						i++;
						%>
					</c:forEach>
					<table style="margin-left: 500px;">
						<tr>
							<td colspan="6" align="center" bgcolor="">共${Bpage.totalRecords}条记录
								共${Bpage.totalPages}页 当前第${Bpage.pageNo}页
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="<%=request.getContextPath()%>/Big/showAll/${methodname }?pageNo=${Bpage.topPageNo}"
								class="btn_r">首页</a> <c:choose>
									<c:when test="${page.pageNo!=1}">
										<a
											href="<%=request.getContextPath()%>/Big/showAll/${methodname }?pageNo=${Bpage.previousPageNo }"
											class="btn_r">上一页</a>
									</c:when>
									<c:otherwise>
										<a class="btn_r">上一页</a>
									</c:otherwise>
								</c:choose> <c:choose>
									<c:when test="${Bpage.pageNo != Bpage.totalPages}">
										<a
											href="<%=request.getContextPath()%>/Big/showAll/${methodname }?pageNo=${Bpage.nextPageNo }"
											class="btn_r">下一页</a>
									</c:when>
									<c:otherwise>
										<a class="btn_r">下一页</a>
									</c:otherwise>
								</c:choose> <a
								href="<%=request.getContextPath()%>/Big/showAll/${methodname }?pageNo=${Bpage.bottomPageNo}"
								class="btn_r">尾页</a>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="dj-about">
			<div class="view-toolbars f-cb">
				<a href="<%=request.getContextPath()%>/show" onclick="paper.download(782410)"
					class="download-btn"><i class="icona-download1"></i>下载试卷</a> <a
					target="_blank" style="display: none" data-method="post"
					href="http://www.zujuan.com/paper/admin-edit?pid=782410&amp;xd=2&amp;chid=11"><i
					class="icona-bianji"></i>编辑</a> <a href="javascript:;"
					onclick="paper.setAnswerSheet(782410,0)"><i class="icona-dtk2"></i>答题卡下载</a>
				<a href="javascript:;" onclick="paper.showPie(782410)"><i
					class="icona-fenxi2"></i>分析试卷</a> <a href="javascript:;"
					onclick="collect(782410,this)"><i class="icona-shoucang"></i><span>
						收藏试卷 </span></a>
			</div>
			<div class="dj-detail">
				<h1>
					相关试卷 <span class="spread">收起∨</span>
				</h1>
				<ul>
					<li><a target="_blank"
						href="http://www.zujuan.com/paper/view-786023.shtml"
						title="云南省昭通市彝良县2017-2018学年七年级上学期生物期末考试试卷">云南省昭通市彝良县2017-2018学年七年级上学期生物期末考试试卷</a>
					</li>
					<li><a target="_blank"
						href="http://www.zujuan.com/paper/view-782410.shtml"
						title="备考2018年中考生物一轮基础复习：专题五 绿色植物与生物圈的水循环、碳氧平衡、有机物制造者、爱护植被绿化祖国">备考2018年中考生物一轮基础复习：专题五
							绿色植物与生物圈的水循环、碳氧平衡、有机物制造者、爱护植被绿化祖国</a></li>
					<li><a target="_blank"
						href="http://www.zujuan.com/paper/view-782244.shtml"
						title="备考2018年中考生物一轮基础复习：专题四 生物圈中有哪些绿色植物、被子植物的一生">备考2018年中考生物一轮基础复习：专题四
							生物圈中有哪些绿色植物、被子植物的一生</a></li>
					<li><a target="_blank"
						href="http://www.zujuan.com/paper/view-782118.shtml"
						title="2017-2018学年人教版（新课标）七年级下册第四单元第三章第二节 发生在肺内的气体交换 同步训练">2017-2018学年人教版（新课标）七年级下册第四单元第三章第二节
							发生在肺内的气体交换 同步训练</a></li>
					<li><a target="_blank"
						href="http://www.zujuan.com/paper/view-782056.shtml"
						title="2017-2018学年人教版（新课标）七年级下册第四单元第三章第一节 呼吸道对空气的处理 同步训练">2017-2018学年人教版（新课标）七年级下册第四单元第三章第一节
							呼吸道对空气的处理 同步训练</a></li>
				</ul>
			</div>
			<script>
				//相关试卷展开收起
				$(document).ready(function() {
					$('.spread').click(function() {
						if ($(".dj-detail ul").css('display') == 'none') {
							$(this).html("收起∨");
							$(".dj-detail ul").slideDown(300);
						} else {
							$(this).html("展开∧");
							$(".dj-detail ul").slideUp(300);
						}
					})
				});
			</script>
		</div>
	</div>
	<div class="basket active" id="J_Basket">
		<div class="basket-tit">
			<p>
				<i class="icona-gouwulan"></i><em>试题篮</em>
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
					href="http://www.zujuan.com/paper/admin-edit" style="display: none">编辑</a>
				<a id="to-paper-edit" data-method="post" class="basket-btn"
					href="http://www.zujuan.com/paper/edit" style="">生成试卷</a> <a
					id="to-paper-admin-cancel" class="basket-btn"
					href="http://www.zujuan.com/question" style="display: none">取消</a>
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