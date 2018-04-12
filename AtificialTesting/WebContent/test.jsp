<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					<!--
                <span class="tip-words">*点击此按钮，可全选试卷全部试题，进行试卷编辑</span>
                
                <div class="switch-detail f-fl">
                    <span class="checkbox" id="j-switch-analyticbox">
                        <i class="icona-check f-fl"></i>
                        <input type="checkbox" name="show_answer_explain" value="0" style="display:none">
                        显示答案与解析
                    </span>
                    （提示：点击题干可显示答案与解析）
                </div>
                -->
				</div>
				<div class="preview-body" id="J_PaperBody">
					<h3>一、单选题</h3>
					<!-- 以下为分页内容 -->
					<c:forEach items="${list}" var="Choicequestion">
						<div class="search-list">
						<ul>
							<li data-qid="3755280">
								<div class="search-exam">
									<div class="exam-con">
										<div class="exam-q">${Choicequestion.content }（&nbsp;&nbsp;&nbsp; ）
										</div>
										<div class="exam-s">
											<span class="op-item"
												style="width: 219px; margin-right: 0px; clear: none;"><span
												class="op-item-meat" style="margin-top: 0px;">${Choicequestion.option1 }</span></span>
											<span class="op-item"
												style="width: 219px; margin-right: 0px;clear: none;"><span
												class="op-item-meat" style="margin-top: 0px;">${Choicequestion.option2 }</span></span>
											<span class="op-item"
												style="width: 219px; margin-right: 0px;clear: none;"><span
												class="op-item-meat" style="margin-top: 0px;">${Choicequestion.option3 }</span></span>
											<span class="op-item"
												style="width: 219px; margin-right: 0px;  clear: none;"><span
												class="op-item-meat" style="margin-top: 0px;">${Choicequestion.option4 }</span></span>
										</div>
										<img alt="???" src="">
									</div>

									<div class="exam-foot">
										<p class="exam-foot-left">
											<a href="http://www.zujuan.com/question/detail-3755280.shtml"
												target="_blank"><i class="icona-jiexi"></i>查看解析</a> <a
												onclick="OT2.QCollect(this, 3755280)" href="javascript:;"><i
												class="icona-shoucang"></i>收藏</a> <a
												onclick="new OT2.ErrorReport(3755280)" href="javascript:;"><i
												class="icona-jiucuo"></i>纠错</a>
										</p>
										<p class="exam-foot-right">
											<a class="J_AddQuestion addbtn"><b>+</b>选题</a>
										</p>
									</div>
								</div>
							</li>
						</ul>
					</div>
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
					<!-- <h3>二、综合题</h3>
					<div class="search-list">
						<ul>
							<li data-qid="2681480">
								<div class="search-exam">
									<div class="exam-con">
										<div class="exam-q">
											26. 某同学在做“观察叶片的结构”的实验时所看到的菠菜叶片横切面如图，请据图分析回答：<br>
											<img
												data-cke-saved-src="http://tikupic.21cnjy.com/2f/eb/2febf4d1978c84e9a78e455450ebb106.png"
												src="./备考2018年中考生物一轮基础复习：专题五 绿色植物与生物圈的水循环、碳氧平衡、有机物制造者、爱护植被绿化祖国 -组卷网_files/2febf4d1978c84e9a78e455450ebb106.png"
												alt="" v:shapes="_x0000_i1043" height="158" width="243">
										</div>
										<div class="exam-qlist">
											<div class="exam-con">
												<div class="exam-q">
													(1)、图中[①]<span class="q-blank">&nbsp;</span>和[⑤]<span
														class="q-blank">&nbsp;</span>合称<span class="q-blank">&nbsp;</span>
													， 属于保护组织，②④应属于<span class="q-blank">&nbsp;</span>组织．
												</div>
											</div>

											<div class="exam-con">
												<div class="exam-q">
													(2)、叶片正面比背面颜色<span class="q-blank">&nbsp;</span> ．
													主要原因是接近上表皮的[<span class="q-blank">&nbsp;</span>]的细胞中含叶绿体更多．叶肉细胞含有的叶绿体是进行<span
														class="q-blank">&nbsp;</span>的场所．
												</div>
											</div>

											<div class="exam-con">
												<div class="exam-q">
													(3)、光合作用需要的水分、无机盐运输到叶肉细胞是通过[<span class="q-blank">&nbsp;</span>]<span
														class="q-blank">&nbsp;</span>实现的．
												</div>
											</div>

											<div class="exam-con">
												<div class="exam-q">
													(4)、图中[⑥]<span class="q-blank">&nbsp;</span> ， 由半月形的<span
														class="q-blank">&nbsp;</span>组成．
												</div>
											</div>

										</div>
									</div>

									<div class="exam-foot">
										<p class="exam-foot-left">
											<a href="http://www.zujuan.com/question/detail-2681480.shtml"
												target="_blank"><i class="icona-jiexi"></i>查看解析</a> <a
												onclick="OT2.QCollect(this, 2681480)" href="javascript:;"><i
												class="icona-shoucang"></i>收藏</a> <a
												onclick="new OT2.ErrorReport(2681480)" href="javascript:;"><i
												class="icona-jiucuo"></i>纠错</a>
										</p>
										<p class="exam-foot-right">
											<a class="J_AddQuestion addbtn"><b>+</b>选题</a>
										</p>
									</div>
								</div>
							</li>
							<li data-qid="6662749">
								<div class="search-exam">
									<div class="exam-con">
										<div class="exam-q">
											27. 观察图并回答问题．<br>
											<img
												data-cke-saved-src="http://tikupic.21cnjy.com/e5/4d/e54d47281a65accdd1c14cb7de1dd068.png"
												src="./备考2018年中考生物一轮基础复习：专题五 绿色植物与生物圈的水循环、碳氧平衡、有机物制造者、爱护植被绿化祖国 -组卷网_files/e54d47281a65accdd1c14cb7de1dd068.png"
												alt="图片_x0020_18" width="347" height="148">
										</div>
										<div class="exam-qlist">
											<div class="exam-con">
												<div class="exam-q">
													(1)、其中图A表示气孔<span class="q-blank">&nbsp;</span>；图B表示气孔<span
														class="q-blank">&nbsp;</span>。
												</div>
											</div>

											<div class="exam-con">
												<div class="exam-q">
													(2)、图中①是<span class="q-blank">&nbsp;</span> ， 呈半月形；②是<span
														class="q-blank">&nbsp;</span> ， 无色透明，<span class="q-blank">&nbsp;</span>（选填“有”或“无”）叶绿体。
												</div>
											</div>

											<div class="exam-con">
												<div class="exam-q">
													(3)、气孔能够张开和闭合主要是由<span class="q-blank">&nbsp;</span>调节的，气孔既是植物<span
														class="q-blank">&nbsp;</span>的“门户”，又是<span class="q-blank">&nbsp;</span>的“窗口”。
												</div>
											</div>

											<div class="exam-con">
												<div class="exam-q">
													(4)、通常情况下，白天太阳升起，气孔<span class="q-blank">&nbsp;</span> ，
													为叶片制造有机物提供<span class="q-blank">&nbsp;</span> ．
												</div>
											</div>

										</div>
									</div>

									<div class="exam-foot">
										<p class="exam-foot-left">
											<a href="http://www.zujuan.com/question/detail-6662749.shtml"
												target="_blank"><i class="icona-jiexi"></i>查看解析</a> <a
												onclick="OT2.QCollect(this, 6662749)" href="javascript:;"><i
												class="icona-shoucang"></i>收藏</a> <a
												onclick="new OT2.ErrorReport(6662749)" href="javascript:;"><i
												class="icona-jiucuo"></i>纠错</a>
										</p>
										<p class="exam-foot-right">
											<a class="J_AddQuestion addbtn"><b>+</b>选题</a>
										</p>
									</div>
								</div>
							</li>
							<li data-qid="2971052">
								<div class="search-exam">
									<div class="exam-con">
										<div class="exam-q">
											28. 如图是研究植物散失水分的四个实验装置，将A、B、C、D实验装置在阳光下照射2小时．请分析回答：<br>
											<img
												data-cke-saved-src="http://tikupic.21cnjy.com/61/5a/615a08bc68e483c10880d7c69bc1e66d.png"
												src="./备考2018年中考生物一轮基础复习：专题五 绿色植物与生物圈的水循环、碳氧平衡、有机物制造者、爱护植被绿化祖国 -组卷网_files/615a08bc68e483c10880d7c69bc1e66d.png"
												alt="" v:shapes="_x0000_i1039" width="443" height="139">
										</div>
										<div class="exam-qlist">
											<div class="exam-con">
												<div class="exam-q">
													(1)、A、B两个装置中，能证明塑料袋壁上的水珠是由植物体散失的是<span class="q-blank">&nbsp;</span>装置．
												</div>
											</div>

											<div class="exam-con">
												<div class="exam-q">
													(2)、C、D两个装置中，塑料袋壁上的水珠较多的是<span class="q-blank">&nbsp;</span>装置
												</div>
											</div>

											<div class="exam-con">
												<div class="exam-q">
													(3)、通过这组实验可以得出结论：<span class="q-blank">&nbsp;</span>是蒸腾
													作用的主要器官．植物蒸腾作用散失大量水分，因此大面积植树造林可以<span class="q-blank">&nbsp;</span>（填“提高”或“降低”）大气湿度．
												</div>
											</div>

										</div>
									</div>

									<div class="exam-foot">
										<p class="exam-foot-left">
											<a href="http://www.zujuan.com/question/detail-2971052.shtml"
												target="_blank"><i class="icona-jiexi"></i>查看解析</a> <a
												onclick="OT2.QCollect(this, 2971052)" href="javascript:;"><i
												class="icona-shoucang"></i>收藏</a> <a
												onclick="new OT2.ErrorReport(2971052)" href="javascript:;"><i
												class="icona-jiucuo"></i>纠错</a>
										</p>
										<p class="exam-foot-right">
											<a class="J_AddQuestion addbtn"><b>+</b>选题</a>
										</p>
									</div>
								</div>
							</li>
							<li data-qid="4460881">
								<div class="search-exam">
									<div class="exam-con">
										<div class="exam-q">
											29. 如图是绿色植物在生物圈二氧化碳和氧气中的作用 <img width="421" height="209"
												src="./备考2018年中考生物一轮基础复习：专题五 绿色植物与生物圈的水循环、碳氧平衡、有机物制造者、爱护植被绿化祖国 -组卷网_files/6df8485e85a6015aabf0dd3ac20876d3.png"
												alt="" v:shapes="_x0000_i1029">
										</div>
										<div class="exam-qlist">
											<div class="exam-con">
												<div class="exam-q">
													(1)、生物圈中氧气的主要来源是植物的<span class="q-blank">&nbsp;</span>；．
												</div>
											</div>

											<div class="exam-con">
												<div class="exam-q">
													(2)、生物圈中二氧化碳主要来源是<span class="q-blank">&nbsp;</span> ，
													植物进行光合作用的原料是<span class="q-blank">&nbsp;</span> ， 产物是<span
														class="q-blank">&nbsp;</span> ， 条件是<span class="q-blank">&nbsp;</span>
													．
												</div>
											</div>

											<div class="exam-con">
												<div class="exam-q">
													(3)、生物通过<span class="q-blank">&nbsp;</span>将有机物分解，细菌等微生物通过<span
														class="q-blank">&nbsp;</span>作用将动植物尸体及腐烂物质分解，释放出的二氧化碳进入大气．如此生生不息，构成了大气中的<span
														class="q-blank">&nbsp;</span>的循环，维持了生态系统中的碳氧平衡．
												</div>
											</div>

										</div>
									</div>

									<div class="exam-foot">
										<p class="exam-foot-left">
											<a href="http://www.zujuan.com/question/detail-4460881.shtml"
												target="_blank"><i class="icona-jiexi"></i>查看解析</a> <a
												onclick="OT2.QCollect(this, 4460881)" href="javascript:;"><i
												class="icona-shoucang"></i>收藏</a> <a
												onclick="new OT2.ErrorReport(4460881)" href="javascript:;"><i
												class="icona-jiucuo"></i>纠错</a>
										</p>
										<p class="exam-foot-right">
											<a class="J_AddQuestion addbtn"><b>+</b>选题</a>
										</p>
									</div>
								</div>
							</li>
						</ul>
					</div>-->
					<!--  <h3>三、实验探究题</h3>
					<div class="search-list">
						<ul>
							<li data-qid="6332503">
								<div class="search-exam">
									<div class="exam-con">
										<div class="exam-q">
											30. 将一盆植物和一只小白鼠一起放到一个密闭的玻璃罩中（如下图），做如下实验：<br>
											<img
												data-cke-saved-src="http://tikupic.21cnjy.com/2d/b8/2db8e6fff715414e1f7ec31e1e5709f1.jpg"
												src="./备考2018年中考生物一轮基础复习：专题五 绿色植物与生物圈的水循环、碳氧平衡、有机物制造者、爱护植被绿化祖国 -组卷网_files/2db8e6fff715414e1f7ec31e1e5709f1.jpg"
												alt="" v:shapes="图片_x0020_41" width="151" height="147">
										</div>
										<div class="exam-qlist">
											<div class="exam-con">
												<div class="exam-q">
													(1)、将此装置放在黑暗环境中，小白鼠将<span class="q-blank">&nbsp;</span> ，
													原因是<span class="q-blank">&nbsp;</span>。
												</div>
											</div>

											<div class="exam-con">
												<div class="exam-q">
													(2)、将此装置放置在阳光下，小白鼠将<span class="q-blank">&nbsp;</span>。
												</div>
											</div>

											<div class="exam-con">
												<div class="exam-q">
													(3)、在（2）中，小白鼠为绿色植物进行光合作用提供了<span class="q-blank">&nbsp;</span>
													， 而绿色植物通过光合作用又为小白鼠进行生命活动提供了<span class="q-blank">&nbsp;</span>。
												</div>
											</div>

											<div class="exam-con">
												<div class="exam-q">
													(4)、上述装置中，若取出绿色植物，小白鼠将<span class="q-blank">&nbsp;</span> ，
													由此可见绿色植物在生物圈中的重要性。
												</div>
											</div>

										</div>
									</div>

									<div class="exam-foot">
										<p class="exam-foot-left">
											<a href="http://www.zujuan.com/question/detail-6332503.shtml"
												target="_blank"><i class="icona-jiexi"></i>查看解析</a> <a
												onclick="OT2.QCollect(this, 6332503)" href="javascript:;"><i
												class="icona-shoucang"></i>收藏</a> <a
												onclick="new OT2.ErrorReport(6332503)" href="javascript:;"><i
												class="icona-jiucuo"></i>纠错</a>
										</p>
										<p class="exam-foot-right">
											<a class="J_AddQuestion addbtn"><b>+</b>选题</a>
										</p>
									</div>
								</div>
							</li>
							<li data-qid="6608869">
								<div class="search-exam">
									<div class="exam-con">
										<div class="exam-q">
											31. 下图是某同学设计验证绿叶光合作用产生淀粉的示意图，据图回答。<br>
											<img
												data-cke-saved-src="http://tikupic.21cnjy.com/b2/2a/b22a0d6e8d7a3872dd865a438f5b1ab3.png"
												src="./备考2018年中考生物一轮基础复习：专题五 绿色植物与生物圈的水循环、碳氧平衡、有机物制造者、爱护植被绿化祖国 -组卷网_files/b22a0d6e8d7a3872dd865a438f5b1ab3.png"
												v:shapes="图片_x0020_2" width="438" height="280">
										</div>
										<div class="exam-qlist">
											<div class="exam-con">
												<div class="exam-q">
													(1)、该过程中正确的操作顺序是：<span class="q-blank">&nbsp;</span>
												</div>
											</div>

											<div class="exam-con">
												<div class="exam-q">
													(2)、在B操作中的目的是设置<span class="q-blank">&nbsp;</span>,实验变量是 <span
														class="q-blank">&nbsp;</span>。&nbsp;&nbsp;&nbsp;
												</div>
											</div>

											<div class="exam-con">
												<div class="exam-q">
													(3)、在A操作的目的是<span class="q-blank">&nbsp;</span>,图F中滴加的液体是<span
														class="q-blank">&nbsp;</span>。 图G小烧杯中的液体是<span
														class="q-blank">&nbsp;</span>,其作用是<span class="q-blank">&nbsp;</span>.
												</div>
											</div>

											<div class="exam-con">
												<div class="exam-q">
													(4)、在实验中E看到的现象是<span class="q-blank">&nbsp;</span>,这说明<span
														class="q-blank">&nbsp;</span>是光合作用的产物。
												</div>
											</div>

										</div>
									</div>

									<div class="exam-foot">
										<p class="exam-foot-left">
											<a href="http://www.zujuan.com/question/detail-6608869.shtml"
												target="_blank"><i class="icona-jiexi"></i>查看解析</a> <a
												onclick="OT2.QCollect(this, 6608869)" href="javascript:;"><i
												class="icona-shoucang"></i>收藏</a> <a
												onclick="new OT2.ErrorReport(6608869)" href="javascript:;"><i
												class="icona-jiucuo"></i>纠错</a>
										</p>
										<p class="exam-foot-right">
											<a class="J_AddQuestion addbtn"><b>+</b>选题</a>
										</p>
									</div>
								</div>
							</li>
						</ul>
					</div>-->
				</div>
			</div>
		</div>
		<div class="dj-about">
			<div class="view-toolbars f-cb">
				<a href="javascript:;" onclick="paper.download(782410)"
					class="download-btn"><i class="icona-download1"></i>下载试卷</a> <a
					target="_blank" style="display: none" data-method="post"
					href="http://www.zujuan.com/paper/admin-edit?pid=782410&amp;xd=2&amp;chid=11"><i
					class="icona-bianji"></i>编辑</a> <a href="javascript:;"
					onclick="paper.setAnswerSheet(782410,0)"><i class="icona-dtk2"></i>答题卡下载</a>
				<!--<a href="/paper/test?pid=782410"><i class="icona-ceshi"></i>在线测试</a>-->
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
	<!--<div class="editfooter">
    <a target="_blank" style="display:none" data-method="post" href="/paper/admin-edit?pid=782410&xd=2&chid=11"><i class="icona-bianji"></i>编辑</a>
    <a href="javascript:;" onclick="paper.setAnswerSheet(782410,0)" ><i class="icona-dtk2"></i>答题卡下载</a>
    a onclick="return OT2.Global.initLogin(); " href="/paper/test?pid=782410"><i class="icona-ceshi"></i>在线测试</a
    
    <a href="javascript:;" onclick="collect(782410,this)"><i class="icona-shoucang"></i><span>
            收藏试卷        </span></a>
    <a href="javascript:;" onclick="paper.showPie(782410)"><i class="icona-fenxi2"></i>分析试卷</a>
    <a href="javascript:;" onclick="paper.download(782410)" class="download-btn"><i class="icona-download1"></i>下载试卷</a>
</div>-->
	<!--试题篮-->

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

					OT2.LocalData.remove(cachePaper.paper_key);
					OT2.LocalData.remove('basket_cacheObj_v2');
					OT2.LocalData.remove('basket_cachePid');
				});
				$('.basket-tit').css({
					background : '#ffb03d none repeat scroll 0 0'
				});
			} else {
				$('#to-paper-edit').show();
			}

			$(".basket-foot a[data-method='post']").click(function() {
				if (typeof USER.uid === 'undefined') {
					OT2.Global.initLogin();
					return false;
				}
				var cacheObj = {};
				try {
					cacheObj = OT2.Util.getBasketCacheObj() || {};
				} catch (e) {

				}
				var qids = [];
				var _data = _.sortBy(cacheObj, 'order');
				// _.each(cacheObj, function (v) {
				_.each(_data, function(v) {
					if (v.xd == OT2.xd_chid.xd && v.xk == OT2.xd_chid.chid) {
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
	</script>
	<script type="text/template" data-template="dialog-download">
    <div class=" download-msg">
    <div class="download-size">
        <div class="download-text" style="height: 120px;">
            纸张大小：
        </div>
        <div class="size-con">
            <div class="size-a4 radiobox checked">
                <span>
                    <i class="icona-radio"></i>
                    <input type="radio" value="A4" name="chooseSize" checked style="display: none;">
                </span>
                <i class="icona-a4"></i>
                <p>A4</p>
            </div>
            <div class="size-a3 radiobox">
                <span>
                    <i class="icona-radio"></i>
                    <input type="radio" value="A3" name="chooseSize" style="display: none;">
                </span>
                <i class="icona-a3"></i>
                <p>A3（双栏）</p>
            </div>
        </div> 
        <div class="size-con">
            <div class="size-a4 radiobox">
                <span>
                    <i class="icona-radio"></i>
                    <input type="radio" value="B5" name="chooseSize" style="display: none;">
                </span>
                <i class="icona-a4"></i>
                <p>B5</p>
            </div>
            <div class="size-a3 radiobox">
                <span>
                    <i class="icona-radio"></i>
                    <input type="radio" value="B4" name="chooseSize" style="display: none;">
                </span>
                <i class="icona-a3"></i>
                <p>B4（双栏）</p>
            </div>
        </div> 
    </div>
    <div class="download-type">
        <div class="download-text">
            试卷类型：
        </div>
        <div class="download-type-con">
            <div>
                <span class="radiobox">
                    <i class="icona-radio"></i>
                    <input type="radio" value="teacher" name="chooseType" style="display: none;">
                    教师用卷（答案在题后）
                </span>
                <label></label>
            </div>
            <div>
                <span class="radiobox checked">
                    <i class="icona-radio"></i>
                    <input type="radio" value="student" name="chooseType" checked style="display: none;">
                    学生用卷（答案在卷尾）
                </span>
                <label></label>
            </div>
        </div>
    </div>
</script>
	<script type="text/template" data-template="dialog-answer-sheet">
    <div class="answersheet-con">
        <div class="sheet-line f-cb">
            <label>答题卡样式：</label>
            <div class="menu sheet-section active">
                <span class="s-title">普通表格型</span><i class="icona-tri"></i>
                <ul class="sheet-list">
                    <li data-sheet="1">普通表格型</li>
                    <li data-sheet="2">标准题卡型</li>
                    <li data-sheet="3">选择密集型</li>
                </ul>
            </div>
        </div>
        <div class="sheet">
            <div><img src="/static/images/putong.png"></div>
            <div style="display: none;"><img src="/static/images/biaozhun.png"></div>
            <div style="display: none;"><img src="/static/images/miji.png"></div>
        </div>
    </div>
</script>
	<script type="text/javascript" src="./static/get-parameters"></script>
	<script src="./static/js/highcharts.js"></script>
	<script src="./static/js/error-report.min.js"></script>
	<script src="./static/js/question-txt.min.js"></script>
	<script src="./static/js/question.min.js"></script>
	<script src="./static/js/element.min1.js"></script>
	<script src="./static/js/paper.min1.js"></script>
	<script>
		var paper = new OT2.Paper({}); // 试卷实例化
		paper.pid = 782410;
		var $admin_a = $(".editfooter a[href*='/paper/admin-edit']");
		function collect(pid, ob) {
			if (typeof USER.uid === 'undefined') {
				OT2.Global.initLogin();
				return false;
			}
			paper.collectPaper(pid, function(isC) {
				if (isC) {
					var html = '取消收藏';
					$(ob).find('i').removeClass('icona-shoucang').addClass(
							'icona-quxiaosc');
				} else {
					var html = '收藏';
					$(ob).find('i').addClass('icona-shoucang').removeClass(
							'icona-quxiaosc');
				}
				// console.log(isC,$(ob).find('span').html());
				$(ob).find('span').html(html);
			});
		}
		if (USER && USER['tikuAdmin']) {
			$admin_a.show();
			$admin_a.click(function() {
				/*        var cacheObj = OT2.Util.getBasketCacheObj() || {};
				 var qids = [];
				 _.each(cacheObj, function (v) {
				 if (v.xd == OT2.xd_chid.xd && v.xk == OT2.xd_chid.chid) {
				 qids.push(v.id);
				 }
				 });
				 //alert(qids);
				 if(window.confirm('是否清空试题篮')){
				 $admin_a.attr({'href':$admin_a.attr('href')+'&clean=1'})
				 }else{
				 $(this).attr({
				 'data-params': JSON3.stringify({
				 'qids':qids
				 })
				 });
				 }*/
				$admin_a.attr({
					'href' : $admin_a.attr('href') + '&clean=1'
				})
				return true;
			});
		}
	</script>
	<script>
		var MockDataTestPaper = [
				{
					"head_title" : "单选题",
					"questions" : [
							{
								"question_id" : "3755280",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "0",
								"grade_id" : "7",
								"question_source" : "水喝无机盐的运输",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "170197",
								"save_num" : "6",
								"oldqid" : "0",
								"paper" : null,
								"extra_file" : "",
								"question_text" : "导管输送的物质和方向是（    ）",
								"options" : {
									"A" : "有机物，从根到其他器官",
									"B" : "有机物，从其他器官到叶根",
									"C" : "水和无机盐，从根到其他器官",
									"D" : "水和无机盐，从其他器官到根"
								},
								"knowledge" : "http://webshot.zujuan.com/q/bd/0d/018df35ead0d55d3848b082b02f4_3755280kn.png?hash=3cb157cbe9ba0342bad56dc91608b1a7&sign=224e0d4bf6a61690d8b0fd363caf79b8&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 1,
								"sort2" : 1,
								"is_use" : 0
							},
							{
								"question_id" : "4090270",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "1",
								"evaluated" : "0",
								"region_ids" : "10",
								"grade_id" : "9",
								"question_source" : "2017年江苏省盐城市中考生物试卷",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "212466",
								"save_num" : "26",
								"oldqid" : "0",
								"paper" : {
									"pid" : "212466",
									"title" : "2017年江苏省盐城市中考生物试卷"
								},
								"extra_file" : "",
								"question_text" : "（2017•盐城）有些不法分子盗剥名贵植物杜仲的树皮作药材，致使树木死亡．其原因主要是破坏了树皮中的（&nbsp;&nbsp; ）",
								"options" : {
									"A" : "导管",
									"B" : "筛管",
									"C" : "髓",
									"D" : "形成层"
								},
								"knowledge" : "http://webshot.zujuan.com/q/df/84/2b248ff263078d24e2093ade407a_4090270kn.png?hash=5cf5c77e0c1d49ef5a7431caa0a614b0&sign=2c91770ae4742cdb1ec7c07bff4cb743&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 2,
								"sort2" : 2,
								"is_use" : 0
							},
							{
								"question_id" : "5685131",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "1",
								"master_level" : "1",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "19",
								"grade_id" : "7",
								"question_source" : "广东省江门市第二中学2016-2017学年七年级上学期期末摸底考试生物试题",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "417631",
								"save_num" : "23",
								"oldqid" : "0",
								"paper" : {
									"pid" : "417631",
									"title" : "广东省江门市第二中学2016-2017学年七年级上学期期末生物期末考试试卷"
								},
								"extra_file" : "",
								"question_text" : "1500年前，贾思勰任高阳郡太守时曾因枣树数年不结果而“打”枣树，他用斧背狠敲枣树树干，树皮被打得伤痕累累，到了秋天树上挂满了枣子。这种做法的道理是（　　）",
								"options" : {
									"A" : "可以加速水分的运输从而提高产量",
									"B" : "有利于有机物的运输，而提高产量",
									"C" : "减少了有机物的向下运输而提高了产量",
									"D" : "增加了无机盐的向上运输，而提高产量"
								},
								"knowledge" : "http://webshot.zujuan.com/q/af/ad/16926337552f2bfe89e5c75f44bd_5685131kn.png?hash=b3ff43941f4f1ed37552849f99e40dfb&sign=1491bc31639c52d94ab28e4dee2a64dc&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 3,
								"sort2" : 3,
								"is_use" : 0
							},
							{
								"question_id" : "5779871",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "1",
								"master_level" : "1",
								"exam_type" : "1",
								"evaluated" : "0",
								"region_ids" : "20",
								"grade_id" : "9",
								"question_source" : "2017年广西贺州市中考生物试卷",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "433033",
								"save_num" : "97",
								"oldqid" : "0",
								"paper" : {
									"pid" : "433033",
									"title" : "2017年广西贺州市中考生物试卷"
								},
								"extra_file" : "",
								"question_text" : "（2017•贺州）南瓜植株生长旺盛时，每天要从根吸收大量的水，其中大部分水的去向时(&nbsp;&nbsp; )",
								"options" : {
									"A" : "组成植物体",
									"B" : "留在植物体内",
									"C" : "蒸腾作用散失",
									"D" : "用于呼吸作用"
								},
								"knowledge" : "http://webshot.zujuan.com/q/00/ea/6ef0fc63aabc7c417ef2d447df02_5779871kn.png?hash=26046339e1acf97e5c49a5d1dcd08490&sign=5d5883de54d99a9fad0852df2eaf6702&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 4,
								"sort2" : 4,
								"is_use" : 0
							},
							{
								"question_id" : "4246812",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "1",
								"evaluated" : "0",
								"region_ids" : "25",
								"grade_id" : "9",
								"question_source" : "2017年云南省曲靖市中考生物试卷",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "223216",
								"save_num" : "28",
								"oldqid" : "0",
								"paper" : {
									"pid" : "223216",
									"title" : "2017年云南省曲靖市中考生物试卷"
								},
								"extra_file" : "",
								"question_text" : "（2017•曲靖）水分和无机盐能从植株的根部向上运输，主要动力来自于（&nbsp;&nbsp; ）",
								"options" : {
									"A" : "光合作用",
									"B" : "扩散作用",
									"C" : "蒸腾作用",
									"D" : "呼吸作用"
								},
								"knowledge" : "http://webshot.zujuan.com/q/67/44/7ce7e910007a27abccf1fb5b6f88_4246812kn.png?hash=571622676d599505e1d26bafe46f6a96&sign=be30ae3cc6639abf71a68c8676c7ee93&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 5,
								"sort2" : 5,
								"is_use" : 0
							},
							{
								"question_id" : "6829163",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "10",
								"grade_id" : "8",
								"question_source" : "江苏省扬州市江都区卲樊片2017-2018学年八年级上学期生物期末考试试卷",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "760715",
								"save_num" : "2",
								"oldqid" : "0",
								"paper" : {
									"pid" : "760715",
									"title" : "江苏省扬州市江都区卲樊片2017-2018学年八年级上学期生物期末考试试卷"
								},
								"extra_file" : "",
								"question_text" : "“山上多植物，胜似修水库。有雨它能吞，无雨它能吐。”这句谚语形象地说明了（&nbsp;&nbsp;&nbsp; ）",
								"options" : {
									"A" : "植物的光合作用",
									"B" : "植物的蒸腾作用",
									"C" : "植物的呼吸作用",
									"D" : "植物的蒸发作用"
								},
								"knowledge" : "http://webshot.zujuan.com/q/bc/f6/50c1fdaca6fd55cae38f28b4a589_6829163kn.png?hash=dcdb2a60f74fd99c7c32b76296fdca75&sign=56f07f0454f0a801505f4ca89dbe7586&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 6,
								"sort2" : 6,
								"is_use" : 0
							},
							{
								"question_id" : "6575835",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "1",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "7",
								"grade_id" : "7",
								"question_source" : "吉林省辉南县2017-2018学年七年级上学期生物期末考试试卷",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "689983",
								"save_num" : "33",
								"oldqid" : "0",
								"paper" : {
									"pid" : "689983",
									"title" : "吉林省辉南县2017-2018学年七年级上学期生物期末考试试卷"
								},
								"extra_file" : "",
								"question_text" : "绿色植物蒸腾作用的意义不包括( )",
								"options" : {
									"A" : "降低叶片的温度",
									"B" : "促进植物对水分的吸收",
									"C" : "增加空气湿度，增加降水量",
									"D" : "促进植物对水和无机盐的运输"
								},
								"knowledge" : "http://webshot.zujuan.com/q/08/69/8db0c0659f63b5eca2fa38db377c_6575835kn.png?hash=eb629cb04562a3ef14d51de82dc2bbec&sign=b13a4625fcdbc4e162ea9387f38058d2&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 7,
								"sort2" : 7,
								"is_use" : 0
							},
							{
								"question_id" : "3806741",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "13",
								"grade_id" : "8",
								"question_source" : "2016-2017学年福建省漳州市龙海市程溪中学八年级（下）期中生物试卷",
								"mode" : "3",
								"kid_num" : "2",
								"paperid" : "175557",
								"save_num" : "2",
								"oldqid" : "0",
								"paper" : {
									"pid" : "175557",
									"title" : "2016-2017学年福建省漳州市龙海市程溪中学八年级下学期期中生物试卷"
								},
								"extra_file" : "",
								"question_text" : "下列做法不属于运用蒸腾作用原理的是（　　）",
								"options" : {
									"A" : "选择阴雨天移栽植物",
									"B" : "移栽植物时剪去部分叶片",
									"C" : "对移栽后的植物进行遮阳",
									"D" : "夏天早上和傍晚给植物浇水"
								},
								"knowledge" : "http://webshot.zujuan.com/q/11/8e/3a507b6b281be110686ab5b7f7d1_3806741kn.png?hash=c95405d47566feab35af5d5ed4209fc9&sign=11ffefb29a9dfdf49cd43fe49eca8021&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 8,
								"sort2" : 8,
								"is_use" : 0
							},
							{
								"question_id" : "3711861",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "10",
								"grade_id" : "7",
								"question_source" : "2016-2017学年江苏省泰州市兴化市顾庄学区七年级（上）期末生物试卷",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "166234",
								"save_num" : "7",
								"oldqid" : "0",
								"paper" : {
									"pid" : "166234",
									"title" : "2016-2017学年江苏省泰州市兴化市顾庄学区七年级上学期期末生物试卷"
								},
								"extra_file" : "",
								"question_text" : "绿色植物进行光合作用时，不需要的外界条件是（　　）",
								"options" : {
									"A" : "二氧化碳",
									"B" : "水",
									"C" : "高温",
									"D" : "光"
								},
								"knowledge" : "http://webshot.zujuan.com/q/4b/8a/3cfe4e25da0db91a7fe08cc86c5e_3711861kn.png?hash=a66b096be48f0bd9f481ca56fec245da&sign=d72263e7ff81e3618d147c845818483a&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 9,
								"sort2" : 9,
								"is_use" : 0
							},
							{
								"question_id" : "3557224",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "4",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "19",
								"grade_id" : "9",
								"question_source" : "2016-2017学年广东省揭阳市揭西第三华侨中学九年级（上）期中生物试卷",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "149737",
								"save_num" : "3",
								"oldqid" : "0",
								"paper" : {
									"pid" : "149737",
									"title" : "2016-2017学年广东省揭阳市揭西第三华侨中学九年级上学期期中生物试卷"
								},
								"extra_file" : "",
								"question_text" : "有位同学在夏季晴朗的一天，分别于清晨、正午、傍晚三个时间从同一棵绿色植物上摘取一片绿叶，将它们进行脱色、漂洗、碘液染色，其中染色最深的是（）",
								"options" : {
									"A" : "清晨的叶",
									"B" : "傍晚的叶",
									"C" : "正午的叶",
									"D" : "都一样"
								},
								"knowledge" : "http://webshot.zujuan.com/q/84/43/cf0d16c9126c88f9dca92f03b88e_3557224kn.png?hash=4191ad386c7a77a4bdacc5f0920c0959&sign=5f7cdc34fb481ec7f6c1100fccadfe0f&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 10,
								"sort2" : 10,
								"is_use" : 0
							},
							{
								"question_id" : "4208270",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "25",
								"grade_id" : "8",
								"question_source" : "2016-2017学年云南省普洱市思茅三中八年级（下）期中生物试卷",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "221550",
								"save_num" : "6",
								"oldqid" : "0",
								"paper" : {
									"pid" : "221550",
									"title" : "2016-2017学年云南省普洱市思茅三中八年级下学期期中生物试卷"
								},
								"extra_file" : "",
								"question_text" : "下列有关“绿叶在光下制造有机物（淀粉）”的实验描述，错误的是（&nbsp;&nbsp;&nbsp; ）",
								"options" : {
									"A" : "进行实验时，先将天竺葵放到黑暗处一昼夜",
									"B" : "将摘下的叶片放入盛有酒精的烧杯中直接加热",
									"C" : "滴加碘液并漂洗后，叶片遮光部分不变蓝，见光部分变蓝",
									"D" : "该实验说明了淀粉是光合作用的产物，光是光合作用的条件"
								},
								"knowledge" : "http://webshot.zujuan.com/q/84/fc/340e44fda8ec53d871f6533fde71_4208270kn.png?hash=211817da632623c69225a3fb08769cd6&sign=8ed901416edd491971a56956d7aa7379&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 11,
								"sort2" : 11,
								"is_use" : 0
							},
							{
								"question_id" : "3619172",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "20",
								"grade_id" : "7",
								"question_source" : "2016-2017学年广西贵港市平南县七年级（上）期末生物试卷",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "156595",
								"save_num" : "4",
								"oldqid" : "0",
								"paper" : {
									"pid" : "156595",
									"title" : "2016-2017学年广西贵港市平南县七年级上学期期末生物试卷"
								},
								"extra_file" : "",
								"question_text" : "夏日中午12时，由于阳光过强，使气孔关闭，造成光合作用速率下降，原因是（&nbsp;&nbsp;&nbsp; ）",
								"options" : {
									"A" : "吸收不到氧气",
									"B" : "吸收不到二氧化碳",
									"C" : "吸收不到水",
									"D" : "释放不了氧气"
								},
								"knowledge" : "http://webshot.zujuan.com/q/45/41/d5e8138e3963ca9abc513cc53f7d_3619172kn.png?hash=d9d1b501bfe9c1ca7e7524cacc2dbac8&sign=f8fd5c8ad41ba56bf118aef8c9fa134c&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 12,
								"sort2" : 12,
								"is_use" : 0
							},
							{
								"question_id" : "2573642",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "",
								"grade_id" : "7",
								"question_source" : "2015-2016学年福建省厦门市七年级（上）期末生物试卷",
								"mode" : "1",
								"kid_num" : "1",
								"paperid" : "780515",
								"save_num" : "31",
								"oldqid" : "0",
								"paper" : {
									"pid" : "780515",
									"title" : "福建省泉州台商投资区2017-2018学年七年级上学期生物期末考试试卷"
								},
								"extra_file" : "",
								"question_text" : "合理密植能够提高农作物产量，主要是因为这一措施能够让农作物充分利用（　　）",
								"options" : {
									"A" : "化肥",
									"B" : "氧气",
									"C" : "光能",
									"D" : "二氧化碳"
								},
								"knowledge" : "http://webshot.zujuan.com/q/b0/e3/8671ae94811a2840da1b97ff083d_2573642kn.png?hash=06da6f8406d92f5edea4d27f6801dc79&sign=7678b53efada7de7b414fbf39e4e5b39&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 13,
								"sort2" : 13,
								"is_use" : 0
							},
							{
								"question_id" : "6802585",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "1",
								"master_level" : "1",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "10",
								"grade_id" : "7",
								"question_source" : "江苏省建湖县近湖中学2015-2016学年七年级下学期生物开学考试试卷",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "756919",
								"save_num" : "7",
								"oldqid" : "0",
								"paper" : {
									"pid" : "756919",
									"title" : "江苏省建湖县近湖中学2015-2016学年七年级下学期生物开学考试试卷"
								},
								"extra_file" : "",
								"question_text" : "一绿色植株在黑暗中放置24小时，选择一片绿叶，把主叶脉剪断(如图所示)，然后将植株放在阳光下照射2～4小时，发现B区不能正常制造淀粉，其中原因是B区叶片缺少（&nbsp;&nbsp;&nbsp; ）<br/><img data-cke-saved-src=\"http://tikupic.21cnjy.com/1d/c8/1dc807136d673e00d79050a0e6175cbe.jpg\" src=\"http://tikupic.21cnjy.com/1d/c8/1dc807136d673e00d79050a0e6175cbe.jpg\" alt=\"\" v:shapes=\"图片_x0020_8\" width=\"168\" height=\"81\">",
								"options" : {
									"A" : "叶绿素",
									"B" : "光",
									"C" : "二氧化",
									"D" : "水"
								},
								"knowledge" : "http://webshot.zujuan.com/q/0f/ef/621b21eef7d912d3a79316a96626_6802585kn.png?hash=ebad8d842168a01c0d8020f651334e4b&sign=6dd4c2ffa1c8caa955238f8d6417f7ae&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 14,
								"sort2" : 14,
								"is_use" : 0
							},
							{
								"question_id" : "5295499",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "10",
								"grade_id" : "7",
								"question_source" : "2016-2017学年江苏省启东市南苑中学七年级上期中生物试卷",
								"mode" : "3",
								"kid_num" : "2",
								"paperid" : "333123",
								"save_num" : "4",
								"oldqid" : "0",
								"paper" : {
									"pid" : "333123",
									"title" : "江苏省启东市南苑中学2016-2017学年七年级上学期生物期中考试试卷"
								},
								"extra_file" : "",
								"question_text" : "养鱼缸里经常要放一些新鲜的水草，这样做的主要目的是（　　）",
								"options" : {
									"A" : "水草呼吸作用增加鱼缸内二氧化碳的含量",
									"B" : "新鲜的水草可以美化养鱼缸",
									"C" : "水草是鱼的重要饵料",
									"D" : "水草光合作用增加鱼缸内氧气的含量"
								},
								"knowledge" : "http://webshot.zujuan.com/q/eb/f4/a2df691a9df61502f18150f2a9ee_5295499kn.png?hash=473c7572fe157fd47eb68f2fb40ce74f&sign=a30454b413c93fe6e7325a22c1236dbb&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 15,
								"sort2" : 15,
								"is_use" : 0
							},
							{
								"question_id" : "2915787",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "18",
								"grade_id" : "7",
								"question_source" : "2015-2016学年湖南省株洲市醴陵七中七年级（上）期中生物试卷",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "63676",
								"save_num" : "10",
								"oldqid" : "0",
								"paper" : {
									"pid" : "63676",
									"title" : "2015-2016学年湖南省株洲市醴陵七中七年级上学期期中生物试卷"
								},
								"extra_file" : "",
								"question_text" : "木材燃烧时能放出大量热量，可以将水烧开，把饭煮熟；木材中贮存的能量是（&nbsp; ）",
								"options" : {
									"A" : "太阳光能",
									"B" : "电灯光能",
									"C" : "光合作用把光能转变成贮藏在有机物里的能量",
									"D" : "呼吸作用分解有机物时释放的能量"
								},
								"knowledge" : "http://webshot.zujuan.com/q/c8/3b/68378aad95298ba6185b0dab9ae0_2915787kn.png?hash=1d273112695dd1becd8bdd5e872d2c11&sign=121a74534bee6ab0ceaf36e4bbef5586&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 16,
								"sort2" : 16,
								"is_use" : 0
							},
							{
								"question_id" : "4087516",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "7",
								"evaluated" : "0",
								"region_ids" : "13",
								"grade_id" : "9",
								"question_source" : "2017年福建省泉州市洛江区中考生物模拟试卷",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "212342",
								"save_num" : "2",
								"oldqid" : "0",
								"paper" : {
									"pid" : "212342",
									"title" : "2017年福建省泉州市洛江区中考生物模拟试卷"
								},
								"extra_file" : "",
								"question_text" : "蔬菜和水果堆放久了，会引起发热的原因是（&nbsp;&nbsp; ）",
								"options" : {
									"A" : "光合作用放出热量",
									"B" : "呼吸作用放出热量",
									"C" : "蒸腾作用放出热量",
									"D" : "空气不流通引起发热"
								},
								"knowledge" : "http://webshot.zujuan.com/q/57/76/2f32b714a7f7b352b7d27bd27f33_4087516kn.png?hash=2204004a75974922d74b2eeea4b2845f&sign=6cc9c97977fd3a9fe6ad1ff04961aa42&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 17,
								"sort2" : 17,
								"is_use" : 0
							},
							{
								"question_id" : "3619375",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "3",
								"grade_id" : "7",
								"question_source" : "2016-2017学年河北省廊坊市文安县七年级（上）期末生物试卷",
								"mode" : "3",
								"kid_num" : "2",
								"paperid" : "156605",
								"save_num" : "5",
								"oldqid" : "0",
								"paper" : {
									"pid" : "156605",
									"title" : "2016-2017学年河北省廊坊市文安县七年级上学期期末生物试卷"
								},
								"extra_file" : "",
								"question_text" : "粮库中为了将储存的粮食保持更长的时间，可采取以下条件中的哪一项（&nbsp;&nbsp;&nbsp; ）",
								"options" : {
									"A" : "低温、干燥、增加氧气浓度",
									"B" : "高温、干燥、增加氧气浓度",
									"C" : "低温、干燥、增加二氧化碳浓度",
									"D" : "低温、潮湿、增加二氧化碳浓度"
								},
								"knowledge" : "http://webshot.zujuan.com/q/a6/27/0bdee3d092dfa541ab7a55447110_3619375kn.png?hash=95dc54c9028e5b15a9cbe95f5d23f1db&sign=08fb26c35adb5e0bc7f0d0b249051e1e&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 18,
								"sort2" : 18,
								"is_use" : 0
							},
							{
								"question_id" : "3711730",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "7",
								"grade_id" : "7",
								"question_source" : "2016-2017学年吉林省长春市七年级（上）期末生物试卷",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "166231",
								"save_num" : "2",
								"oldqid" : "0",
								"paper" : {
									"pid" : "166231",
									"title" : "2016-2017学年吉林省长春市七年级上学期期末生物试卷"
								},
								"extra_file" : "",
								"question_text" : "“小草依依，踏之何忍”设置这些提示语提醒人们不要践踏小草，因为经常在草坪上行走，会造成土壤板结，从而影响草的生长，土壤板结影响植物生长的主要原因是（　　）",
								"options" : {
									"A" : "植物缺少无机盐，影响生长",
									"B" : "植物缺少水，影响光合作用",
									"C" : "土壤缺少氧气，影响根的呼吸",
									"D" : "气孔关闭，影响蒸腾作用"
								},
								"knowledge" : "http://webshot.zujuan.com/q/3e/e7/94dcdc1068e2189ead3e7c01d355_3711730kn.png?hash=8f0eb418a90f7e4bd7f83e60b1694aa1&sign=7b12505b081384eb66282a9036156432&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 19,
								"sort2" : 19,
								"is_use" : 0
							},
							{
								"question_id" : "4246612",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "1",
								"evaluated" : "0",
								"region_ids" : "5",
								"grade_id" : "9",
								"question_source" : "2017年内蒙古通辽市中考生物试卷",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "223210",
								"save_num" : "38",
								"oldqid" : "0",
								"paper" : {
									"pid" : "223210",
									"title" : "2017年内蒙古通辽市中考生物试卷"
								},
								"extra_file" : "",
								"question_text" : "（2017•通辽）如图，若甲代表水和二氧化碳，则（&nbsp;&nbsp; ）<br/><img data-cke-saved-src=\"http://tikupic.21cnjy.com/21/1b/211b0ce0c560ac19f689064bb7fee5cc.png\" src=\"http://tikupic.21cnjy.com/21/1b/211b0ce0c560ac19f689064bb7fee5cc.png\" alt=\"\" v:shapes=\"_x0000_i1039\" width=\"103\" height=\"101\">",
								"options" : {
									"A" : "Ⅱ是呼吸作用，乙是水和二氧化碳，Ⅰ是光合作用",
									"B" : "Ⅱ是光合作用，乙是有机物和氧气，Ⅰ是呼吸作用",
									"C" : "Ⅱ是光合作用，乙是水和二氧化碳，Ⅰ是呼吸作用",
									"D" : "Ⅱ是呼吸作用，乙是有机物和氧气，Ⅰ是光合作用"
								},
								"knowledge" : "http://webshot.zujuan.com/q/dc/d9/72b91654b47d63fae7fc87062886_4246612kn.png?hash=b90a1599e32f1478810957a42da2794a&sign=2f1eb92d3cf1b29dd1cc75fdd009e439&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 20,
								"sort2" : 20,
								"is_use" : 0
							},
							{
								"question_id" : "6575831",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "4",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "7",
								"grade_id" : "7",
								"question_source" : "吉林省辉南县2017-2018学年七年级上学期生物期末考试试卷",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "689983",
								"save_num" : "19",
								"oldqid" : "0",
								"paper" : {
									"pid" : "689983",
									"title" : "吉林省辉南县2017-2018学年七年级上学期生物期末考试试卷"
								},
								"extra_file" : "",
								"question_text" : "小伟是七年级学生，他的爷爷经常早晨到千佛山的树林丛中锻炼，并且说是有利于呼吸新鲜空气，但小伟上完一节生物课后，劝告爷爷早晨的时候最好不要到树木茂盛的地方去，你知道他当时学的哪节课吗？（&nbsp;&nbsp; ）。",
								"options" : {
									"A" : "绿色植物的蒸腾作用",
									"B" : "绿色植物的呼吸作用",
									"C" : "植物的主要类群",
									"D" : "生物体的结构层次"
								},
								"knowledge" : "http://webshot.zujuan.com/q/db/ac/119853a806675f820fe6857715e4_6575831kn.png?hash=1e4a9a1a576682e868b01f86851ca2c0&sign=8d1f0964f55c83993e9324d6e21c7038&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 21,
								"sort2" : 21,
								"is_use" : 0
							},
							{
								"question_id" : "6778981",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "1",
								"master_level" : "2",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "10",
								"grade_id" : "7",
								"question_source" : "江苏省姜堰区2017-2018学年七年级上学期生物期末考试试卷",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "744391",
								"save_num" : "2",
								"oldqid" : "0",
								"paper" : {
									"pid" : "744391",
									"title" : "江苏省南京市溧水区2017-2018学年七年级上学期生物期末考试试卷"
								},
								"extra_file" : "",
								"question_text" : "如图是检验植物某种生理活动释放某种气体的装置。下列选项表述正确的是（&nbsp;&nbsp;&nbsp;&nbsp; ）<br/><img width=\"149\" height=\"97\" data-cke-saved-src=\"http://tikupic.21cnjy.com/bc/c8/bcc8e70d061e93ebc3bc1f66a3a03631.png\" src=\"http://tikupic.21cnjy.com/bc/c8/bcc8e70d061e93ebc3bc1f66a3a03631.png\" v:shapes=\"_x0000_i1035\">",
								"options" : {
									"A" : "检验呼吸作用释放二氧化碳&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;",
									"B" : "检验呼吸作用释放氧气",
									"C" : "检验光合作用释放二氧化碳&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;",
									"D" : "检验光合作用释放氧气"
								},
								"knowledge" : "http://webshot.zujuan.com/q/a8/0c/a8aef149145e568828605bbac534_6778981kn.png?hash=31e9c4a68c65c96f587d04c654113f09&sign=717a4bb9046b7806893824a989369417&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 22,
								"sort2" : 22,
								"is_use" : 0
							},
							{
								"question_id" : "6829165",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "1",
								"master_level" : "1",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "10",
								"grade_id" : "8",
								"question_source" : "江苏省扬州市江都区卲樊片2017-2018学年八年级上学期生物期末考试试卷",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "760715",
								"save_num" : "2",
								"oldqid" : "0",
								"paper" : {
									"pid" : "760715",
									"title" : "江苏省扬州市江都区卲樊片2017-2018学年八年级上学期生物期末考试试卷"
								},
								"extra_file" : "",
								"question_text" : "大气中的氧和二氧化碳量保持相对稳定是（&nbsp;&nbsp;&nbsp; ）",
								"options" : {
									"A" : "光合作用的结果",
									"B" : "呼吸作用的结果",
									"C" : "大气中氧含量多的结果",
									"D" : "氧大量消耗的结果"
								},
								"knowledge" : "http://webshot.zujuan.com/q/36/d3/b8b828da2d76870c7094bb5fa58f_6829165kn.png?hash=66fc63cb1a667e88cb5e80bd6794a283&sign=0576b374058032196f211774bf7a6470&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 23,
								"sort2" : 23,
								"is_use" : 0
							},
							{
								"question_id" : "6777349",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "1",
								"master_level" : "1",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "20",
								"grade_id" : "7",
								"question_source" : "广西柳州市2017-2018学年七年级上学期生物期末考试试卷",
								"mode" : "3",
								"kid_num" : "3",
								"paperid" : "744323",
								"save_num" : "2",
								"oldqid" : "0",
								"paper" : {
									"pid" : "744323",
									"title" : "广西柳州市2017-2018学年七年级上学期生物期末考试试卷"
								},
								"extra_file" : "",
								"question_text" : "2017年6月5日是第46个世界环境日，主题为“森林：大自然为您效劳”。下列不属于森林的作用的是(&nbsp;&nbsp;&nbsp;&nbsp; ) &nbsp;",
								"options" : {
									"A" : "&nbsp; 侵占人类生存空间",
									"B" : "保护土壤和涵养水源",
									"C" : "调节气候和制造氧气",
									"D" : "净化空气和消除噪声"
								},
								"knowledge" : "http://webshot.zujuan.com/q/13/8f/1d74c0deb213a910fcac421bad8d_6777349kn.png?hash=aaa24ee8ac535fa94f6cbb2b411e203c&sign=1389ba1f4fcb7c5fa51180e82c6cd430&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 24,
								"sort2" : 24,
								"is_use" : 0
							},
							{
								"question_id" : "4385828",
								"question_type" : "1",
								"question_channel_type" : "1",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "17",
								"grade_id" : "7",
								"question_source" : "2016-2017学年湖北省十堰市丹江口市七年级（下）期末生物试卷",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "230790",
								"save_num" : "13",
								"oldqid" : "0",
								"paper" : {
									"pid" : "230790",
									"title" : "2016-2017学年湖北省十堰市丹江口市七年级下学期期末生物试卷"
								},
								"extra_file" : "",
								"question_text" : "我国政府推行了部分教材循环使用的政策，制定这一政策的根本出发点是（　　）",
								"options" : {
									"A" : "有利于卫生防疫",
									"B" : "为造纸厂节约生产成本",
									"C" : "节约木材，保护森林",
									"D" : "为每个家庭节约资金"
								},
								"knowledge" : "http://webshot.zujuan.com/q/4c/8a/60fcd8a87f7e7a0eb30d6c17daff_4385828kn.png?hash=2a21db44da7ca5fe05721b2df1006702&sign=8fffb2b2a5c058f3a13035a0740f083b&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "2"
								},
								"sort" : 25,
								"sort2" : 25,
								"is_use" : 0
							} ],
					"scores" : {
						"2573642" : {
							"score" : "2"
						},
						"2915787" : {
							"score" : "2"
						},
						"3557224" : {
							"score" : "2"
						},
						"3619172" : {
							"score" : "2"
						},
						"3619375" : {
							"score" : "2"
						},
						"3711730" : {
							"score" : "2"
						},
						"3711861" : {
							"score" : "2"
						},
						"3755280" : {
							"score" : "2"
						},
						"3806741" : {
							"score" : "2"
						},
						"4087516" : {
							"score" : "2"
						},
						"4090270" : {
							"score" : "2"
						},
						"4208270" : {
							"score" : "2"
						},
						"4246612" : {
							"score" : "2"
						},
						"4246812" : {
							"score" : "2"
						},
						"4385828" : {
							"score" : "2"
						},
						"5295499" : {
							"score" : "2"
						},
						"5685131" : {
							"score" : "2"
						},
						"5779871" : {
							"score" : "2"
						},
						"6575831" : {
							"score" : "2"
						},
						"6575835" : {
							"score" : "2"
						},
						"6777349" : {
							"score" : "2"
						},
						"6778981" : {
							"score" : "2"
						},
						"6802585" : {
							"score" : "2"
						},
						"6829163" : {
							"score" : "2"
						},
						"6829165" : {
							"score" : "2"
						}
					}
				},
				{
					"head_title" : "综合题",
					"questions" : [
							{
								"question_id" : "2681480",
								"question_type" : "7",
								"question_channel_type" : "28",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "3",
								"grade_id" : "7",
								"question_source" : "2015-2016学年河北省唐山市滦县七年级（上）期末生物试卷",
								"mode" : "3",
								"kid_num" : "2",
								"paperid" : "40739",
								"save_num" : "8",
								"oldqid" : "0",
								"paper" : {
									"pid" : "40739",
									"title" : "2015-2016学年河北省唐山市滦县七年级上学期期末生物试卷"
								},
								"list" : [
										{
											"question_id" : "2706360",
											"question_type" : "4",
											"question_channel_type" : "28",
											"question_status" : "2",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "2681480",
											"is_objective" : "1",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "",
											"grade_id" : "7",
											"question_source" : "2015-2016学年河北省唐山市滦县七年级（上）期末生物试卷",
											"mode" : "1",
											"kid_num" : "2",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "图中[①]<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />和[⑤]<input type=\"text\" placeholder=\"2\" ms-duplex-string =\"child.myanswer[2]\" class=\"cke_questions_blankInput\" />合称<input type=\"text\" placeholder=\"3\" ms-duplex-string =\"child.myanswer[3]\" class=\"cke_questions_blankInput\" />  ， 属于保护组织，②④应属于<input type=\"text\" placeholder=\"4\" ms-duplex-string =\"child.myanswer[4]\" class=\"cke_questions_blankInput\" />组织．",
											"options" : "",
											"knowledge" : null,
											"category" : null,
											"done" : false,
											"myanswer" : {
												"1" : "",
												"2" : "",
												"3" : "",
												"4" : ""
											},
											"sort2" : 1
										},
										{
											"question_id" : "2706361",
											"question_type" : "4",
											"question_channel_type" : "28",
											"question_status" : "2",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "2681480",
											"is_objective" : "1",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "",
											"grade_id" : "7",
											"question_source" : "2015-2016学年河北省唐山市滦县七年级（上）期末生物试卷",
											"mode" : "1",
											"kid_num" : "2",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "叶片正面比背面颜色<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" /> ． 主要原因是接近上表皮的[<input type=\"text\" placeholder=\"2\" ms-duplex-string =\"child.myanswer[2]\" class=\"cke_questions_blankInput\" />]的细胞中含叶绿体更多．叶肉细胞含有的叶绿体是进行<input type=\"text\" placeholder=\"3\" ms-duplex-string =\"child.myanswer[3]\" class=\"cke_questions_blankInput\" />的场所．",
											"options" : "",
											"knowledge" : null,
											"category" : null,
											"done" : false,
											"myanswer" : {
												"1" : "",
												"2" : "",
												"3" : ""
											},
											"sort2" : 2
										},
										{
											"question_id" : "2706362",
											"question_type" : "4",
											"question_channel_type" : "28",
											"question_status" : "2",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "2681480",
											"is_objective" : "1",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "",
											"grade_id" : "7",
											"question_source" : "2015-2016学年河北省唐山市滦县七年级（上）期末生物试卷",
											"mode" : "1",
											"kid_num" : "2",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "光合作用需要的水分、无机盐运输到叶肉细胞是通过[<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />]<input type=\"text\" placeholder=\"2\" ms-duplex-string =\"child.myanswer[2]\" class=\"cke_questions_blankInput\" />实现的．",
											"options" : "",
											"knowledge" : null,
											"category" : null,
											"done" : false,
											"myanswer" : {
												"1" : "",
												"2" : ""
											},
											"sort2" : 3
										},
										{
											"question_id" : "2706363",
											"question_type" : "4",
											"question_channel_type" : "28",
											"question_status" : "2",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "2681480",
											"is_objective" : "1",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "",
											"grade_id" : "7",
											"question_source" : "2015-2016学年河北省唐山市滦县七年级（上）期末生物试卷",
											"mode" : "1",
											"kid_num" : "2",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "图中[⑥]<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />  ， 由半月形的<input type=\"text\" placeholder=\"2\" ms-duplex-string =\"child.myanswer[2]\" class=\"cke_questions_blankInput\" />组成．",
											"options" : "",
											"knowledge" : null,
											"category" : null,
											"done" : false,
											"myanswer" : {
												"1" : "",
												"2" : ""
											},
											"sort2" : 4
										} ],
								"extra_file" : "",
								"question_text" : "某同学在做“观察叶片的结构”的实验时所看到的菠菜叶片横切面如图，请据图分析回答：<br/><img data-cke-saved-src=\"http://tikupic.21cnjy.com/2f/eb/2febf4d1978c84e9a78e455450ebb106.png\" src=\"http://tikupic.21cnjy.com/2f/eb/2febf4d1978c84e9a78e455450ebb106.png\" alt=\"\" v:shapes=\"_x0000_i1043\" height=\"158\" width=\"243\">",
								"options" : "{\"A\":\"\"}",
								"knowledge" : "http://webshot.zujuan.com/q/d6/28/786864fe201e28b5b0bc4a744eeb_2681480kn.png?hash=6bdf221eeff48e9c116cb25f21e68412&sign=e6e046fbfcd1ff8355613c0cdd7a136d&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "11",
									"subScore" : [ "4", "3", "2", "2" ]
								},
								"sort" : 26,
								"sort2" : 26,
								"is_use" : 0
							},
							{
								"question_id" : "6662749",
								"question_type" : "7",
								"question_channel_type" : "28",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "0",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "15",
								"grade_id" : "7",
								"question_source" : "山东省临沂市太平中学2017-2018学年七年级上学期生物期末考试试卷",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "724633",
								"save_num" : "8",
								"oldqid" : "0",
								"paper" : {
									"pid" : "724633",
									"title" : "山东省临沂市太平中学2017-2018学年七年级上学期生物期末考试试卷28"
								},
								"list" : [
										{
											"question_id" : "6689357",
											"question_type" : "4",
											"question_channel_type" : "28",
											"question_status" : "1",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "6662749",
											"is_objective" : "0",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "",
											"grade_id" : "7",
											"question_source" : "山东省临沂市太平中学2017-2018学年七年级上学期生物期末考试试卷",
											"mode" : "1",
											"kid_num" : "1",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "其中图A表示气孔<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />；图B表示气孔<input type=\"text\" placeholder=\"2\" ms-duplex-string =\"child.myanswer[2]\" class=\"cke_questions_blankInput\" />。",
											"options" : "",
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
											"question_id" : "6689359",
											"question_type" : "4",
											"question_channel_type" : "28",
											"question_status" : "1",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "6662749",
											"is_objective" : "0",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "",
											"grade_id" : "7",
											"question_source" : "山东省临沂市太平中学2017-2018学年七年级上学期生物期末考试试卷",
											"mode" : "1",
											"kid_num" : "1",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "图中①是<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />  ， 呈半月形；②是<input type=\"text\" placeholder=\"2\" ms-duplex-string =\"child.myanswer[2]\" class=\"cke_questions_blankInput\" />  ， 无色透明，<input type=\"text\" placeholder=\"3\" ms-duplex-string =\"child.myanswer[3]\" class=\"cke_questions_blankInput\" />（选填“有”或“无”）叶绿体。",
											"options" : "",
											"knowledge" : null,
											"category" : null,
											"done" : false,
											"myanswer" : {
												"1" : "",
												"2" : "",
												"3" : ""
											},
											"sort2" : 2
										},
										{
											"question_id" : "6689361",
											"question_type" : "4",
											"question_channel_type" : "28",
											"question_status" : "1",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "6662749",
											"is_objective" : "0",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "",
											"grade_id" : "7",
											"question_source" : "山东省临沂市太平中学2017-2018学年七年级上学期生物期末考试试卷",
											"mode" : "1",
											"kid_num" : "1",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "气孔能够张开和闭合主要是由<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />调节的，气孔既是植物<input type=\"text\" placeholder=\"2\" ms-duplex-string =\"child.myanswer[2]\" class=\"cke_questions_blankInput\" />的“门户”，又是<input type=\"text\" placeholder=\"3\" ms-duplex-string =\"child.myanswer[3]\" class=\"cke_questions_blankInput\" />的“窗口”。",
											"options" : "",
											"knowledge" : null,
											"category" : null,
											"done" : false,
											"myanswer" : {
												"1" : "",
												"2" : "",
												"3" : ""
											},
											"sort2" : 3
										},
										{
											"question_id" : "6689363",
											"question_type" : "4",
											"question_channel_type" : "28",
											"question_status" : "1",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "6662749",
											"is_objective" : "0",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "",
											"grade_id" : "7",
											"question_source" : "山东省临沂市太平中学2017-2018学年七年级上学期生物期末考试试卷",
											"mode" : "1",
											"kid_num" : "1",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "通常情况下，白天太阳升起，气孔<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />  ， 为叶片制造有机物提供<input type=\"text\" placeholder=\"2\" ms-duplex-string =\"child.myanswer[2]\" class=\"cke_questions_blankInput\" /> ． ",
											"options" : "",
											"knowledge" : null,
											"category" : null,
											"done" : false,
											"myanswer" : {
												"1" : "",
												"2" : ""
											},
											"sort2" : 4
										} ],
								"extra_file" : "",
								"question_text" : "观察图并回答问题．<br/><img data-cke-saved-src=\"http://tikupic.21cnjy.com/e5/4d/e54d47281a65accdd1c14cb7de1dd068.png\" src=\"http://tikupic.21cnjy.com/e5/4d/e54d47281a65accdd1c14cb7de1dd068.png\" alt=\"图片_x0020_18\" width=\"347\" height=\"148\">",
								"options" : "[]",
								"knowledge" : "http://webshot.zujuan.com/q/9c/fb/085f6d5f879bf60fcd1983e84853_6662749kn.png?hash=b4ee62ab9f3a965d5c24c569985c1ba3&sign=d5d204c7ebc69d35b1085ade8c40b532&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "10",
									"subScore" : [ "2", "3", "3", "2" ]
								},
								"sort" : 30,
								"sort2" : 27,
								"is_use" : 0
							},
							{
								"question_id" : "2971052",
								"question_type" : "7",
								"question_channel_type" : "28",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "1",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "23",
								"grade_id" : "7",
								"question_source" : "2015-2016学年四川省广安市华蓥市高兴中学七年级（上）月考生物试卷（三）",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "77967",
								"save_num" : "4",
								"oldqid" : "0",
								"paper" : {
									"pid" : "77967",
									"title" : "2015-2016学年四川省广安市华蓥市高兴中学七年级上学期月考生物试卷（三）"
								},
								"list" : [
										{
											"question_id" : "2992200",
											"question_type" : "4",
											"question_channel_type" : "28",
											"question_status" : "1",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "2971052",
											"is_objective" : "1",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "",
											"grade_id" : "7",
											"question_source" : "2015-2016学年四川省广安市华蓥市高兴中学七年级（上）月考生物试卷（三）",
											"mode" : "1",
											"kid_num" : "1",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "A、B两个装置中，能证明塑料袋壁上的水珠是由植物体散失的是<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />装置．",
											"options" : "",
											"knowledge" : null,
											"category" : null,
											"done" : false,
											"myanswer" : {
												"1" : ""
											},
											"sort2" : 1
										},
										{
											"question_id" : "2992201",
											"question_type" : "4",
											"question_channel_type" : "28",
											"question_status" : "1",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "2971052",
											"is_objective" : "1",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "",
											"grade_id" : "7",
											"question_source" : "2015-2016学年四川省广安市华蓥市高兴中学七年级（上）月考生物试卷（三）",
											"mode" : "1",
											"kid_num" : "1",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "C、D两个装置中，塑料袋壁上的水珠较多的是<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />装置",
											"options" : "",
											"knowledge" : null,
											"category" : null,
											"done" : false,
											"myanswer" : {
												"1" : ""
											},
											"sort2" : 2
										},
										{
											"question_id" : "2992202",
											"question_type" : "4",
											"question_channel_type" : "28",
											"question_status" : "1",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "2971052",
											"is_objective" : "1",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "",
											"grade_id" : "7",
											"question_source" : "2015-2016学年四川省广安市华蓥市高兴中学七年级（上）月考生物试卷（三）",
											"mode" : "1",
											"kid_num" : "1",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "通过这组实验可以得出结论：<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />是蒸腾 作用的主要器官．植物蒸腾作用散失大量水分，因此大面积植树造林可以<input type=\"text\" placeholder=\"2\" ms-duplex-string =\"child.myanswer[2]\" class=\"cke_questions_blankInput\" />（填“提高”或“降低”）大气湿度．",
											"options" : "",
											"knowledge" : null,
											"category" : null,
											"done" : false,
											"myanswer" : {
												"1" : "",
												"2" : ""
											},
											"sort2" : 3
										} ],
								"extra_file" : "",
								"question_text" : "如图是研究植物散失水分的四个实验装置，将A、B、C、D实验装置在阳光下照射2小时．请分析回答：<br/><img data-cke-saved-src=\"http://tikupic.21cnjy.com/61/5a/615a08bc68e483c10880d7c69bc1e66d.png\" src=\"http://tikupic.21cnjy.com/61/5a/615a08bc68e483c10880d7c69bc1e66d.png\" alt=\"\" v:shapes=\"_x0000_i1039\" width=\"443\" height=\"139\">",
								"options" : "{\"A\":\"\"}",
								"knowledge" : "http://webshot.zujuan.com/q/9a/b3/8607149e98deb88a37ae82efc793_2971052kn.png?hash=165fc11fd153b3c979519117cd3067e0&sign=22661f4d58528d7f0379bdc8df310c7f&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "4",
									"subScore" : [ "1", "1", "2" ]
								},
								"sort" : 34,
								"sort2" : 28,
								"is_use" : 0
							},
							{
								"question_id" : "4460881",
								"question_type" : "7",
								"question_channel_type" : "28",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "0",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "0",
								"grade_id" : "7",
								"question_source" : "绿色植物维持生物圈中的碳-氧平衡",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "236255",
								"save_num" : "10",
								"oldqid" : "0",
								"paper" : null,
								"list" : [
										{
											"question_id" : "4460883",
											"question_type" : "4",
											"question_channel_type" : "4",
											"question_status" : "0",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "4460881",
											"is_objective" : "0",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "0",
											"grade_id" : "7",
											"question_source" : "绿色植物维持生物圈中的碳-氧平衡",
											"mode" : "3",
											"kid_num" : "0",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "生物圈中氧气的主要来源是植物的<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />；．",
											"options" : "{\"A\":\"光合作用\"}",
											"knowledge" : null,
											"category" : null,
											"done" : false,
											"myanswer" : {
												"1" : ""
											},
											"sort2" : 1
										},
										{
											"question_id" : "4460885",
											"question_type" : "4",
											"question_channel_type" : "4",
											"question_status" : "0",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "4460881",
											"is_objective" : "0",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "0",
											"grade_id" : "7",
											"question_source" : "绿色植物维持生物圈中的碳-氧平衡",
											"mode" : "3",
											"kid_num" : "0",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "生物圈中二氧化碳主要来源是<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />  ， 植物进行光合作用的原料是<input type=\"text\" placeholder=\"2\" ms-duplex-string =\"child.myanswer[2]\" class=\"cke_questions_blankInput\" />  ， 产物是<input type=\"text\" placeholder=\"3\" ms-duplex-string =\"child.myanswer[3]\" class=\"cke_questions_blankInput\" />  ， 条件是<input type=\"text\" placeholder=\"4\" ms-duplex-string =\"child.myanswer[4]\" class=\"cke_questions_blankInput\" /> ． ",
											"options" : "{\"A\":\"呼吸作用\",\"B\":\"二氧化碳\",\"C\":\"氧气\",\"D\":\"光\"}",
											"knowledge" : null,
											"category" : null,
											"done" : false,
											"myanswer" : {
												"1" : "",
												"2" : "",
												"3" : "",
												"4" : ""
											},
											"sort2" : 2
										},
										{
											"question_id" : "4460887",
											"question_type" : "4",
											"question_channel_type" : "4",
											"question_status" : "0",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "4460881",
											"is_objective" : "0",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "0",
											"grade_id" : "7",
											"question_source" : "绿色植物维持生物圈中的碳-氧平衡",
											"mode" : "3",
											"kid_num" : "0",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "生物通过<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />将有机物分解，细菌等微生物通过<input type=\"text\" placeholder=\"2\" ms-duplex-string =\"child.myanswer[2]\" class=\"cke_questions_blankInput\" />作用将动植物尸体及腐烂物质分解，释放出的二氧化碳进入大气．如此生生不息，构成了大气中的<input type=\"text\" placeholder=\"3\" ms-duplex-string =\"child.myanswer[3]\" class=\"cke_questions_blankInput\" />的循环，维持了生态系统中的碳氧平衡．",
											"options" : "{\"A\":\"呼吸作用\",\"B\":\"分解\",\"C\":\"碳\"}",
											"knowledge" : null,
											"category" : null,
											"done" : false,
											"myanswer" : {
												"1" : "",
												"2" : "",
												"3" : ""
											},
											"sort2" : 3
										} ],
								"extra_file" : "",
								"question_text" : "如图是绿色植物在生物圈二氧化碳和氧气中的作用   <img width=421 height=209 src=\"http://tikupic.21cnjy.com/6d/f8/6df8485e85a6015aabf0dd3ac20876d3.png\" alt=\"\" v:shapes=\"_x0000_i1029\">",
								"options" : "{\"A\":\"\"}",
								"knowledge" : "http://webshot.zujuan.com/q/3c/6d/f3896a3a1b8a3bd507b52882f713_4460881kn.png?hash=90961829d1fbec5117f9f5731b69548d&sign=ad40a0139923c42244663532a5a16aec&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "8",
									"subScore" : [ "1", "4", "3" ]
								},
								"sort" : 37,
								"sort2" : 29,
								"is_use" : 0
							} ],
					"scores" : {
						"2681480" : {
							"score" : "11",
							"subScore" : [ "4", "3", "2", "2" ]
						},
						"2971052" : {
							"score" : "4",
							"subScore" : [ "1", "1", "2" ]
						},
						"4460881" : {
							"score" : "8",
							"subScore" : [ "1", "4", "3" ]
						},
						"6662749" : {
							"score" : "10",
							"subScore" : [ "2", "3", "3", "2" ]
						}
					}
				},
				{
					"head_title" : "实验探究题",
					"questions" : [
							{
								"question_id" : "6332503",
								"question_type" : "7",
								"question_channel_type" : "26",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "0",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "28",
								"grade_id" : "7",
								"question_source" : "2016-2017学年甘肃省武威市凉州区四校七年级上期末生物试卷",
								"mode" : "3",
								"kid_num" : "2",
								"paperid" : "619669",
								"save_num" : "6",
								"oldqid" : "0",
								"paper" : {
									"pid" : "619669",
									"title" : "甘肃省武威市凉州区四校2016-2017学年七年级上学期生物期末考试试卷"
								},
								"list" : [
										{
											"question_id" : "6403655",
											"question_type" : "4",
											"question_channel_type" : "26",
											"question_status" : "1",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "6332503",
											"is_objective" : "0",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "",
											"grade_id" : "7",
											"question_source" : "2016-2017学年甘肃省武威市凉州区四校七年级上期末生物试卷",
											"mode" : "1",
											"kid_num" : "2",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "将此装置放在黑暗环境中，小白鼠将<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />  ， 原因是<input type=\"text\" placeholder=\"2\" ms-duplex-string =\"child.myanswer[2]\" class=\"cke_questions_blankInput\" />。",
											"options" : "",
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
											"question_id" : "6403657",
											"question_type" : "4",
											"question_channel_type" : "26",
											"question_status" : "1",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "6332503",
											"is_objective" : "0",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "",
											"grade_id" : "7",
											"question_source" : "2016-2017学年甘肃省武威市凉州区四校七年级上期末生物试卷",
											"mode" : "1",
											"kid_num" : "2",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "将此装置放置在阳光下，小白鼠将<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />。",
											"options" : "",
											"knowledge" : null,
											"category" : null,
											"done" : false,
											"myanswer" : {
												"1" : ""
											},
											"sort2" : 2
										},
										{
											"question_id" : "6403659",
											"question_type" : "4",
											"question_channel_type" : "26",
											"question_status" : "1",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "6332503",
											"is_objective" : "0",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "",
											"grade_id" : "7",
											"question_source" : "2016-2017学年甘肃省武威市凉州区四校七年级上期末生物试卷",
											"mode" : "1",
											"kid_num" : "2",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "在（2）中，小白鼠为绿色植物进行光合作用提供了<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />  ， 而绿色植物通过光合作用又为小白鼠进行生命活动提供了<input type=\"text\" placeholder=\"2\" ms-duplex-string =\"child.myanswer[2]\" class=\"cke_questions_blankInput\" />。",
											"options" : "",
											"knowledge" : null,
											"category" : null,
											"done" : false,
											"myanswer" : {
												"1" : "",
												"2" : ""
											},
											"sort2" : 3
										},
										{
											"question_id" : "6403661",
											"question_type" : "4",
											"question_channel_type" : "26",
											"question_status" : "1",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "6332503",
											"is_objective" : "0",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "",
											"grade_id" : "7",
											"question_source" : "2016-2017学年甘肃省武威市凉州区四校七年级上期末生物试卷",
											"mode" : "1",
											"kid_num" : "2",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "上述装置中，若取出绿色植物，小白鼠将<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />  ， 由此可见绿色植物在生物圈中的重要性。",
											"options" : "",
											"knowledge" : null,
											"category" : null,
											"done" : false,
											"myanswer" : {
												"1" : ""
											},
											"sort2" : 4
										} ],
								"extra_file" : "",
								"question_text" : "将一盆植物和一只小白鼠一起放到一个密闭的玻璃罩中（如下图），做如下实验：<br/><img data-cke-saved-src=\"http://tikupic.21cnjy.com/2d/b8/2db8e6fff715414e1f7ec31e1e5709f1.jpg\" src=\"http://tikupic.21cnjy.com/2d/b8/2db8e6fff715414e1f7ec31e1e5709f1.jpg\" alt=\"\" v:shapes=\"图片_x0020_41\" width=\"151\" height=\"147\">",
								"options" : "[]",
								"knowledge" : "http://webshot.zujuan.com/q/c5/c5/c0ca4ffb3d81e8d74ee260c42d07_6332503kn.png?hash=1b1593a066edf628a885b779b8da313c&sign=141a61d8bed9db2cbab4b67682f8c75b&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "6",
									"subScore" : [ "2", "1", "2", "1" ]
								},
								"sort" : 40,
								"sort2" : 30,
								"is_use" : 0
							},
							{
								"question_id" : "6608869",
								"question_type" : "7",
								"question_channel_type" : "26",
								"question_status" : "2",
								"chid" : "11",
								"xd" : "2",
								"parent_id" : "0",
								"is_objective" : "0",
								"difficult_index" : "3",
								"master_level" : "2",
								"exam_type" : "2",
								"evaluated" : "0",
								"region_ids" : "22",
								"grade_id" : "8",
								"question_source" : "重庆市江津区2017-2018学年八年级上学期生物期中考试试卷",
								"mode" : "3",
								"kid_num" : "1",
								"paperid" : "701583",
								"save_num" : "16",
								"oldqid" : "0",
								"paper" : {
									"pid" : "701583",
									"title" : "重庆市江津区2017-2018学年八年级上学期生物期中考试试卷"
								},
								"list" : [
										{
											"question_id" : "6641925",
											"question_type" : "4",
											"question_channel_type" : "26",
											"question_status" : "1",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "6608869",
											"is_objective" : "0",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "",
											"grade_id" : "8",
											"question_source" : "重庆市江津区2017-2018学年八年级上学期生物期中考试试卷",
											"mode" : "1",
											"kid_num" : "1",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "该过程中正确的操作顺序是：<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />",
											"options" : "",
											"knowledge" : null,
											"category" : null,
											"done" : false,
											"myanswer" : {
												"1" : ""
											},
											"sort2" : 1
										},
										{
											"question_id" : "6641927",
											"question_type" : "4",
											"question_channel_type" : "26",
											"question_status" : "1",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "6608869",
											"is_objective" : "0",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "",
											"grade_id" : "8",
											"question_source" : "重庆市江津区2017-2018学年八年级上学期生物期中考试试卷",
											"mode" : "1",
											"kid_num" : "1",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "在B操作中的目的是设置<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />,实验变量是 <input type=\"text\" placeholder=\"2\" ms-duplex-string =\"child.myanswer[2]\" class=\"cke_questions_blankInput\" />。&nbsp;&nbsp;&nbsp;",
											"options" : "",
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
											"question_id" : "6641929",
											"question_type" : "4",
											"question_channel_type" : "26",
											"question_status" : "1",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "6608869",
											"is_objective" : "0",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "",
											"grade_id" : "8",
											"question_source" : "重庆市江津区2017-2018学年八年级上学期生物期中考试试卷",
											"mode" : "1",
											"kid_num" : "1",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "在A操作的目的是<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />,图F中滴加的液体是<input type=\"text\" placeholder=\"2\" ms-duplex-string =\"child.myanswer[2]\" class=\"cke_questions_blankInput\" />。 图G小烧杯中的液体是<input type=\"text\" placeholder=\"3\" ms-duplex-string =\"child.myanswer[3]\" class=\"cke_questions_blankInput\" />,其作用是<input type=\"text\" placeholder=\"4\" ms-duplex-string =\"child.myanswer[4]\" class=\"cke_questions_blankInput\" />.",
											"options" : "",
											"knowledge" : null,
											"category" : null,
											"done" : false,
											"myanswer" : {
												"1" : "",
												"2" : "",
												"3" : "",
												"4" : ""
											},
											"sort2" : 3
										},
										{
											"question_id" : "6641931",
											"question_type" : "4",
											"question_channel_type" : "26",
											"question_status" : "1",
											"chid" : "11",
											"xd" : "2",
											"parent_id" : "6608869",
											"is_objective" : "0",
											"difficult_index" : "3",
											"master_level" : "2",
											"exam_type" : "2",
											"evaluated" : "0",
											"region_ids" : "",
											"grade_id" : "8",
											"question_source" : "重庆市江津区2017-2018学年八年级上学期生物期中考试试卷",
											"mode" : "1",
											"kid_num" : "1",
											"paperid" : null,
											"save_num" : "0",
											"oldqid" : "0",
											"paper" : null,
											"extra_file" : "",
											"question_text" : "在实验中E看到的现象是<input type=\"text\" placeholder=\"1\" ms-duplex-string =\"child.myanswer[1]\" class=\"cke_questions_blankInput\" />,这说明<input type=\"text\" placeholder=\"2\" ms-duplex-string =\"child.myanswer[2]\" class=\"cke_questions_blankInput\" />是光合作用的产物。",
											"options" : "",
											"knowledge" : null,
											"category" : null,
											"done" : false,
											"myanswer" : {
												"1" : "",
												"2" : ""
											},
											"sort2" : 4
										} ],
								"extra_file" : "",
								"question_text" : "下图是某同学设计验证绿叶光合作用产生淀粉的示意图，据图回答。<br/><img data-cke-saved-src=\"http://tikupic.21cnjy.com/b2/2a/b22a0d6e8d7a3872dd865a438f5b1ab3.png\" src=\"http://tikupic.21cnjy.com/b2/2a/b22a0d6e8d7a3872dd865a438f5b1ab3.png\" v:shapes=\"图片_x0020_2\" width=\"438\" height=\"280\">",
								"options" : "[]",
								"knowledge" : "http://webshot.zujuan.com/q/43/b1/e53866504fa951b7b276776e810c_6608869kn.png?hash=276c02826e31c2169516f6d8fe466483&sign=e7e75bf73c19074e658acab0d39629a2&from=2",
								"category" : null,
								"is_collect" : false,
								"done" : false,
								"myanswer" : "",
								"score" : {
									"score" : "9",
									"subScore" : [ "1", "2", "4", "2" ]
								},
								"sort" : 44,
								"sort2" : 31,
								"is_use" : 0
							} ],
					"scores" : {
						"6332503" : {
							"score" : "6",
							"subScore" : [ "2", "1", "2", "1" ]
						},
						"6608869" : {
							"score" : "9",
							"subScore" : [ "1", "2", "4", "2" ]
						}
					}
				} ];
		(function(_exports) {

			var Evt = new OT2.Event();
			var basket = OT2.Basket($('#J_Basket')); // 实例化试题篮
			var Paper = (function() {
				//只检查绑定不执行渲染的paper对象
				var model = [];
				var $el = $('#J_PaperBody');
				var init = function(data) {
					model = data;
					render();
					$('.cke_questions_blankInput').replaceWith(
							'<span class="q-blank">&nbsp;</span>');
				};
				var idList = [];
				var render = function() {
					_
							.each(
									model,
									function(item, k) {
										_
												.each(
														item.questions,
														function(q, i) {
															var model = {
																id : q.question_id,
																type : PARAMS.question_types[q.question_channel_type],
																xd : q.xd,
																xk : q.chid,
																index : i
															};
															idList
																	.push(q.question_id);
															_.extend(q, model);
															if (_
																	.contains(
																			basket.model,
																			q.id)
																	&& q.parent_id == '0')
																q.added = true;
															var question = new OT2.Question(
																	q, basket);
															var queryS = "li[data-qid='"
																	+ q.id
																	+ "']";
															var $e0 = $(queryS);
															question
																	.render($e0);
															// question.rendered_analyticbox = true;  // php直接渲染了html !!!
															if (_
																	.contains(
																			basket.model,
																			question.model.id))
																question
																		.addToBasket();
															else
																question
																		.removeFromBasket();
															Evt
																	.subscribe(
																			'question:addAll',
																			function() {
																				if (!question.model.added)
																					question
																							.addOrRemove();
																			});
															Evt
																	.subscribe(
																			'question:addAll:true',
																			function() {
																				question
																						.addOrRemove(true);
																			});

														});
									});
					basket.intervalPublish('question:width', 30);
				};

				// 添加所有试题到试题篮
				var addAllToBasket = function() {
					if (getCurBasketQids().length == 0) {
						Evt.publish('question:addAll');
						return true;
					}

					var self = this;
					var d = dialog({
						title : '温馨提示',
						content : '是否需要清空试题篮中的试题？',
						padding : 20,
						okValue : '清空',
						button : [ {
							value : '不清空',
							callback : function() {
								Evt.publish('question:addAll');
							}
						}, {
							value : '清空',
							autofocus : true,
							callback : function() {
								deleteQuestionByXk(OT2.xd_chid.chid);
								Evt.publish('question:addAll:true');
							}
						} ]

					});

					d.showModal();

				};

				// 获取当前试题篮学段学科的试题ID
				var getCurBasketQids = function() {
					var qids = [];
					_.each(basket.cacheObj, function(item) {
						if (item.xd == OT2.xd_chid.xd
								&& item.xk == OT2.xd_chid.chid) {
							qids.push(item.id);
						}
					});
					return qids;

				};
				// 按学科删除试题
				var deleteQuestionByXk = function(_xk) {
					if (typeof _xk === 'undefined')
						return false;
					var qtypes = {};
					_.each(basket.cacheObj, function(item, k) {
						if (item.xk == _xk) {
							basket.publish('remove:byid', item.id);
							delete basket.cacheObj[item.id];
							if (!qtypes[item.type])
								basket.deleteQtypeWithXdXk(item.type);
							qtypes[item.type] = 1;
						}
					});
					basket.serialize();
				};

				return {
					init : init,
					addAllToBasket : addAllToBasket,
					idList : idList,
					deleteQuestionByXk : deleteQuestionByXk
				}
			})();

			/**
			 * 答案与解析 显示切换
			 * 2017.2.17 lgh
			 */
			(function($checkbox, $body) {
				var switchVisible = function(checked) {
					$checkbox.prop('checked', checked);
					$checkbox[checked ? 'addClass' : 'removeClass']('checked');
					// $body.find('.analyticbox, .analyticbox-brick')[ checked ? 'show' : 'hide']();
					basket.publish('show-analyticbox', checked);
				};
				$checkbox.on('click', function() {
					var checked = !$checkbox.prop('checked');
					switchVisible(checked);
				});
				switchVisible(false); // 默认关闭显示答案与解析
			})($('#j-switch-analyticbox'), $('#J_PaperBody'));

			_exports.Paper = Paper;
			_exports.basket = basket;

		})(window);
		Paper.init(MockDataTestPaper);
	</script>
	<div style="position: absolute; display: none;"></div>
	<div id="Login_Pal" style="display: none">

		<link rel="stylesheet" href="./static/css/login-pop.css">
		<div class="reg-mask"></div>
		<div class="reg-form">
			<a class="btn-close J_CloseForm">x</a>
			<div class="reg__title">
				<img src="./static/images/logo_zujuan.jpg" alt="组卷网" title="组卷网">
			</div>
			<!--pc账号密码登录-->
			<form id="J_LoginForm" class="reg-form-detail J_LoginTabContent hide"
				action="http://www.zujuan.com/login" method="post">
				<input type="hidden" name="_csrf"
					value="vPakEbXQWccP6zwqaEuktbZqhB_Xpvn8duqG8naHEKHxldxT3eQDs3m5ZEQhCZT3hwzWVo-Ws88zibSzRLd27A==">
				<div class="reg-form-input">
					<label for="account" class="placeholder">请输入手机号码/邮箱</label> <input
						type="text" name="LoginForm[username]" id="account"
						placeholder="请输入手机号码/邮箱">
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
						<a href="http://passport.zujuan.com/site/password-find"
							target="_blank">忘记密码？</a>
					</div>
				</div>
				<div class="reg-btn">
					<button type="submit">登录</button>
				</div>
			</form>
			<!--扫码登录-->
			<div class="login-method--weixin J_LoginTabContent">
				<div class="title">请使用微信扫描二维码登录</div>
				<div class="tishi">（若二维码失效请点击图片刷新）</div>
				<div class="waiting panelContent">
					<div class="wrp_code">
						<div class="wxcode-loading">二维码加载中...</div>
						<img class="qrcode lightBorder normal J_QrCode">
					</div>
					<!-- <div class="info">
                    <div class="status status_browser">
                        <p>请使用微信扫描二维码登录</p>
                        <p>“21教育网用户中心”</p>
                    </div>
                </div> -->
				</div>
			</div>

			<div class="login-others">
				<div class="oth-login">
					<p>选择其他方式登录</p>
				</div>
				<div class="oth-qq">
					<a class="weixin-btn" style="display: none" href="javascript:;"></a>
					<a class="qq-btn"
						href="http://passport.zujuan.com/connect/qq-qrcode?jump_url=http%3A%2F%2Fwww.zujuan.com%2Fpaper%2Fview-782410.shtml"></a>
				</div>
				<div class="register__text">
					使用手机号注册？请点击这里！<a href="http://passport.zujuan.com/register">立即注册</a>
				</div>
			</div>
			<!--右上角登录方式切换-->
			<div class="login-method__tab J_LoginTab">
				<ul>
					<li class="login-method__tab--wx tab" data-type="1"
						style="display: none;">
						<div class="img">微信扫码</div>
						<p class="tip">
							<i></i>扫码登录在这里<b></b>
						</p>
					</li>
					<li class="login-method__tab--ac tab" data-type="0">
						<div class="img">输入账号</div>
						<p class="tip">
							<i></i>密码登录在这里<b></b>
						</p>
					</li>
				</ul>
			</div>
		</div>
	</div>
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