<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0021)http://www.yitiku.cn/ -->
<html xmlns="" xmlns:wb="">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width =1080,initial-scale=0.9, user-scalable=yes">
<meta name="Keywords"
	content="在线测评,在线练习,在线作业,高考,中考,名校模拟,期中试卷,期末试卷,月考试卷,语文,数学,英语,物理,化学,生物,地理,历史,政治,学习卡">
<meta name="description"
	content="易题库旨在为初高中老师学生减负，为老师提供简单便捷的组卷服务，为学生提供智能测评功能。易题库拥有初高中丰富的题库资源，包含高中数学题库、高中语文题库、高中英语题库、高中物理题库、高中化学题库、高中生物题库、高中历史题库、高中政治题库、高中地理题库、高考题库、高中同步题库 、初中题库、初中数学题库、初中语文题库 初中英语题库 初中物理题库 初中化学题库 中考题库 初中同步题库。">
<meta property="wb:webmaster" content="613fc8dc16fb3215">
<link rel="canonical" href="http://www.yitiku.cn/">
<link href="${ctx }/static/css/newquesindex.css" rel="stylesheet"
	type="text/css">
<link href="${ctx }/static/css/ytkindexgb.css" rel="stylesheet"
	type="text/css">
<link href="${ctx }/static/css/indexLogin.css" rel="stylesheet">
<script src="${ctx }/static/js/jquery-1.7.1.js"></script>

<link rel="stylesheet" type="text/css" href="${ctx }/static/css/styleee.css" />
<script type="text/javascript" src="${ctx }/static/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="${ctx }/static/js/slider.js"></script>
<title>智能题库</title>
<style type="text/css">
.guideSwitch a {
	color: #333;
}

.guideSwitch a:hover {
	color: #f43c5e;
}

.bg a {
	display: block;
	width: 100%;
	height: 100%;
}
/*五一*/
.full_51 {
	width: 100%;
	height: 139px;
	background: url(../../images/questionBank/index/duanwu_bg.png) center
		top no-repeat;
	padding-top: 1px;
}
</style>
<style type="text/css">
#skygqOverlay {
	position: fixed;
	z-index: 2000;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background: black;
}

.wrap_out {
	padding: 10px;
	background: url("${ctx }/static/images/layer_bg.png") repeat scroll 0 0 transparent;
	position: fixed;
	z-index: 2001;
}

.wrap_in {
	background: #fff;
}

.wrap_bar {
	width: 100%;
	height: 32px;
}

.wrap_title {
	height: 32px;
	line-height: 32px;
	background-color: #1887e3;
}

.wrap_title span {
	position: relative;
	margin-left: 10px;
	cursor: text;
	color: #fff;
}

.wrap_body {
	display: inline-block;
	padding-left: 11px;
}

.wrap_close {
	position: absolute;
	right: 20px;
	top: 18px;
	width: 18px;
	height: 17px;
	text-indent: -10em;
	overflow: hidden;
	background: url("${ctx }/static/images/wrap_close.png") no-repeat 0px 2px;
	cursor: pointer;
}

.wrap_close:hover {
	text-decoration: none;
	color: #f30;
}

.submit_btn {
	display: inline-block;
	padding: 3px 12px 1.99px;
	background: #486aaa;
	border: 1px solid;
	border-color: #a0b3d6 #34538b #34538b #a0b3d6;
	color: #f3f3f3;
	line-height: 16px;
	cursor: pointer;
	overflow: visible;
}

.submit_btn:hover {
	text-decoration: none;
	color: #ffffff;
}

.cancel_btn {
	display: inline-block;
	padding: 3px 12px 1.99px;
	background: #eee;
	border: 1px solid;
	border-color: #f0f0f0 #bbb #bbb #f0f0f0;
	color: #333;
	line-height: 16px;
	cursor: pointer;
	overflow: visible;
}
</style>
<script src="${ctx }/static/js/share.js"></script>
<style type="text/css">
#skygqOverlay {
	position: fixed;
	z-index: 2000;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background: black;
}

.wrap_out {
	padding: 10px;
	background: url("${ctx }/static/images/layer_bg.png") repeat scroll 0 0 transparent;
	position: fixed;
	z-index: 2001;
}

.wrap_in {
	background: #fff;
}

.wrap_bar {
	width: 100%;
	height: 32px;
}

.wrap_title {
	height: 32px;
	line-height: 32px;
	background-color: #1887e3;
}

.wrap_title span {
	position: relative;
	margin-left: 10px;
	cursor: text;
	color: #fff;
}

.wrap_body {
	display: inline-block;
	padding-left: 11px;
}

.wrap_close {
	position: absolute;
	right: 20px;
	top: 18px;
	width: 18px;
	height: 17px;
	text-indent: -10em;
	overflow: hidden;
	background: url("${ctx }/static/images/wrap_close.png") no-repeat 0px 2px;
	cursor: pointer;
}

.wrap_close:hover {
	text-decoration: none;
	color: #f30;
}

.submit_btn {
	display: inline-block;
	padding: 3px 12px 1.99px;
	background: #486aaa;
	border: 1px solid;
	border-color: #a0b3d6 #34538b #34538b #a0b3d6;
	color: #f3f3f3;
	line-height: 16px;
	cursor: pointer;
	overflow: visible;
}

.submit_btn:hover {
	text-decoration: none;
	color: #ffffff;
}

.cancel_btn {
	display: inline-block;
	padding: 3px 12px 1.99px;
	background: #eee;
	border: 1px solid;
	border-color: #f0f0f0 #bbb #bbb #f0f0f0;
	color: #333;
	line-height: 16px;
	cursor: pointer;
	overflow: visible;
}
</style>
<link rel="stylesheet" href="static/css/slide_share.css">
</head>
<body>
	<div class="full full01">
		<div class="box1000">
			<div class="fl">
				<a href="http://www.yitiku.cn/chongzhi/" class="recharge"
					id="buyVip">产品购买</a>
			</div>
			<div class="fr">
				<!--div class="sinaCout"><wb:follow-button uid="3621865884" type="red_2" width="136" height="24" ></wb:follow-button></div-->
				<div class="loginAfter">
					<span>欢迎您，</span><a href="">${list[0]}</a><b
						id="loginAfterbtn"></b>
					<div id="loginAfterContent">
						<ul>
							<li><a href="">我的主页</a></li>
							<li><a href="">账号设置</a></li>
							<li><a href="">退出登录</a></li>
						</ul>
					</div>
				</div>
				<div class="topLogin">
					<a href="" target="_blank" class="pl"
						rel="nofollow" style="color: #f43c5e;">使用帮助</a>
				</div>
				<!--<div class="topLogin"><a href="/gengxin/" target="_blank" class="pl" >每日更新</a></div>-->
				<div class="topLogin guideSwitch">
					<a href="javascript:;" class="pl">新手引导</a>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<div class="full full02 index_navBg">
		<div class="box1000 topNav">
			<div class="logonew" style="position: relative; top: 8px;">
				<div class="logo fl">
					<a href=""><img
						src="${ctx }/static/images/admin_logo1.png" id="logo_src" alt="易题库"
						width="536"></a>
				</div>
				<div class="logo call">
					<p class="call-tel">4008-555-865</p>
					<p class="call-txt">
						<em>9:00-18:00</em><span>周一至周五</span>
					</p>
					<!--<img src="/images/questionBank/index/call.png" id="logo_call" alt="联系我们" />-->
				</div>
			</div>
			<div style="clear: both"></div>
			<c:set var="name" scope="session" value="${list[0] }"></c:set>
			<div class="nav">
				<ul>
					<li><a href="" rel="nofollow">首页</a></li>
					<li class="subjectNav subjectNav02"><a href="${ctx }/showsome"
						style="cursor: default;">试题库</a>
					<li class="subjectNav subjectNav01"><a href="javascript:;"
						style="cursor: default;">组卷</a>
					<div>
							<a href="${ctx }/Choice/showAll" rel="nofollow">手工组卷</a><a
								href="" rel="nofollow">智能组卷</a>
						</div></li>
					<li><a class="onlineceping"
						href="" rel="nofollow">在线测评</a></li>
					<li class="subjectNav subjectNav03"><a href="javascript:;"
						rel="nofollow" style="cursor: default;">产品介绍</a>
					<div>
							<a href="" rel="nofollow">个人版</a><a
								href="" rel="nofollow">校方版</a><a
								href="" rel="nofollow">学习卡</a>
						</div></li>
					<li class="subjectNav subjectNav04"><a href="javascript:;"
						rel="nofollow" style="cursor: default;">产品购买</a>
					<div>
							<a href="" rel="nofollow">VIP</a><a
								href="" rel="nofollow">组卷包</a><a
								href="" rel="nofollow">学习卡</a>
						</div></li>
					<div class="clear"></div>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div style="display: none;">
		<div id="mbquesContent999" class="mbPaneltxt">
			<div class="mbquesTxt">
				<form action="" method="post" name="">
					<ul class="mt">
						<li><h3>所选科目与当前科目不相符，是否需要清空试题？</h3>
							<a id="abc1234" href="javascript:uuu9($(this))" nnn=""
							class="btn btn2" style="margin: 10px 20px 0px 80px;">是</a><a
							id="abcd123" href="http://www.yitiku.cn/" class="btn btn4 mt">否</a></li>
					</ul>
				</form>
			</div>
		</div>
	</div>
	<script>/*收藏代码*/
function AddFavorite(sURL, sTitle)
{
    try
    {
        window.external.addFavorite(sURL, sTitle);
    }
    catch (e)
    {
        try
        {
            window.sidebar.addPanel(sTitle, sURL, "");
        }
        catch (e)
        {
            alert("加入收藏失败，请使用Ctrl+D进行添加");
        }
    }
}



/**/
/**/
/**/
function abx(url,sub_id){
	//alert(url);
	//alert(sub_id);
	$.ajax({
        type: "POST",
        url: "/Tiku/ExamDiy/ajax_bar_2",
        dataType: "html",
        data: {sub_id:sub_id},
        success: function(data){
			if(data=='2'){
				$("#mbquesContent999").find("#abcd123").attr("href",url);
				$("#mbquesContent999").find("#abc1234").attr("nnn",url);
				showTipsWindown("提示", 'mbquesContent999', 300, 90);
			}
			else{
				location.href=url;
			}
        }
    });
}
function uuu9(thi){
	var url = $('#abc1234').attr('nnn');
	$.ajax({
        type: "POST",
        url: "/Tiku/ExamDiyfk/clear_qk",
        dataType: "html",
        success: function(data){
			location.href=url;
        }
    });
}

$(function(){

    $.ajax({
        type: "POST",
        url: "/Tiku/Public/get_ajax_user_name",
        dataType: "html",
        success: function(data){
            $("div.fr .topLogin").eq(0).before(data);
        }
    });

    //daohang
});


function sgfagfds(){
	//showTipsWindown("提示", 'userLoginContent', 300, 90);
	$("#mbloginContent22").parent().show();
}





  //chrome浏览器判断
  var isChrome;
  if(isChrome == window.google && window.chrome){
    $('.fullChrome').hide();
  }
  else{
    $('.fullChrome').show();
  }
  $('.closeTips').click(function() {
    $(this).parent('.chromeTips').parent('.fullChrome').animate({'height':'0'},500);
    $(this).parent('.chromeTips').hide();
  });



</script>
		

		<div id="demo01" class="flexslider" style="display: block;">
			<ul class="slides">
				<li><div class="img"><img src="${ctx }/static/images/ad_home.jpg" height="450" width="760" alt="" /></div></li>
				<li><div class="img"><img src="${ctx }/static/images/ad_yuetu.jpg" height="450" width="760" alt="" /></div></li>
				<li><div class="img"><img src="${ctx }/static/images/ad_nba.jpg" height="450" width="760" alt="" /></div></li>
				<li><div class="img"><img src="${ctx }/static/images/ad_stock.jpg" height="450" width="760" alt="" /></div></li>
				<li><div class="img"><img src="${ctx }/static/images/ad_auto.jpg" height="450" width="760" alt="" /></div></li>
			</ul>
		</div>
		<script type="text/javascript">
			$(function(){
			
				$('#demo01').flexslider({
					animation: "slide",
					direction:"horizontal",
					easing:"swing"
				});
				
				$('#demo02').flexslider({
					animation: "slide",
					direction:"vertical",
					easing:"swing"
				});
				
			});
			</script>
		
		
		<div class="userLoginBox loginTxt" style="display: left;margin-top: 100px;margin-left: 220px;">
			<h4>
				欢迎您，<a href="">${list[0]}</a>&nbsp;老师
				<c:set var="nickName" scope="session" value="${list[0]}" />
			</h4>
			<ul>
				<li><a class="btn btn2" target="_blank"
					href="${ctx }/selfcenter/mytest.jsp">进入我的主页</a></li>
				<li class="col333">
				<a href="${ctx }/changepage?name=${sessionScope.userid }">修改密码</a>
				
				<!--?php if($_SESSION["type"]==3):?-->
					<a target="_blank"
					href="" class="join"
					style="margin-left: 112px;">激活学习卡</a>
				<!--?php endif;?--></li>
				<li class="col333"><a target="_blank"
					href="">使用帮助</a></li>
				<li class="col333"><a target="_blank"
					href="">校园解决方案</a>／<a target="_blank"
					href="" rel="nofollow">留言反馈</a></li>
			</ul>
			<div class="clear"></div>
		</div>
	</div>
	<!--<div class="box1000 "><div class="time_line"><ul><li>高三零模</li><li class="seth"><a href="/zhuanti/2015gsym" target="_blank">高三一模</a></li><li class="seth"><a href="/zhuanti/2015gsym" target="_blank">高三二模</a></li><li class="seth" style="margin-left:180px;"><a href="/zhuanti/2015gkzt/" target="_blank">全国高考</a></li><li class="last seth"><a href="/zhuanti/2015zkzt/" target="_blank">全国中考</a></li></ul><div class="zhezhao_blue"></div><a class='cls_btn' href="javascript:;"></a></div></div>-->
	<div class="box1000 lastestsj lastest guideStep">
		<div class="left">
			<div class="bt">
				<strong>最新高中试卷</strong>
				<div class="tabmenu">
					<ul>
						<li><a id="tablink1" href="javascript:;" class="tabactive">高三</a></li>
						<li><a id="tablink2" href="javascript:;">高二</a></li>
						<li><a id="tablink3" href="javascript:;">高一</a></li>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
			<div
				style="border-bottom: 1px solid #e8e8e8; height: 1px; margin-bottom: 10px; margin-top: 10px;"></div>
			<div id="tabContent1" name="divNumber" class="tabdiv">
				<div class="tabqho">
					<div class="tabmenuo">
						<ul class="chuzhongNav">
							<li><a id="tablinko1" href="javascript:;" class="">语文</a></li>
							<li><a id="tablinko2" href="javascript:;" class="tabactive">数学</a></li>
							<li><a id="tablinko3" href="javascript:;" class="">英语</a></li>
							<li><a id="tablinko4" href="javascript:;" class="">化学</a></li>
							<li><a id="tablinko5" href="javascript:;" class="">物理</a></li>
							<li><a id="tablinko6" href="javascript:;" class="">生物</a></li>
							<li><a id="tablinko7" href="javascript:;" class="">历史<span
									class="subNewShijuan"></span></a></li>
							<li><a id="tablinko8" href="javascript:;" class="">地理<span
									class="subNewShijuan"></span></a></li>
							<li><a id="tablinko9" href="javascript:;" class="">政治</a></li>
						</ul>
					</div>
					<div class="clear"></div>
					<div id="tabContento1" name="divNumbero"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/yuwensj/grade/6" target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yuwensj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="${ctx }/Choice/list"
								title="2017届河北省承德实验中学高三上学期期中考试语文试卷（带解析）" target="_blank">2017届河北省承德实验中学高三上学期期中考试语文试卷（带解析）</a><span>2017-01-23</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yuwensj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30463.html"
								title="2017届广东省汕头市金山中学高三上学期期中考试语文试卷（带解析）" target="_blank">2017届广东省汕头市金山中学高三上学期期中考试语文试卷（带解析）</a><span>2017-01-20</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yuwensj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30400.html"
								title="2017届广东省汕头市金山中学高三上学期期中考试语文试卷（带解析）" target="_blank">2017届广东省汕头市金山中学高三上学期期中考试语文试卷（带解析）</a><span>2017-01-10</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yuwensj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30393.html"
								title="2017届广东省汕头市潮师高级中学高三上学期期中考试语文试卷（带解析）" target="_blank">2017届广东省汕头市潮师高级中学高三上学期期中考试语文试卷（带解析）</a><span>2017-01-09</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yuwensj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30392.html"
								title="2017届重庆市第一中学高三上学期期中考试语文试卷（带解析）" target="_blank">2017届重庆市第一中学高三上学期期中考试语文试卷（带解析）</a><span>2017-01-09</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yuwensj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30377.html"
								title="2017届湖南省浏阳一中高三上学期期中考试语文试卷（带解析）" target="_blank">2017届湖南省浏阳一中高三上学期期中考试语文试卷（带解析）</a><span>2017-01-06</span></li>
						</ul>
					</div>
					<div id="tabContento2" name="divNumbero"
						class="shijuangaozhong tabdiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/shuxuesj/grade/6" target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shuxuesj/tedian/7/grade/6"
									target="_blank">期末</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30481.html"
								title="2017年北京市东城区高三上学期期末考试理科数学试卷（带解析）" target="_blank">2017年北京市东城区高三上学期期末考试理科数学试卷（带解析）</a><span>2017-02-16</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shuxuesj/tedian/7/grade/6"
									target="_blank">期末</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30477.html"
								title="2017年北京市朝阳区高三上学期期末考试文科数学试卷（带解析）" target="_blank">2017年北京市朝阳区高三上学期期末考试文科数学试卷（带解析）</a><span>2017-02-09</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shuxuesj/tedian/7/grade/6"
									target="_blank">期末</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30476.html"
								title="2017年北京市朝阳区高三上学期期末考试理科数学试卷（带解析）" target="_blank">2017年北京市朝阳区高三上学期期末考试理科数学试卷（带解析）</a><span>2017-02-09</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shuxuesj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30359.html"
								title="2017届广东省清远市第三中学高三上学期期中考试文科数学试卷（带解析）" target="_blank">2017届广东省清远市第三中学高三上学期期中考试文科数学试卷（带解析）</a><span>2017-01-06</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shuxuesj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30353.html"
								title="2017届河北衡水中学高三上学期期中考试文科数学试卷（带解析）" target="_blank">2017届河北衡水中学高三上学期期中考试文科数学试卷（带解析）</a><span>2017-01-05</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shuxuesj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30338.html"
								title="2017届河北衡水中学高三上学期期中考试理科数学试卷（带解析）" target="_blank">2017届河北衡水中学高三上学期期中考试理科数学试卷（带解析）</a><span>2016-12-28</span></li>
						</ul>
					</div>
					<div id="tabContento3" name="divNumbero"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/yingyusj/grade/6" target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yingyusj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30391.html"
								title="2017届河北省石家庄市辛集中学高三上学期期中考试英语试卷（带解析）" target="_blank">2017届河北省石家庄市辛集中学高三上学期期中考试英语试卷（带解析）</a><span>2017-01-09</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yingyusj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30390.html"
								title="2017届河北省定州中学高三上学期期中考试英语试卷（带解析）" target="_blank">2017届河北省定州中学高三上学期期中考试英语试卷（带解析）</a><span>2017-01-09</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yingyusj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30389.html"
								title="2017届河北省崇礼县第一中学高三上学期期中考试英语试卷（带解析）" target="_blank">2017届河北省崇礼县第一中学高三上学期期中考试英语试卷（带解析）</a><span>2017-01-09</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yingyusj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30381.html"
								title="2017届河北省承德实验中学高三上学期期中考试英语试卷（带解析）" target="_blank">2017届河北省承德实验中学高三上学期期中考试英语试卷（带解析）</a><span>2017-01-07</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yingyusj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30380.html"
								title="2017届北京市朝阳区高三上学期期中考试英语试卷（带解析）" target="_blank">2017届北京市朝阳区高三上学期期中考试英语试卷（带解析）</a><span>2017-01-07</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yingyusj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30379.html"
								title="2017届广东省汕头市潮师高级中学高三上学期期中考试英语试卷（带解析）" target="_blank">2017届广东省汕头市潮师高级中学高三上学期期中考试英语试卷（带解析）</a><span>2017-01-07</span></li>
						</ul>
					</div>
					<div id="tabContento4" name="divNumbero"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/huaxuesj/grade/6" target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/huaxuesj/tedian/2/grade/6"
									target="_blank">名校</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/28395.html"
								title="2017届广东省广州市增城区四校高三第一次联考理综化学试卷（带解析）" target="_blank">2017届广东省广州市增城区四校高三第一次联考理综化学试卷（带解析）</a><span>2016-09-20</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/huaxuesj/tedian/2/grade/6"
									target="_blank">名校</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/28393.html"
								title="2017届贵州省遵义市南白中学高三第一次联考理综化学试卷（带解析）" target="_blank">2017届贵州省遵义市南白中学高三第一次联考理综化学试卷（带解析）</a><span>2016-09-20</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/huaxuesj/tedian/2/grade/6"
									target="_blank">名校</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/28392.html"
								title="2017届广西陆川县中学高三8月月考理综化学试卷（带解析）" target="_blank">2017届广西陆川县中学高三8月月考理综化学试卷（带解析）</a><span>2016-09-20</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/huaxuesj/tedian/7/grade/6"
									target="_blank">期末</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30503.html"
								title="2017年北京市延庆县高三0模考试化学试卷（带解析）" target="_blank">2017年北京市延庆县高三0模考试化学试卷（带解析）</a><span>2017-03-17</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/huaxuesj/tedian/7/grade/6"
									target="_blank">期末</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30502.html"
								title="2017年北京市延庆县高三0模考试化学试卷（带解析）" target="_blank">2017年北京市延庆县高三0模考试化学试卷（带解析）</a><span>2017-03-17</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/huaxuesj/tedian/7/grade/6"
									target="_blank">期末</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30499.html"
								title="2017年陕西省黄陵中学高三上学期期末考试化学试卷（带解析）" target="_blank">2017年陕西省黄陵中学高三上学期期末考试化学试卷（带解析）</a><span>2017-03-10</span></li>
						</ul>
					</div>
					<div id="tabContento5" name="divNumbero"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/wulisj/grade/6" target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/wulisj/tedian/2/grade/6"
									target="_blank">名校</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30510.html"
								title="2017年北京市海淀区一模物理（带解析）" target="_blank">2017年北京市海淀区一模物理（带解析）</a><span>2017-04-28</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/wulisj/tedian/2/grade/6"
									target="_blank">名校</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30509.html"
								title="2017年北京市东城区一模物理（带解析）" target="_blank">2017年北京市东城区一模物理（带解析）</a><span>2017-04-17</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/wulisj/tedian/2/grade/6"
									target="_blank">名校</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30508.html"
								title="2017年北京市朝阳区一模物理（带解析）" target="_blank">2017年北京市朝阳区一模物理（带解析）</a><span>2017-04-10</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/wulisj/tedian/2/grade/6"
									target="_blank">名校</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30506.html"
								title="2017年山东省泰安市高三一模考试物理试卷（带解析）" target="_blank">2017年山东省泰安市高三一模考试物理试卷（带解析）</a><span>2017-03-28</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/wulisj/tedian/7/grade/6"
									target="_blank">期末</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30501.html"
								title="" target="_blank"></a><span>2017-03-15</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/wulisj/tedian/7/grade/6"
									target="_blank">期末</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30496.html"
								title="" target="_blank"></a><span>2017-03-09</span></li>
						</ul>
					</div>
					<div id="tabContento6" name="divNumbero"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/shengwusj/grade/6"
							target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shengwusj/tedian/7/grade/6"
									target="_blank">期末</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30475.html"
								title="2017年北京市朝阳区高三上学期期末考试生物试卷（带解析）" target="_blank">2017年北京市朝阳区高三上学期期末考试生物试卷（带解析）</a><span>2017-02-08</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shengwusj/tedian/7/grade/6"
									target="_blank">期末</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30460.html"
								title="2017年北京市东城区高三上学期期末考试生物试卷（带解析）" target="_blank">2017年北京市东城区高三上学期期末考试生物试卷（带解析）</a><span>2017-01-20</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shengwusj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30423.html"
								title="2017届广东省清远市第三中学高三上学期期中考试生物试卷（带解析）" target="_blank">2017届广东省清远市第三中学高三上学期期中考试生物试卷（带解析）</a><span>2017-01-13</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shengwusj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30422.html"
								title="2017届甘肃省天水市第二中学高三上学期期中考试生物试卷（带解析）" target="_blank">2017届甘肃省天水市第二中学高三上学期期中考试生物试卷（带解析）</a><span>2017-01-13</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shengwusj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30421.html"
								title="2017届福建省漳州市第一中学高三上学期期中考试生物试卷（带解析）" target="_blank">2017届福建省漳州市第一中学高三上学期期中考试生物试卷（带解析）</a><span>2017-01-13</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shengwusj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30325.html"
								title="2017届福建省三明市第一中学高三上学期期中考试生物试卷（带解析）" target="_blank">2017届福建省三明市第一中学高三上学期期中考试生物试卷（带解析）</a><span>2016-12-23</span></li>
						</ul>
					</div>
					<div id="tabContento7" name="divNumbero"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/lishisj/grade/6" target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/lishisj/tedian/2/grade/6"
									target="_blank">名校</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/28400.html"
								title="2017届湖北省襄阳市第五中学高三上学期开学考试8月历史试卷（带解析）" target="_blank">2017届湖北省襄阳市第五中学高三上学期开学考试8月历史试卷（带解析）</a><span>2016-09-20</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/lishisj/tedian/2/grade/6"
									target="_blank">名校</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/28399.html"
								title="2017届广西陆川县中学高三8月月考文科综合历史试卷（带解析）" target="_blank">2017届广西陆川县中学高三8月月考文科综合历史试卷（带解析）</a><span>2016-09-20</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/lishisj/tedian/2/grade/6"
									target="_blank">名校</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/28398.html"
								title="2017届广西桂林中学高三上学期8月月考历史试卷（带解析）" target="_blank">2017届广西桂林中学高三上学期8月月考历史试卷（带解析）</a><span>2016-09-20</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/lishisj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30365.html"
								title="2017届福建省师大附中高三上学期期中考试历史试卷（带解析）" target="_blank">2017届福建省师大附中高三上学期期中考试历史试卷（带解析）</a><span>2017-01-06</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/lishisj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30363.html"
								title="2017届福建省厦门市翔安第一中学高三上学期期中考试历史试卷（带解析）" target="_blank">2017届福建省厦门市翔安第一中学高三上学期期中考试历史试卷（带解析）</a><span>2017-01-06</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/lishisj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30326.html"
								title="2017届福建省厦门市湖滨中学高三上学期期中考试历史试卷（带解析）" target="_blank">2017届福建省厦门市湖滨中学高三上学期期中考试历史试卷（带解析）</a><span>2016-12-26</span></li>
						</ul>
					</div>
					<div id="tabContento8" name="divNumbero"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/dilisj/grade/6" target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/dilisj/tedian/5/grade/6"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/28391.html"
								title="2017届四川省射洪县射洪中学高三上学期考试地理试卷（带解析）" target="_blank">2017届四川省射洪县射洪中学高三上学期考试地理试卷（带解析）</a><span>2016-09-20</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/dilisj/tedian/5/grade/6"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/28390.html"
								title="2017届四川省成都外国语学校新高三开学考试地理试卷（带解析）" target="_blank">2017届四川省成都外国语学校新高三开学考试地理试卷（带解析）</a><span>2016-09-20</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/dilisj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30362.html"
								title="2017届甘肃省天水市第二中学高三上学期期中考试地理试卷（带解析）" target="_blank">2017届甘肃省天水市第二中学高三上学期期中考试地理试卷（带解析）</a><span>2017-01-06</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/dilisj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30361.html"
								title="2017届福建省师大附中高三上学期期中考试地理试卷（带解析）" target="_blank">2017届福建省师大附中高三上学期期中考试地理试卷（带解析）</a><span>2017-01-06</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/dilisj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30253.html"
								title="2017届福建省闽侯县第二中学高三上学期期中考试文综地理试卷（带解析）" target="_blank">2017届福建省闽侯县第二中学高三上学期期中考试文综地理试卷（带解析）</a><span>2016-12-13</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/dilisj/tedian/6/grade/6"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30252.html"
								title="2017届福建省连城县第一中学高三上学期期中考试文综地理试卷（带解析）" target="_blank">2017届福建省连城县第一中学高三上学期期中考试文综地理试卷（带解析）</a><span>2016-12-13</span></li>
						</ul>
					</div>
					<div id="tabContento9" name="divNumbero"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/zhengzhisj/grade/6"
							target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/zhengzhisj/tedian/2/grade/6"
									target="_blank">名校</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/28216.html"
								title="2017届广西陆川县中学高三8月月考文科综合政治试题（带解析）" target="_blank">2017届广西陆川县中学高三8月月考文科综合政治试题（带解析）</a><span>2016-09-13</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/zhengzhisj/tedian/2/grade/6"
									target="_blank">名校</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/28215.html"
								title="2017届广西桂林市第十八中学高三上学期第一次月考政治试题（带解析）" target="_blank">2017届广西桂林市第十八中学高三上学期第一次月考政治试题（带解析）</a><span>2016-09-13</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/zhengzhisj/tedian/2/grade/6"
									target="_blank">名校</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/28214.html"
								title="2017届广东省茂名市信宜中学高三8月月考政治试卷（带解析）" target="_blank">2017届广东省茂名市信宜中学高三8月月考政治试卷（带解析）</a><span>2016-09-13</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/zhengzhisj/tedian/2/grade/6"
									target="_blank">名校</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/28213.html"
								title="2017届广东省广东实验中学高三8月月考政治试卷（带解析）" target="_blank">2017届广东省广东实验中学高三8月月考政治试卷（带解析）</a><span>2016-09-13</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/zhengzhisj/tedian/2/grade/6"
									target="_blank">名校</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/28212.html"
								title="2017届安徽省寿县第一中学高三上学期第一次月考政治试题（带解析）" target="_blank">2017届安徽省寿县第一中学高三上学期第一次月考政治试题（带解析）</a><span>2016-09-13</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/zhengzhisj/tedian/5/grade/6"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29900.html"
								title="2017届陕西省澄城县寺前中学高三上学期第一次月考政治试卷（带解析）" target="_blank">2017届陕西省澄城县寺前中学高三上学期第一次月考政治试卷（带解析）</a><span>2016-11-11</span></li>
						</ul>
					</div>
				</div>
			</div>
			<div id="tabContent2" name="divNumber" class="tabdiv hiddendiv">
				<div class="tabqht">
					<div class="tabmenut">
						<ul class="chuzhongNav">
							<li><a id="tablinkt1" href="javascript:;" class="tabactive">语文</a></li>
							<li><a id="tablinkt2" href="javascript:;">数学</a></li>
							<li><a id="tablinkt3" href="javascript:;">英语</a></li>
							<li><a id="tablinkt4" href="javascript:;">化学</a></li>
							<li><a id="tablinkt5" href="javascript:;">物理</a></li>
							<li><a id="tablinkt6" href="javascript:;">生物</a></li>
							<li><a id="tablinkt7" href="javascript:;">历史<span
									class="subNewShijuan"></span></a></li>
							<li><a id="tablinkt8" href="javascript:;">地理<span
									class="subNewShijuan"></span></a></li>
							<li><a id="tablinkt9" href="javascript:;">政治</a></li>
						</ul>
					</div>
					<div class="clear"></div>
					<div id="tabContentt1" name="divNumbert"
						class="shijuangaozhong tabdiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/yuwensj/grade/5" target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yuwensj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/26823.html"
								title="山东省桓台第二中学2015-2016学年高二6月月考语文试卷（带解析）" target="_blank">山东省桓台第二中学2015-2016学年高二6月月考语文试卷（带解析）</a><span>2016-07-12</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yuwensj/tedian/2/grade/5"
									target="_blank">名校</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/26819.html"
								title="辽宁省辽师大附中2015-2016学年高二下学期（6月）第二次模块考试语文试卷（带解析）"
								target="_blank">辽宁省辽师大附中2015-2016学年高二下学期（6月）第二次模块考试语文试卷（带解析）</a><span>2016-07-12</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yuwensj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/26697.html"
								title="河北省唐山市开滦第二中学2015-2016学年高二6月月考语文试卷（带解析）" target="_blank">河北省唐山市开滦第二中学2015-2016学年高二6月月考语文试卷（带解析）</a><span>2016-07-07</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yuwensj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/26695.html"
								title="贵州省遵义航天高级中学2015-2016学年高二6月月考语文试卷（带解析）" target="_blank">贵州省遵义航天高级中学2015-2016学年高二6月月考语文试卷（带解析）</a><span>2016-07-07</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yuwensj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/26694.html"
								title="福建省莆田第六中学2015-2016学年高二6月月考语文试卷（带解析）" target="_blank">福建省莆田第六中学2015-2016学年高二6月月考语文试卷（带解析）</a><span>2016-07-07</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yuwensj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/27045.html"
								title="江苏省海门中学2015-2016学年高二5月调研考试语文试卷（带解析）" target="_blank">江苏省海门中学2015-2016学年高二5月调研考试语文试卷（带解析）</a><span>2016-08-05</span></li>
						</ul>
					</div>
					<div id="tabContentt2" name="divNumbert"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/shuxuesj/grade/5" target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shuxuesj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29521.html"
								title="江西省上高县第二中学2016-2017学年高二上学期第一次（9月）月考理科数学试卷（带解析）"
								target="_blank">江西省上高县第二中学2016-2017学年高二上学期第一次（9月）月考理科数学试卷（带解析）</a><span>2016-10-27</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shuxuesj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29518.html"
								title="吉林省长春市实验中学2016-2017学年高二9月月考数学试卷（带解析）" target="_blank">吉林省长春市实验中学2016-2017学年高二9月月考数学试卷（带解析）</a><span>2016-10-27</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shuxuesj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29517.html"
								title="吉林省汪清县第六中学2016-2017学年高二上学期第一次月考文科数学试卷（带解析）"
								target="_blank">吉林省汪清县第六中学2016-2017学年高二上学期第一次月考文科数学试卷（带解析）</a><span>2016-10-27</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shuxuesj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29516.html"
								title="吉林省汪清县第六中学2016-2017学年高二上学期第一次月考理科数学试卷（带解析）"
								target="_blank">吉林省汪清县第六中学2016-2017学年高二上学期第一次月考理科数学试卷（带解析）</a><span>2016-10-27</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shuxuesj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29515.html"
								title="湖南省岳阳县一中2016-2017学年高二上学期第一次月考模拟理科数学试卷（带解析）"
								target="_blank">湖南省岳阳县一中2016-2017学年高二上学期第一次月考模拟理科数学试卷（带解析）</a><span>2016-10-27</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shuxuesj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29327.html"
								title="河北省武邑中学2016-2017学年高二9月月考（第一次月考）理科数学试卷（带解析）"
								target="_blank">河北省武邑中学2016-2017学年高二9月月考（第一次月考）理科数学试卷（带解析）</a><span>2016-10-21</span></li>
						</ul>
					</div>
					<div id="tabContentt3" name="divNumbert"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/yingyusj/grade/5" target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yingyusj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29321.html"
								title="辽宁省葫芦岛市六校协作体2016-2017学年高二上学期期初考试英语试卷（带解析）"
								target="_blank">辽宁省葫芦岛市六校协作体2016-2017学年高二上学期期初考试英语试卷（带解析）</a><span>2016-10-19</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yingyusj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29320.html"
								title="江西省赣州市寻乌中学2016-2017学年高二上学期开学考试英语试卷（带解析）" target="_blank">江西省赣州市寻乌中学2016-2017学年高二上学期开学考试英语试卷（带解析）</a><span>2016-10-19</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yingyusj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29319.html"
								title="湖南省衡阳市第八中学2016-2017学年高二上学期理科实验班第二次月考英语试卷（带解析）"
								target="_blank">湖南省衡阳市第八中学2016-2017学年高二上学期理科实验班第二次月考英语试卷（带解析）</a><span>2016-10-19</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yingyusj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29318.html"
								title="河南省原阳县第一高级中学2016-2017学年高二上学期入学考试英语试卷（带解析）"
								target="_blank">河南省原阳县第一高级中学2016-2017学年高二上学期入学考试英语试卷（带解析）</a><span>2016-10-19</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yingyusj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29317.html"
								title="广东省深圳市高级中学2016-2017学年高二上学期第一次月考英语试卷（带解析）" target="_blank">广东省深圳市高级中学2016-2017学年高二上学期第一次月考英语试卷（带解析）</a><span>2016-10-19</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yingyusj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/26711.html"
								title="山东省临沂市某重点中学2015-2016学年高二下学期六月月考英语试卷（带解析）" target="_blank">山东省临沂市某重点中学2015-2016学年高二下学期六月月考英语试卷（带解析）</a><span>2016-07-07</span></li>
						</ul>
					</div>
					<div id="tabContentt4" name="divNumbert"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/huaxuesj/grade/5" target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/huaxuesj/tedian/6/grade/5"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30436.html"
								title="河北省张家口市第六中学2016-2017学年高二上学期期中考试化学试卷（带解析）" target="_blank">河北省张家口市第六中学2016-2017学年高二上学期期中考试化学试卷（带解析）</a><span>2017-01-16</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/huaxuesj/tedian/6/grade/5"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30435.html"
								title="河北省唐山市第一中学2016-2017学年高二上学期期中考试化学试卷（带解析）" target="_blank">河北省唐山市第一中学2016-2017学年高二上学期期中考试化学试卷（带解析）</a><span>2017-01-16</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/huaxuesj/tedian/6/grade/5"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30434.html"
								title="广西壮族自治区田阳高中2016-2017学年高二上学期期中考试化学试卷（带解析）" target="_blank">广西壮族自治区田阳高中2016-2017学年高二上学期期中考试化学试卷（带解析）</a><span>2017-01-16</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/huaxuesj/tedian/6/grade/5"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30420.html"
								title="安徽省蚌埠市第二中学2016-2017学年高二上学期期中考试化学试卷（带解析）" target="_blank">安徽省蚌埠市第二中学2016-2017学年高二上学期期中考试化学试卷（带解析）</a><span>2017-01-13</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/huaxuesj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30128.html"
								title="辽宁省庄河高级中学2016-2017学年高二10月月考化学试卷（带解析）" target="_blank">辽宁省庄河高级中学2016-2017学年高二10月月考化学试卷（带解析）</a><span>2016-12-02</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/huaxuesj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30058.html"
								title="江西省横峰中学、铅山一中2016-2017学年高二上学期第一次月考化学试卷（带解析）"
								target="_blank">江西省横峰中学、铅山一中2016-2017学年高二上学期第一次月考化学试卷（带解析）</a><span>2016-11-23</span></li>
						</ul>
					</div>
					<div id="tabContentt5" name="divNumbert"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/wulisj/grade/5" target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/wulisj/tedian/7/grade/5"
									target="_blank">期末</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30504.html"
								title="2017年陕西省西安市长安区第一中学高二上学期期末物理（理）试卷（带解析）" target="_blank">2017年陕西省西安市长安区第一中学高二上学期期末物理（理）试卷（带解析）</a><span>2017-03-20</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/wulisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30447.html"
								title="湖南省桃江一中学2016-2017学年高二月考物理试卷（带解析）" target="_blank">湖南省桃江一中学2016-2017学年高二月考物理试卷（带解析）</a><span>2017-01-19</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/wulisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30038.html"
								title="江西省丰城中学2016-2017学年高二上学期第一次月考（重点班）物理试卷（带解析）"
								target="_blank">江西省丰城中学2016-2017学年高二上学期第一次月考（重点班）物理试卷（带解析）</a><span>2016-11-18</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/wulisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29748.html"
								title="云南省大理州南涧县民族中学2016-2017学年高二9月月考物理试卷（带解析）" target="_blank">云南省大理州南涧县民族中学2016-2017学年高二9月月考物理试卷（带解析）</a><span>2016-11-07</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/wulisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29747.html"
								title="江西省吉安市第一中学2016-2017学年高二上学期第一次段考物理试卷（带解析）" target="_blank">江西省吉安市第一中学2016-2017学年高二上学期第一次段考物理试卷（带解析）</a><span>2016-11-07</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/wulisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29746.html"
								title="江西省丰城中学2016-2017学年高二上学期第一次月考物理试卷（带解析）" target="_blank">江西省丰城中学2016-2017学年高二上学期第一次月考物理试卷（带解析）</a><span>2016-11-07</span></li>
						</ul>
					</div>
					<div id="tabContentt6" name="divNumbert"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/shengwusj/grade/5"
							target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shengwusj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29545.html"
								title="河北省唐山市第一中学2016-2017学年高二10月月考生物试卷（带解析）" target="_blank">河北省唐山市第一中学2016-2017学年高二10月月考生物试卷（带解析）</a><span>2016-10-28</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shengwusj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29547.html"
								title="河南省郸城县第一高级中学2016-2017学年高二上学期第一次考试生物试卷（带解析）"
								target="_blank">河南省郸城县第一高级中学2016-2017学年高二上学期第一次考试生物试卷（带解析）</a><span>2016-10-28</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shengwusj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29546.html"
								title="河北省赵县中学2016-2017学年高二上学期第一次月考生物试卷（带解析）" target="_blank">河北省赵县中学2016-2017学年高二上学期第一次月考生物试卷（带解析）</a><span>2016-10-28</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shengwusj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29540.html"
								title="河北省涞水波峰中学2016-2017学年高二9月月考生物试卷（带解析）" target="_blank">河北省涞水波峰中学2016-2017学年高二9月月考生物试卷（带解析）</a><span>2016-10-28</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shengwusj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29481.html"
								title="河北省广平县第一中学2016-2017学年高二第一学期9月月考生物试卷（带解析）" target="_blank">河北省广平县第一中学2016-2017学年高二第一学期9月月考生物试卷（带解析）</a><span>2016-10-27</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shengwusj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29480.html"
								title="河北省定州中学2016-2017学年高二上学期第一次月考生物试卷（带解析）" target="_blank">河北省定州中学2016-2017学年高二上学期第一次月考生物试卷（带解析）</a><span>2016-10-27</span></li>
						</ul>
					</div>
					<div id="tabContentt7" name="divNumbert"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/lishisj/grade/5sj"
							target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/lishisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29604.html"
								title="辽宁省庄河高级中学2016-2017学年高二10月月考历史试卷（带解析）" target="_blank">辽宁省庄河高级中学2016-2017学年高二10月月考历史试卷（带解析）</a><span>2016-11-02</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/lishisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29603.html"
								title="辽宁省沈阳铁路实验中学2016-2017学年高二上学期第一次月考历史试卷（带解析）"
								target="_blank">辽宁省沈阳铁路实验中学2016-2017学年高二上学期第一次月考历史试卷（带解析）</a><span>2016-11-02</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/lishisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29602.html"
								title="江西师范大学附属中学2016-2017学年高二上学期第一次月考历史试卷（带解析）" target="_blank">江西师范大学附属中学2016-2017学年高二上学期第一次月考历史试卷（带解析）</a><span>2016-11-02</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/lishisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29599.html"
								title="江西省横峰中学、铅山一中2016-2017学年高二上学期第一次月考历史试卷（带解析）"
								target="_blank">江西省横峰中学、铅山一中2016-2017学年高二上学期第一次月考历史试卷（带解析）</a><span>2016-11-02</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/lishisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29598.html"
								title="江苏省连云港市灌南华侨双语学校2016-2017学年高二上学期第一次月考历史试卷（带解析）"
								target="_blank">江苏省连云港市灌南华侨双语学校2016-2017学年高二上学期第一次月考历史试卷（带解析）</a><span>2016-11-02</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/lishisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29416.html"
								title="河北省唐山市第一中学2016-2017学年高二10月月考历史试卷（带解析）" target="_blank">河北省唐山市第一中学2016-2017学年高二10月月考历史试卷（带解析）</a><span>2016-10-21</span></li>
						</ul>
					</div>
					<div id="tabContentt8" name="divNumbert"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/dilisj/grade/5" target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/dilisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29059.html"
								title="湖北省宜昌金东方高级中学2016-2017学年高二9月月考地理试卷（带解析）" target="_blank">湖北省宜昌金东方高级中学2016-2017学年高二9月月考地理试卷（带解析）</a><span>2016-10-11</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/dilisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/28835.html"
								title="湖南省衡阳市第八中学2016-2017学年高二上学期文科实验班第二次月考地理试卷（带解析）"
								target="_blank">湖南省衡阳市第八中学2016-2017学年高二上学期文科实验班第二次月考地理试卷（带解析）</a><span>2016-09-30</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/dilisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/28768.html"
								title="辽宁省大连市第二十高级中学2016-2017学年高二9月月考地理试卷（带解析）" target="_blank">辽宁省大连市第二十高级中学2016-2017学年高二9月月考地理试卷（带解析）</a><span>2016-09-29</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/dilisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29058.html"
								title="河南省原阳县第一高级中学2016-2017学年高二上学期第一次月考地理试卷（带解析）"
								target="_blank">河南省原阳县第一高级中学2016-2017学年高二上学期第一次月考地理试卷（带解析）</a><span>2016-10-11</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/dilisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/28767.html"
								title="湖北省襄阳市第五中学2016-2017学年高二上学期第一次月考地理试卷（带解析）" target="_blank">湖北省襄阳市第五中学2016-2017学年高二上学期第一次月考地理试卷（带解析）</a><span>2016-09-29</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/dilisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/28766.html"
								title="河北省涿鹿中学2016-2017学年高二上学期第一次月考地理试卷（带解析）" target="_blank">河北省涿鹿中学2016-2017学年高二上学期第一次月考地理试卷（带解析）</a><span>2016-09-29</span></li>
						</ul>
					</div>
					<div id="tabContentt9" name="divNumbert"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/zhengzhisj/grade/5"
							target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/zhengzhisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29661.html"
								title="四川省眉山中学2016-2017学年高二10月月考文科综合政治试卷（带解析）" target="_blank">四川省眉山中学2016-2017学年高二10月月考文科综合政治试卷（带解析）</a><span>2016-11-03</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/zhengzhisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29658.html"
								title="四川省简阳市阳安中学2016-2017学年高二上学期第一次月考政治试卷（带解析）" target="_blank">四川省简阳市阳安中学2016-2017学年高二上学期第一次月考政治试卷（带解析）</a><span>2016-11-03</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/zhengzhisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29655.html"
								title="辽宁省庄河高级中学2016-2017学年高二10月月考政治试卷（带解析）" target="_blank">辽宁省庄河高级中学2016-2017学年高二10月月考政治试卷（带解析）</a><span>2016-11-03</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/zhengzhisj/tedian/5/grade/5"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29657.html"
								title="山东省桓台第二中学2016-2017学年高二9月月考政治试卷（带解析）" target="_blank">山东省桓台第二中学2016-2017学年高二9月月考政治试卷（带解析）</a><span>2016-11-03</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/zhengzhisj/tedian/2/grade/5"
									target="_blank">名校</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29411.html"
								title="辽宁省沈阳铁路实验中学2016-2017学年高二上学期第一次月考政治试卷（带解析）"
								target="_blank">辽宁省沈阳铁路实验中学2016-2017学年高二上学期第一次月考政治试卷（带解析）</a><span>2016-10-21</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/zhengzhisj/tedian/2/grade/5"
									target="_blank">名校</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29410.html"
								title="江西省赣州市寻乌中学2016-2017学年高二上学期第一次月考政治试卷（带解析）" target="_blank">江西省赣州市寻乌中学2016-2017学年高二上学期第一次月考政治试卷（带解析）</a><span>2016-10-21</span></li>
						</ul>
					</div>
				</div>
			</div>
			<div id="tabContent3" name="divNumber" class="tabdiv  hiddendiv">
				<div class="tabqhh">
					<div class="tabmenuh">
						<ul class="chuzhongNav">
							<li><a id="tablinkh1" href="javascript:;" class="tabactive">语文</a></li>
							<li><a id="tablinkh2" href="javascript:;">数学</a></li>
							<li><a id="tablinkh3" href="javascript:;">英语</a></li>
							<li><a id="tablinkh4" href="javascript:;">化学</a></li>
							<li><a id="tablinkh5" href="javascript:;">物理</a></li>
							<li><a id="tablinkh6" href="javascript:;">生物</a></li>
							<li><a id="tablinkh7" href="javascript:;">历史<span
									class="subNewShijuan"></span></a></li>
							<li><a id="tablinkh8" href="javascript:;">地理<span
									class="subNewShijuan"></span></a></li>
							<li><a id="tablinkh9" href="javascript:;">政治</a></li>
						</ul>
					</div>
					<div class="clear"></div>
					<div id="tabContenth1" name="divNumberh"
						class="shijuangaozhong tabdiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/yuwensj/grade/4" target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yuwensj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29950.html"
								title="四川省雅安中学2016-2017学年高一上学期入学考试语文试卷（带解析）" target="_blank">四川省雅安中学2016-2017学年高一上学期入学考试语文试卷（带解析）</a><span>2016-11-15</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yuwensj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29949.html"
								title="江苏省苏州市吴县中学2016-2017学年高一上学期10月月考语文试卷（带解析）" target="_blank">江苏省苏州市吴县中学2016-2017学年高一上学期10月月考语文试卷（带解析）</a><span>2016-11-15</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yuwensj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29948.html"
								title="湖南省蓝山二中新2016-2017学年高一入学编班考试语文试卷（带解析）" target="_blank">湖南省蓝山二中新2016-2017学年高一入学编班考试语文试卷（带解析）</a><span>2016-11-15</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yuwensj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29947.html"
								title="湖北省武汉市蔡甸区汉阳一中2016-2017学年高一上学期10月月考语文试卷（带解析）"
								target="_blank">湖北省武汉市蔡甸区汉阳一中2016-2017学年高一上学期10月月考语文试卷（带解析）</a><span>2016-11-15</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yuwensj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29946.html"
								title="河北省黄骅中学2016-2017学年高一上学期第一次月考语文试卷（带解析）" target="_blank">河北省黄骅中学2016-2017学年高一上学期第一次月考语文试卷（带解析）</a><span>2016-11-15</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yuwensj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29945.html"
								title="福建省四地六校2016-2017学年高一上学期第一次月考语文试卷（带解析）" target="_blank">福建省四地六校2016-2017学年高一上学期第一次月考语文试卷（带解析）</a><span>2016-11-15</span></li>
						</ul>
					</div>
					<div id="tabContenth2" name="divNumberh"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/shuxuesj/grade/4" target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shuxuesj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30006.html"
								title="山西省岳大同市第一中学2016-2017学年高一10月月考数学试卷（带解析）" target="_blank">山西省岳大同市第一中学2016-2017学年高一10月月考数学试卷（带解析）</a><span>2016-11-16</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shuxuesj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30002.html"
								title="湖南省岳阳市华容县第一中学2016-2017学年高一10月月考数学试卷（带解析）" target="_blank">湖南省岳阳市华容县第一中学2016-2017学年高一10月月考数学试卷（带解析）</a><span>2016-11-16</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shuxuesj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30001.html"
								title="河南省新野县第三高级中学2016-2017学年高一上学期第一次月考数学试卷（带解析）"
								target="_blank">河南省新野县第三高级中学2016-2017学年高一上学期第一次月考数学试卷（带解析）</a><span>2016-11-16</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shuxuesj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30000.html"
								title="河南省南阳市第一中学2016-2017学年高一上学期第一次月考数学试卷（带解析）" target="_blank">河南省南阳市第一中学2016-2017学年高一上学期第一次月考数学试卷（带解析）</a><span>2016-11-16</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shuxuesj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29999.html"
								title="安徽省合肥市第一中学2016-2017学年高一上学期第一次数学试卷（带解析）" target="_blank">安徽省合肥市第一中学2016-2017学年高一上学期第一次数学试卷（带解析）</a><span>2016-11-16</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shuxuesj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29932.html"
								title="黑龙江省牡丹江市第一中学2016-2017学年高一9月月考数学试卷（带解析）" target="_blank">黑龙江省牡丹江市第一中学2016-2017学年高一9月月考数学试卷（带解析）</a><span>2016-11-14</span></li>
						</ul>
					</div>
					<div id="tabContenth3" name="divNumberh"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/yingyusj/grade/4" target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yingyusj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/26817.html"
								title="河北省唐山市开滦第二中学2015-2016学年高一6月月考英语试卷（带解析）" target="_blank">河北省唐山市开滦第二中学2015-2016学年高一6月月考英语试卷（带解析）</a><span>2016-07-12</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yingyusj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/26814.html"
								title="贵州省遵义航天高级中学2015-2016学年高一6月月考英语试卷（带解析）" target="_blank">贵州省遵义航天高级中学2015-2016学年高一6月月考英语试卷（带解析）</a><span>2016-07-12</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yingyusj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/26813.html"
								title="贵州省贵阳市花溪清华中学2015-2016学年高一6月月考英语试卷（带解析）" target="_blank">贵州省贵阳市花溪清华中学2015-2016学年高一6月月考英语试卷（带解析）</a><span>2016-07-12</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yingyusj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/27317.html"
								title="河北省武邑中学2015-2016学年高一下学期第三次月考英语试卷（带解析）" target="_blank">河北省武邑中学2015-2016学年高一下学期第三次月考英语试卷（带解析）</a><span>2016-08-17</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yingyusj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/26812.html"
								title="广东省河源市龙川县第一中学2015-2016学年高一5月月考英语试卷（带解析）" target="_blank">广东省河源市龙川县第一中学2015-2016学年高一5月月考英语试卷（带解析）</a><span>2016-07-11</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/yingyusj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/26816.html"
								title="河北省沧州市第一中学2015-2016学年高一上学期第二次月考英语试卷（带解析）" target="_blank">河北省沧州市第一中学2015-2016学年高一上学期第二次月考英语试卷（带解析）</a><span>2016-07-12</span></li>
						</ul>
					</div>
					<div id="tabContenth4" name="divNumberh"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/huaxuesj/grade/4" target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/huaxuesj/tedian/7/grade/4"
									target="_blank">期末</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/23079.html"
								title="贵州省遵义航天高级中学2015-2016学年高一上学期期末考试理综化学试卷（带解析）"
								target="_blank">贵州省遵义航天高级中学2015-2016学年高一上学期期末考试理综化学试卷（带解析）</a><span>2016-02-25</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/huaxuesj/tedian/7/grade/4"
									target="_blank">期末</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/22528.html"
								title="西藏拉萨中学2015-2016学年高一上学期期末考试化学试卷（带解析）" target="_blank">西藏拉萨中学2015-2016学年高一上学期期末考试化学试卷（带解析）</a><span>2016-02-19</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/huaxuesj/tedian/7/grade/4"
									target="_blank">期末</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/22527.html"
								title="辽宁省大连二十中2015-2016学年高一上学期期末考试化学试卷（带解析）" target="_blank">辽宁省大连二十中2015-2016学年高一上学期期末考试化学试卷（带解析）</a><span>2016-02-19</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/huaxuesj/tedian/6/grade/4"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30414.html"
								title="重庆市彭水第一中学2016-2017学年高一上学期期中考试化学试卷（带解析）" target="_blank">重庆市彭水第一中学2016-2017学年高一上学期期中考试化学试卷（带解析）</a><span>2017-01-12</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/huaxuesj/tedian/6/grade/4"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30413.html"
								title="山东省济南外国语学校三箭分校2016-2017学年高一上学期期中考试化学试卷（带解析）"
								target="_blank">山东省济南外国语学校三箭分校2016-2017学年高一上学期期中考试化学试卷（带解析）</a><span>2017-01-11</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/huaxuesj/tedian/6/grade/4"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30412.html"
								title="辽宁省抚顺市四方高级中学2016-2017学年高一上学期期中考试化学试卷（带解析）"
								target="_blank">辽宁省抚顺市四方高级中学2016-2017学年高一上学期期中考试化学试卷（带解析）</a><span>2017-01-11</span></li>
						</ul>
					</div>
					<div id="tabContenth5" name="divNumberh"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/wulisj/grade/4" target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/wulisj/tedian/7/grade/4"
									target="_blank">期末</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30507.html"
								title="2017年江苏省扬州市高一上学期期末考试物理试卷（带解析）" target="_blank">2017年江苏省扬州市高一上学期期末考试物理试卷（带解析）</a><span>2017-03-31</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/wulisj/tedian/7/grade/4"
									target="_blank">期末</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30505.html"
								title="2017年江苏省扬州市高一上学期期末考试物理试卷（带解析）" target="_blank">2017年江苏省扬州市高一上学期期末考试物理试卷（带解析）</a><span>2017-03-23</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/wulisj/tedian/7/grade/4"
									target="_blank">期末</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30500.html"
								title="2017年陕西省西安市长安一中高一上学期期末考试物理试卷（带解析）" target="_blank">2017年陕西省西安市长安一中高一上学期期末考试物理试卷（带解析）</a><span>2017-03-15</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/wulisj/tedian/6/grade/4"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30445.html"
								title="河北省冀州中学2016-2017学年高一上学期第一次月考物理试卷（带解析）" target="_blank">河北省冀州中学2016-2017学年高一上学期第一次月考物理试卷（带解析）</a><span>2017-01-19</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/wulisj/tedian/6/grade/4"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30444.html"
								title="甘肃省兰州市第九中学2016-2017学年高一上学期期中考试物理试卷（带解析）" target="_blank">甘肃省兰州市第九中学2016-2017学年高一上学期期中考试物理试卷（带解析）</a><span>2017-01-19</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/wulisj/tedian/6/grade/4"
									target="_blank">期中</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30441.html"
								title="甘肃省兰州市第九中学2016-2017学年高一上学期期中考试物理试卷（带解析）" target="_blank">甘肃省兰州市第九中学2016-2017学年高一上学期期中考试物理试卷（带解析）</a><span>2017-01-18</span></li>
						</ul>
					</div>
					<div id="tabContenth6" name="divNumberh"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/shengwusj/grade/4"
							target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shengwusj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/25500.html"
								title="河北省邯郸市永年县第二中学2015-2016学年高一4月月考生物试卷（有答案）" target="_blank">河北省邯郸市永年县第二中学2015-2016学年高一4月月考生物试卷（有答案）</a><span>2016-05-05</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shengwusj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/25402.html"
								title="江苏省淮阴中学2015-2016学年高一下学期第一次月考生物试卷（带解析）" target="_blank">江苏省淮阴中学2015-2016学年高一下学期第一次月考生物试卷（带解析）</a><span>2016-04-28</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shengwusj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/25499.html"
								title="安徽省淮南市第二中学2015-2016学年高一下学期第一次月考生物试卷（有答案）" target="_blank">安徽省淮南市第二中学2015-2016学年高一下学期第一次月考生物试卷（有答案）</a><span>2016-05-05</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shengwusj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/25399.html"
								title="吉林省长春外国语学校2015-2016学年高一下学期第一次月考生物试卷（带解析）" target="_blank">吉林省长春外国语学校2015-2016学年高一下学期第一次月考生物试卷（带解析）</a><span>2016-04-28</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shengwusj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/24991.html"
								title="辽宁省大连市第二十高级中学2015-2016学年高一下学期第一次月考生物试卷（带解析）"
								target="_blank">辽宁省大连市第二十高级中学2015-2016学年高一下学期第一次月考生物试卷（带解析）</a><span>2016-04-05</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/shengwusj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/24904.html"
								title="湖南省衡阳市第八中学2015-2016学年高一下学期第一次月考生物试卷（带解析）" target="_blank">湖南省衡阳市第八中学2015-2016学年高一下学期第一次月考生物试卷（带解析）</a><span>2016-03-29</span></li>
						</ul>
					</div>
					<div id="tabContenth7" name="divNumberh"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/lishisj/grade/4" target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/lishisj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/26840.html"
								title="广东省河源市龙川县第一中学2015-2016学年高一5月月考历史试卷（带解析）" target="_blank">广东省河源市龙川县第一中学2015-2016学年高一5月月考历史试卷（带解析）</a><span>2016-07-13</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/lishisj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/25383.html"
								title="安徽省淮南市第二中学2015-2016学年高一下学期第一次月考历史试卷（带解析）" target="_blank">安徽省淮南市第二中学2015-2016学年高一下学期第一次月考历史试卷（带解析）</a><span>2016-05-05</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/lishisj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/25386.html"
								title="河北省邯郸市永年县第二中学2015-2016学年高一4月月考历史试卷（带解析）" target="_blank">河北省邯郸市永年县第二中学2015-2016学年高一4月月考历史试卷（带解析）</a><span>2016-05-05</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/lishisj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/25405.html"
								title="浙江省台州市书生中学2015-2016学年高一下学期第一次月考历史试卷（带解析）" target="_blank">浙江省台州市书生中学2015-2016学年高一下学期第一次月考历史试卷（带解析）</a><span>2016-05-12</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/lishisj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/25404.html"
								title="浙江省东阳中学2015-2016学年高一3月阶段检测历史试卷（带解析）" target="_blank">浙江省东阳中学2015-2016学年高一3月阶段检测历史试卷（带解析）</a><span>2016-05-12</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/lishisj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/25001.html"
								title="山西省怀仁县第一中学2015-2016学年高一下学期第一次月考历史试卷（带解析）" target="_blank">山西省怀仁县第一中学2015-2016学年高一下学期第一次月考历史试卷（带解析）</a><span>2016-04-05</span></li>
						</ul>
					</div>
					<div id="tabContenth8" name="divNumberh"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/dilisj/grade/4" target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/dilisj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29937.html"
								title="重庆市第一中学2016-2017学年高一10月月考文科综合地理试卷（带解析）" target="_blank">重庆市第一中学2016-2017学年高一10月月考文科综合地理试卷（带解析）</a><span>2016-11-14</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/dilisj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29936.html"
								title="浙江省温州中学2016-2017学年高一10月月考地理试卷（带解析）" target="_blank">浙江省温州中学2016-2017学年高一10月月考地理试卷（带解析）</a><span>2016-11-14</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/dilisj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29935.html"
								title="四川省新津中学2016-2017学年高一10月月考地理试卷（带解析）" target="_blank">四川省新津中学2016-2017学年高一10月月考地理试卷（带解析）</a><span>2016-11-14</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/dilisj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29668.html"
								title="山东省枣庄市第八中学南校区2016-2017学年高一上学期10月月考地理试卷（带解析）"
								target="_blank">山东省枣庄市第八中学南校区2016-2017学年高一上学期10月月考地理试卷（带解析）</a><span>2016-11-03</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/dilisj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29663.html"
								title="山东省济南第一中学2016-2017学年高一上学期10月月考地理试卷（带解析）" target="_blank">山东省济南第一中学2016-2017学年高一上学期10月月考地理试卷（带解析）</a><span>2016-11-03</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/dilisj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/29662.html"
								title="吉林省舒兰市第一中学2016-2017学年高一上学期第一次月考地理试卷（带解析）" target="_blank">吉林省舒兰市第一中学2016-2017学年高一上学期第一次月考地理试卷（带解析）</a><span>2016-11-03</span></li>
						</ul>
					</div>
					<div id="tabContenth9" name="divNumberh"
						class="shijuangaozhong tabdiv hiddendiv">
						<font><a class="gzMore"
							href="http://www.yitiku.cn/tiku/zhengzhisj/grade/4"
							target="_blank">MORE</a></font>
						<ul>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/zhengzhisj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30409.html"
								title="江西省宜春市奉新县第一中学2016-2017学年高一上学期第一次月考政治试卷（带解析）"
								target="_blank">江西省宜春市奉新县第一中学2016-2017学年高一上学期第一次月考政治试卷（带解析）</a><span>2017-01-11</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/zhengzhisj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30408.html"
								title="江西省崇义中学2016-2017学年高一上学期第一次月考政治试卷（带解析）" target="_blank">江西省崇义中学2016-2017学年高一上学期第一次月考政治试卷（带解析）</a><span>2017-01-11</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/zhengzhisj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30407.html"
								title="湖南省岳阳市华容县第一中学2016-2017学年高一10月月考政治试卷（带解析）" target="_blank">湖南省岳阳市华容县第一中学2016-2017学年高一10月月考政治试卷（带解析）</a><span>2017-01-11</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/zhengzhisj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30406.html"
								title="湖南省常德市鼎城区一中2016-2017学年高一上学期第一次月考政治试卷（带解析）"
								target="_blank">湖南省常德市鼎城区一中2016-2017学年高一上学期第一次月考政治试卷（带解析）</a><span>2017-01-11</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/zhengzhisj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30401.html"
								title="湖北省武汉钢铁集团公司第三子弟中学2016-2017学年高一上学期第一次月考政治试卷（带解析）"
								target="_blank">湖北省武汉钢铁集团公司第三子弟中学2016-2017学年高一上学期第一次月考政治试卷（带解析）</a><span>2017-01-10</span></li>
							<li><span class="tedian">[ <a
									href="http://www.yitiku.cn/tiku/zhengzhisj/tedian/5/grade/4"
									target="_blank">月考</a> ]
							</span><a class="shijuan" href="http://www.yitiku.cn/shijuan/30311.html"
								title="广西宾阳县宾阳中学2016-2017学年高一9月月考政治试卷（带解析）" target="_blank">广西宾阳县宾阳中学2016-2017学年高一9月月考政治试卷（带解析）</a><span>2016-12-21</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="right">
			<a href="http://www.yitiku.cn/zhuanti/2015zkzt?from=indexad"
				target="_blank"><img style="padding-top: 35px;"
				src="${ctx }/static/images/55c818dbb92dd.jpg"
				alt="2015年中考真题及答案解析"></a><a
				href="http://www.yitiku.cn/zhuanti/stsc_yun?from=indexad"
				target="_blank"><img style="padding-top: 42px;"
				src="${ctx }/static/images/56e12f8136d3e.jpg" alt="上传试题"></a>
			<script>    $(".right").find("img").eq(1).css('padding-top', '42px');
</script>
		</div>
		<div class="clear"></div>
	</div>
	<div class="box1000 ytkcz lastest">
		<div class="right">
			<a href="http://www.yitiku.cn/zhuanti/2016gsqm?from=indexad"
				target="_blank"><img style="padding-top: 35px;"
				src="${ctx }/static/images/56aef2af39400.jpg" alt="2016年高三期末"></a><a
				href="http://www.yitiku.cn/zhuanti/2015gkzt/?from=indexad"
				target="_blank"><img style="padding-top: 42px;"
				src="${ctx }/static/images/559ba873bbd79.png"
				alt="2015年全国各地高考真题答案及解析"></a>
			<script>	$(".right").find("img").eq(3).css('padding-top', '42px');
</script>
		</div>
		<div class="clear"></div>
	</div>
	<div class="full fullProduct">
		<div class="box1000 product">
			<div class="txt sts">
				<ul>
					<li class="icon1"><span class=""><a
							href="http://www.yitiku.cn/Stuandtea/teacherindex"
							target="_blank"></a>
						<p>易题库为教师带来</p>
							<div class="line"></div></span><font><a
							href="http://www.yitiku.cn/Stuandtea/teacherindex#tfir"
							target="_blank">权威题库</a><a
							href="http://www.yitiku.cn/Stuandtea/teacherindex#tsec"
							target="_blank">快捷选题</a><a
							href="http://www.yitiku.cn/Stuandtea/teacherindex#tthi"
							target="_blank">在线组卷</a><a
							href="http://www.yitiku.cn/Stuandtea/teacherindex#tfou"
							target="_blank">测评报告</a></font></li>
					<li class="icon2"><span class=""><a
							href="http://www.yitiku.cn/Stuandtea/studentindex"
							target="_blank"></a>
						<p>易题库为学生带来</p>
							<div class="line"></div></span><font><a
							href="http://www.yitiku.cn/Stuandtea/studentindex#sfir"
							"="" target="_blank">在线练习</a><a
							href="http://www.yitiku.cn/Stuandtea/studentindex#ssec"
							"="" target="_blank">笔记本</a><a
							href="http://www.yitiku.cn/Stuandtea/studentindex#sthi"
							"="" target="_blank">错题本</a><a
							href="http://www.yitiku.cn/Stuandtea/studentindex#sfou"
							"="" target="_blank">能力评估</a></font></li>
					<li class="icon3"><span><a
							href="http://www.yitiku.cn/lp/1" target="_blank"></a>
						<p>易题库为学校带来</p>
							<div class="line"></div></span><font><a
							href="http://www.yitiku.cn/lp/1" target="_blank">优质试题 </a><a
							href="http://www.yitiku.cn/lp/1" target="_blank">智能组卷</a><a
							href="http://www.yitiku.cn/lp/1" target="_blank">在线测评</a><a
							href="http://www.yitiku.cn/lp/1" target="_blank">可定制</a></font></li>
				</ul>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div style="border-bottom: 1px solid #e8e8e8; height: 0;">
		<!--margin-bottom:15px; margin-top:43px;-->
	</div>
	<div class="box1000 about">
		<div class="txt">
			<ul>
				<li class="icon1"><h3>关于易题库</h3>
					<span><a href="http://www.yitiku.cn/about/" target="_blank">易题库介绍</a><a
						href="http://www.yitiku.cn/teacher/" target="_blank" class="mr0">教研团队</a></span></li>
				<li class="icon2"><h3>五分钟学会使用易题库</h3>
					<span><a href="http://www.yitiku.cn/help/#help3"
						target="_blank" rel="nofollow">手工组卷</a><a
						href="http://www.yitiku.cn/help/#help4" target="_blank"
						rel="nofollow">智能组卷</a><a href="http://www.yitiku.cn/help/#help7"
						target="_blank" rel="nofollow">在线测评</a><a
						href="http://www.yitiku.cn/help/#help8" target="_blank"
						rel="nofollow" class="mr0">在线练习</a></span></li>
				<li class="icon3"><h3>产品</h3>
					<span><a href="http://www.yitiku.cn/product/"
						target="_blank">个人版</a><a href="http://www.yitiku.cn/solution/"
						target="_blank">校方版</a><a
						href="http://www.yitiku.cn/Tiku/Card/buycard//" target="_blank">学习卡</a></span></li>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
	<div class="box1000 indexLinks">
		<div class="bt">
			<strong>合作伙伴</strong>
			<div class="clear"></div>
			<div
				style="border-bottom: 1px solid #e8e8e8; height: 1px; margin-bottom: 10px; margin-top: 10px;"></div>
		</div>
		<ul>
			<li><a
				href="http://n.eduyun.cn/index.php?r=portal/app/view&amp;appcode=AP000000013057&amp;appcategorycode=6&amp;apptype=0"
				target="_blank"><img
					src="${ctx }/static/images/dianjiaoguan.jpg" width="184"
					height="78"></a></li>
			<li><a href="http://im.qq.com/index.shtml" target="_blank"><img
					src="${ctx }/static/images/tengxun.jpg" width="184" height="78"></a></li>
			<li><a href="http://campus.qq.com/" target="_blank"><img
					src="${ctx }/static/images/tengxunzhihuixiaoyuan.jpg"
					width="184" height="78"></a></li>
			<li><a href="http://edu.qq.com/" target="_blank"><img
					src="${ctx }/static/images/tengxunjiaoyu.jpg" width="184"
					height="78"></a></li>
			<li class="last"><a
				href="http://wenku.baidu.com/org/view?org=yitiku" target="_blank"><img
					src="${ctx }/static/images/baiduwenku.jpg" width="184"
					height="78"></a></li>
			<!--       <li><a href="http://www.ikaola.mobi/" target="_blank"><img src='/images/links/aikaola.jpg' width="184" height="78"></a></li><li><a href="http://www.meizu.com" target="_blank"><img src='/images/links/meizu.jpg' width="184" height="78"></a></li> -->
		</ul>
		<div class="clear"></div>
	</div>
	<div class="footBox">
		<div class="box1000">
			<ul>
				<li><a href="http://www.yitiku.cn/contact/" target="_blank">联系我们</a></li>
				<li><a href="http://www.yitiku.cn/about/" target="_blank"
					rel="nofollow">关于我们</a></li>
				<li><a href="http://www.yitiku.cn/job/" target="_blank"
					rel="nofollow">人才招聘</a></li>
				<li><a href="http://www.yitiku.cn/zhuanti/investment/"
					target="_blank" rel="nofollow">招商代理</a></li>
				<li><a href="http://www.yitiku.cn/copyright/" target="_blank">版权声明</a></li>
				<li><a href="http://www.yitiku.cn/help/" target="_blank"
					rel="nofollow">使用帮助</a></li>
				<li><a href="http://www.yitiku.cn/link/" target="_blank">友情链接</a></li>
				<li class="noborr"><a href="http://www.yitiku.cn/sitemap/"
					target="_blank">网站地图</a><span class="sina_icon"><a
						href="http://weibo.com/yitiku" target="_blank"></a></span></li>
			</ul>
			<p>
				Copyright © 2015 <a target="_blank" href="http://www.yitiku.cn/">易题库</a>
				版权所有 <a rel="nofollow" target="_blank"
					href="http://www.miibeian.gov.cn/">京ICP备13010318-2号</a><br>京公网安备11010802012712号
			</p>
		</div>
		<div class="clear"></div>
		<style type="text/css">
#footerpanel {
	overflow: hidden;
	z-index: 999;
	font-size: 12px;
	text-align: center;
	position: fixed;
	right: 0px;
	bottom: 0;
	background: url(${ctx }/static/images/QQjt.png) center top no-repeat;
	width: 120px;
	_position: absolute;
	_top: expression(document.documentElement.clientHeight + 
		document.documentElement.scrollTop - this.offsetHeight);
}

#footerpanel h2 {
	font-size: 14px;
	color: #fff;
	line-height: 32px;
	font-family: '微软雅黑';
	margin-bottom: 15px;
	text-align: center;
	height: 32px;
}

#footerpanel div {
	margin-bottom: 10px;
}

#footerpanel div h3 {
	font-size: 14px;
	color: #333;
	text-align: center;
}

#footerpanel div a {
	display: block;
	width: 92px;
	height: 22px;
	margin: 0 auto;
}
</style>
		<div id="footerpanel">
			<h2>在线咨询</h2>
			<div class="talk">
				<a target="_blank"
					href="http://wpa.qq.com/msgrd?v=3&amp;uin=1816094463&amp;site=qq&amp;menu=yes"><img
					src="${ctx }/static/images/zxjt.png" alt="QQ在线交谈" title="在线交谈"></a>
				<h3>24小时咨询</h3>
			</div>
		</div>
	</div>
	<!--以下为qq：-->
	<script type="text/javascript" src="${ctx }/static/images/stats"
		charset="UTF-8"></script>
	<!--以上为qq：-->
	<!--以下为百度：-->
	<div style="display: none;">
		<script type="text/javascript">var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fba430f404e1018c19017fd7d6857af83' type='text/javascript'%3E%3C/script%3E"));
</script>
		<script src="static/js/h.js" type="text/javascript"></script>
	</div>
	<div style="display: none;">
		<div id="mbloginContent" class="mbPaneltxt">
			<div class="mblogin">
				<form action="http://www.yitiku.cn/User/login" method="">
					<ul>
						<li><input type="text" name="account" value="邮箱/手机号"
							class="loginwh name input8f8" id="mbemail"></li>
						<li><input type="password" name="password" value="请输入您密码"
							class="loginwh password input8f8" id="mbpassword"
							style="width: 209px;">
						<!-- <div class="hqlsmm" id="tmppwd"><a href="javascript:void(0)">获取临时密码</a></div> -->
							<input id="tmppwd_flg" type="hidden" value="true"></li>
						<!--<li class="inputBox"><input type="text" id="mbyzm" class="confirm input8f8" value="验证码" name="yzm"><a href="javascript:;"><img src="/Lib/Widget/yzm/index.php" id="code123" onclick="this.src='/Lib/Widget/yzm/index.php?'+Math.random()" width="70" height="35" alt="验证码"></a><a class="toChange" href="javascript:;" onclick="javascript:$('#code123').attr('src', '/Lib/Widget/yzm/index.php?'+Math.random())">换一换</a></li>-->
						<li><label><input type="checkbox" name="remember"
								value="1"><span>记住密码</span></label>
						<!--<a class="sps" href="/User/resetpass_one" target="_blank" rel="nofollow">找回密码</a>--></li>
						<li><input type="submit" value="登录" class="btn btn2"><a
							href="http://www.yitiku.cn/signin/" target="_blank"
							class="btn btn4 fr" rel="nofollow">注册</a></li>
						<li><div class="white_line"></div></li>
						<li><span class="quick_login">合作方快速登录</span></li>
						<li class="other_mblogin"><a
							href="http://www.yitiku.cn/User/qq_tmpRegister"><img
								src="static/images/qq_login_new.png"></a><a
							href="https://api.weibo.com/oauth2/authorize?client_id=4055659569&amp;redirect_uri=http%3A%2F%2Fwww.yitiku.cn%2FTiku%2FUser%2Fweibo_callback&amp;response_type=code"><img
								src="static/images/loginSina_login.png"></a><a
							href="https://open.weixin.qq.com/connect/qrconnect?appid=wx285ce3db1c1fb100&amp;redirect_uri=http://www.yitiku.cn/Tiku/User/weixin_callback&amp;response_type=code&amp;scope=snsapi_login&amp;state=1#wechat_redirect"
							class="WeChat_login"><img
								src="static/images/WeChat_login.png"></a></li>
					</ul>
				</form>
			</div>
		</div>
	</div>
	<!--
<div style="display:none"><div id="qqlogin_sContent" class="qqPaneltxt"><div class="qqLogin"><div class="btn_qq mt50"><input onclick="frm.submit()" value="确认" class="btn btn2"><input type="button"  class="btn btn4 fr" onclick="$('#windown-close').trigger('click')" value="取消"></div></div></div></div>-->
	<script>function inputTextSet(elemId,defauleValue,className){
  $("#"+elemId).live("focus",function(){
    if($(this).val()==defauleValue){
      $(this).val("");
    }
  });

  $("#"+elemId).live("blur",function(){
    if($.trim($(this).val())=="" || $.trim($(this).val())==defauleValue){
      $(this).val(defauleValue);
      if(className){
        $(this).addClass(className);
      }
    }else{
      if(className){
        $(this).removeClass(className);
      }
    }
  });
}
  inputTextSet("mbemail","邮箱/手机号","input8f8");
  inputTextSet("mbpassword","请输入您密码","input8f8");
  inputTextSet("mbyzm","验证码","input8f8");
//获取临时密码
$(function(){
    $("#tmppwd_flg").val("true");
    var sendaddr = "";
    $("#tmppwd").live('click',function(e){
      $("[name='account']").each(function(){
        if(this.value != '邮箱/手机号'){
          sendaddr = this.value;
        }
      });
      $("#error_user").css('display','none');
      if(sendaddr == ""){
         //$("#error_user").html("请输入手机号或邮箱地址！");
         alert("请输入手机号或邮箱地址！");
         return;
      }
      if(/^\d+$/.test(sendaddr)){
         if(!/^1[3578]{1}\d{9}$/.test(sendaddr)){
           //$("#error_user").html("请输入正确的手机号！");
           alert("请输入正确的手机号！");
           return;
         }
      }else if(!/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(sendaddr)){
         //$("#error_user").html("请输入正确的邮箱地址！");
         alert("请输入正确的邮箱地址！");
         return;
      }
      if($("#tmppwd_flg").val() == "true"){
        var verify = $("#verifyval").val();
        var postdata = {'sendaddr':sendaddr,'verify':verify}
        $.post('/Public/getTmpPwd',postdata,function(data){
          if(data.result == "2"){
            $("#verifymsg").show();
          }else{
            $("#verifymsg").hide();
            send(60);
          }
        });
      }
    });
});

// 60秒
function send(num) {
  $("#tmppwd_flg").val("false");
  var clearTimer = setInterval(changeTime, 1000);
  $(".hqlsmm").html( 60 + "秒");
  function changeTime() {
    if (num > 0) {
      num = num - 1;
      curnum = num;
      $(".hqlsmm").html(curnum + "秒");
    } else {
      if (num == 0) {
        $(".hqlsmm").html("<a href='javascript:void(0);'>重新获取</a>");
        $("#tmppwd_flg").val("true");
        clearInterval(clearTimer);
        num = 60;
      }
      num = num - 1;
    }
  }
  clearTimer;
}
</script>
	<div class="mbPaneltxt" id="tipContent1" style="display: none;">
		<div class="mbdelQues">
			<h4 id="tishiyu"></h4>
			<a href="javascript:;" class="btn btn02" id="becomeVip"
				style="margin: 10px 20px 0px 135px;">成为vip</a>
		</div>
	</div>
	<div class="mbPaneltxt w500" id="render-error" style="display: none;">
		<form method="post" action="http://www.yitiku.cn/">
			<ul>
				<li><label>题目编号：</label><font id="tmbh"></font><a
					style="float: right; width: 160px; color: #f00; font-size: 16px; text-align: right;"
					href="http://www.yitiku.cn/zhuanti/tiaocuo?form_errorWin"
					target="_blank">试题挑错赢积分</a></li>
				<li><label style="margin-left: -9px; width: 87px;"><font
						class="colf43" style="float: left;">*&nbsp;</font>错误类型： </label>
				<div>
						<!--<input id="Checkbox1" class="checkboxerror" type="checkbox" value="1"/><i>排版有误</i>-->
						<input id="Checkbox2" class="checkboxerror" type="checkbox"
							value="2"><i>题干有误</i><input id="Checkbox3"
							class="checkboxerror" type="checkbox" value="3"><i>答案有误</i><input
							id="Checkbox4" class="checkboxerror" type="checkbox" value="4"><i>解析有误</i>
					</div>
					<font class="colf43 mt26 disnone" id="choiceErrorType">请您选择错误类型</font>
				<div class="clear"></div></li>
				<div class="clear"></div>
				<li><label class="mr10"> 错误描述： </label>
				<textarea id="errorDescription" class="input8f8 change wh353"
						style="color: rgb(0, 0, 0);" name="error_info"></textarea>
					<div class="mt10">
						<span>0-500字</span><font class="colf43 disnone"
							id="longdescription">描述字数太多，请修改</font><input type="button"
							id="confirm-commit" class="btn btnerror" value="确定">
					</div></li>
				<div class="clear"></div>
			</ul>
		</form>
		<div class="commit-success">
			<p style="margin-left: 45px;">提交成功！</p>
			<p>感谢您对易题库的支持，谢谢:-)</p>
		</div>
	</div>
	<script type="text/javascript">  var error_sub_id;
  var error_exam_id;
   //报错
$(".reportError").live("click",function(){
	var _this = $(this);
	$.ajax({
  	type: "POST",
  	url: groupUrl+"/Public/ajaxCheckUser",
  	data:"",
  	success: function(data){
    if (data=='1'){
       error_sub_id = _this.attr("sub_id");
       error_exam_id = _this.attr("exam_id");
       $("#tmbh").html(error_exam_id);
       baocuo();
    }else{
       popTips1();//显示登录弹窗
    }
  }
  });
});
function baocuo(){
	$('#render-error').skygqbox();
	$(".wrap_title span").html("试题报错");
	$(".wrap_title span").css("font-size","14px");
	$('.w500 .commit-success').css("display","none");
	$('.w500 form').css("display","block");
	$('.wrap_out').css("display","block");
	$('#skygqOverlay').css("display","block");
}
$("#confirm-commit").click(function() {
                var intL = $(".w500 input[type=checkbox]:checked").length; //获取除全选复选框外的所有选中项	
				var str1=$('#errorDescription').val().length;	
				var url_str = "http://www.yitiku.cn/";
                if (intL != 0&& str1<=500){ 
                    var error_type=$('.w500 input[type=checkbox]:checked').map(function() {
                    return $(this).val();}).get().join(",") ; 
					var error_info=$('#errorDescription').map(function() {
                    return $(this).val();}).get().join(",") ; 
					$.post(groupUrl+"/Public/user_send_error",{exam_id:error_exam_id,sub_id:error_sub_id,error_type:error_type,error_info:error_info,url_str:url_str
											});
					$("#errorDescription").val("");
					$(".checkboxerror").attr("checked",false);
					$(".mt26").addClass('disnone');
					$("#longdescription").addClass('disnone');
					$('.w500 form').css("display","none");
					$('.w500 .commit-success').css("display","block");
					/*$("#wrapClose").delay(3000).click();*/
					/*$('.wrap_out').delay(1000).fadeOut(500);
					$('#skygqOverlay').delay(1000).fadeOut(500);*/
					
					setTimeout(function () {
						$("#wrapClose").click();
					}, 2000);
                }
				else if(intL==0){
				$(".mt26").removeClass('disnone');
				$('.w500 form').css("display","block");}
				
				else if(str1>500){
				$("#longdescription").removeClass('disnone');
				$('.w500 form').css("display","block");
				
				}
				
            });


$("input[type=checkbox]").live("click",function(){
	$(".mt26").addClass('disnone');	
	});
$("#errorDescription").live("focus",function(){
	$("#longdescription").addClass('disnone');	
	});
 
</script>
	<!-- <img src="http://115.159.56.229/index.php" style="display:none;" /> -->
	<script src="${ctx }/static/js/jquery.skygqbox.js"></script>
	<script src="${ctx }/static/js/tiku_common.js"></script>
	<script type="text/javascript">  var groupUrl = '';
  var is_private = "";
  var ceping = "1";
  $(".onlineceping").live("click",function(){checkLogin(check_role,"start_online_test",$(this),true);return false;});
</script>
	<!--script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script-->
	<!-- Baidu share BEGIN -->
	<script type="text/javascript">window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":["mshare","qzone","tsina","weixin","renren","tqq","tieba","douban","sqq","youdao","qingbiji","fbook","twi","copy"],"bdPic":"","bdStyle":"0","bdSize":"16"},"slide":{"type":"slide","bdImg":"0","bdPos":"left","bdTop":"100"}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
	<!-- Baidu share END -->
	<div style="display: none;">
		<div id="mbIeContent">
			<div class="mbIe6">
				<h4
					style="line-height: 30px; float: left; font-size: 18px; text-align: center; width: 580px; padding-bottom: 22px; font-weight: bold;">
					您知道您的Internet Explorer过时了吗?</h4>
				<p
					style="line-height: 24px; float: left; font-size: 14px; text-indent: 2em;">为了得到我们网站最好的体验效果，我们建议您升级到最新版本的Internet
					Explorer或选择另外一个web浏览器。最流行的web浏览器在下面可以找到。</p>
				<p
					style="line-height: 24px; float: left; font-size: 14px; text-indent: 2em;">若不升级浏览器，部分内容将不能正常使用，确定不升级系统，请关闭弹出窗口，即可浏览本网站。</p>
				<div class="browser">
					<ul>
						<li><a class="chrome" href="https://www.google.com/chrome/"
							target="_blank"></a></li>
						<li><a class="firefox"
							href="http://www.mozilla.org/en-US/firefox/new/" target="_blank"></a></li>
						<li><a class="ie9"
							href="http://windows.microsoft.com/en-US/internet-explorer/downloads/ie/"
							target="_blank"></a></li>
						<li><a class="safari"
							href="http://www.apple.com/safari/download/" target="_blank"></a></li>
						<li><a class="opera" href="http://www.opera.com/download/"
							target="_blank"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div style="display: none;">
		<div id="mbcepingContent">
			<div class="mbceping">
				<h4>抱歉，只有购买了在线测评服务的用户才能使用该功能。</h4>
			</div>
		</div>
	</div>
	<div class="mbPaneltxt" id="tipvip" style="display: none;">
		<div class="mbdelQues">
			<h4>请先登录！</h4>
		</div>
	</div>
	<div style="display: none;">
		<div id="LcardTipContent">
			<div class="LCard">
				<p class="colf43">易题库学习卡需登录后才可以激活</p>
				<p class="w170">
					已有易题库账号？ <a href="http://www.yitiku.cn/login/back_url/myStudyCard"
						rel="nofollow">&nbsp;&nbsp;请登录</a>
				</p>
				<p class="w170">
					还没有账号？&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
						href="http://www.yitiku.cn/signin/" rel="nofollow"
						style="margin-left: 4px;">请注册</a>
				</p>
			</div>
		</div>
	</div>
	<!-- -- start --  全屏蒙版 -->
	<div
		style="background-color: #828282; z-index: 2000; left: 0; top: 0; text-align: center; display: none; width: 100%; height: 100%; opacity: 0.6; filter: alpha(opacity=60); -moz-opacity: 0.6; position: fixed;"
		id="showImg"></div>
	<!-- -- end --  全屏蒙版 -->
	<!-- -- start --  命题大赛宣传图 -->
	<div
		style="position: absolute; z-index: 2001; text-align: center; display: none; width: 100%;"
		id="migntidasai_showImg_content">
		<div style="width: 600px; height: 400px; margin: -2000px auto 0 auto;">
			<a href="http://www.yitiku.cn/2015mtds/?from_pop=1"
				id="mingtidasai_tanchuang_canjia"><img
				src="${ctx }/static/images/mingtidasai_tanchuang.png"
				width="600" height="400" style="z-index: 2001;"></a><a
				style="position: absolute; margin-top: 4px; margin-left: -46px;"
				href="javascript:;"><img
				src="${ctx }/static/images/datizhengbasai_xuanchuan_guanbi.png"
				width="42" height="42" id="mingtidasai_tanchuang_close"></a>
		</div>
	</div>
	<!-- -- end --  命题大赛宣传图 -->
	<!-- -- start -- 教师节活动宣传图 -->
	<div
		style="position: absolute; z-index: 2001; text-align: center; display: none; width: 100%;"
		id="2015jsj_showImg_content">
		<div style="width: 600px; height: 400px; margin: -2000px auto 0 auto;">
			<a href="http://www.yitiku.cn/zhuanti/2015jsj/?from_pop=1#choujiang"
				id="2015jsj_tanchuang_canjia"><img
				src="${ctx }/static/images/2015jsj_tanchuang.png" width="600"
				height="400" style="z-index: 2001;"></a><a
				style="position: absolute; margin-top: 4px; margin-left: -46px;"
				href="javascript:;"><img
				src="${ctx }/static/images/datizhengbasai_xuanchuan_guanbi.png"
				width="42" height="42" id="2015jsj_tanchuang_close"></a>
		</div>
	</div>
	<!-- -- end --  教师节活动宣传图 -->
	<script src="${ctx }/static/js/jquery.skygqbox.js"></script>
	<script type="text/javascript">// -- start --  答题争霸赛宣传图js
// -- end -- 答题争霸赛宣传图js

// -- start --  2015教师节宣传图js
// -- end -- 2015教师节宣传图js

//引导
$(function(){
	$(".guideSwitch").append("<a href='javascript:;' class='pl'>新手引导</a>");
	var tipVisibleF = GetCookie("tipVisibleF");
	/*if(tipVisibleF != "no"){
		showSearchTip();
		setSearchTip();
		$("#guideBox61").show();
		if($.browser.version == '7.0'){
			$(".guideBox").parent().css("zIndex","0");
			$("#guideBox61").parent().css("zIndex","3001");
		}
	}*/
	$(".guideSwitch a").live("click",function(){
		SetCookie("tStatus",2);
		$("#searchTipBg").detach();
		showSearchTip();
		setSearchTip();
		$("#guideBox61").show();
		if($.browser.version == '7.0'){
			$(".guideBox").parent().css("zIndex","0");
			$("#guideBox61").parent().css("zIndex","3001");
		}
	});
});
//登录
function inputTextSet(elemId,defauleValue,className){
		$("#"+elemId).live("focus",function(){
			if($(this).val()==defauleValue){
				$(this).val("");
			}
		});

		$("#"+elemId).live("blur",function(){
			if($.trim($(this).val())=="" || $.trim($(this).val())==defauleValue){
				$(this).val(defauleValue);
				if(className){
					$(this).addClass(className);
				}
			}else{
				if(className){
					$(this).removeClass(className);
				}
			}
		});
	}
	inputTextSet("mbemail","邮箱/手机号","input8f8");
	inputTextSet("mbpassword","密码","input8f8");
	inputTextSet("mbyzm","验证码","input8f8");

	

	//验证码
	
//密码input 的转换
$(document).ready(function(){
	 var showPwd1 = $(".pswd");
	 var pwd1 = $("#pwd");
	 pwd1.focus(function(){
		
		showPwd1.hide();
		
	});
	pwd1.blur(function(){
		if(pwd1.val()=="") {
			showPwd1.show();
			pwd1.show();
		}
	});
	if(pwd1.val()!=="")
	{showPwd1.hide();}
});


//焦点图效果
$(function() {
	$("#banner>ul>li").eq(0).css("z-index","1").animate({"opacity":"1","filter":"alpha(opacity=100),"});
	$("#banner .number a").eq(0).addClass("this");
	var len = $("#banner>ul>li").length;
	var index = 1;
	var picTimer;
	$("#banner .number a").click(function() {
		index = $("#banner .number a").index(this);
		showPics(index);
	}).eq(0).trigger("mouseover");

	$("#banner").hover(function() {
			clearInterval(picTimer);
		},function() {
		picTimer = setInterval(function() {
			showPics(index);
			index++;
			if(index == len) {index = 0;}
		},4000);
	}).trigger("mouseleave");
		function showPics(index) {
	$("#banner>ul li").css("z-index","0").stop().animate({"filter":"alpha(opacity=0),","opacity":"0"},2000);
	$("#banner>ul li").eq(index).css("z-index","1").stop().animate({"filter":"alpha(opacity=100),","opacity":"1"},2000);
	$("#banner .number a").stop().removeClass("this").eq(index).stop().addClass("this"); }
});

//顶部导航
//顶部导航
$(".subjectNav01").live("mouseover",function(){
		$(".subjectNav01 div").show();
	});
$(".subjectNav01").live("mouseout",function(){
		$(".subjectNav01 div").hide();
});
$(".subjectNav02").live("mouseover",function(){
		$(".subjectNav02 div").show();
	});
$(".subjectNav02").live("mouseout",function(){
		$(".subjectNav02 div").hide();
});
$(".subjectNav03").live("mouseover",function(){
		$(".subjectNav03 div").show();
	});
$(".subjectNav03").live("mouseout",function(){
		$(".subjectNav03 div").hide();
});
$(".subjectNav04").live("mouseover",function(){
    $(".subjectNav04 div").show();
  });
$(".subjectNav04").live("mouseout",function(){
    $(".subjectNav04 div").hide();
});
$("#loginAfterbtn").live("mouseover",function(){
		$("#loginAfterContent").show();
	});
$("#loginAfterbtn").live("mouseout",function(){
	   $("#loginAfterContent").show();
	});
$("#loginAfterContent").live("mouseover",function(){
		$(this).show();
});
$("#loginAfterContent").live("mouseout",function(){
	    $(this).hide();
});
$(".product li").live("mouseover",function(){
	 $(this).children("span").addClass("onhover");
});
 $(".product li").live("mouseout",function(){
	 $(this).children("span").removeClass("onhover");
});

</script>
	<script type="text/javascript">var showWindown = true;
var templateSrc = "http://www.yisiyixue.com/"; //设置loading.gif路径
function tipsWindown(title,content,width,height,drag,time,showbg,cssName,backcall) {
  $("#windown-box").remove(); //请除内容
  var width = width>= 950?this.width=950:this.width=width;      //设置最大窗口宽度
  var height = height>= 527?this.height=527:this.height=height;  //设置最大窗口高度
  var bodyHeight = $(window).height() + "px";//获取浏览器的高度
  if(showWindown == true) {
    var simpleWindown_html = new String;
      simpleWindown_html = "<div id=\"windownbg\" class=\"pngFix\" style=\"height:"+$(document).height()+"px;z-index: 999901\"></div>";
      simpleWindown_html += "<div id=\"windown-box\">";
      simpleWindown_html += "<div id=\"windown-title\"><h2></h2><span id=\"windown-close\">关闭</span></div>";
      simpleWindown_html += "<div id=\"windown-content-border\"><div id=\"windown-content\"></div></div>";
      simpleWindown_html += "</div>";
      $("body").append(simpleWindown_html);
      show = false;
  }
  contentType = content.substring(0,content.indexOf(":"));
  content = content.substring(content.indexOf(":")+1,content.length);
  switch(contentType) {
    case "text":
    $("#windown-content").html(content);
    break;
    case "id":
    $("#windown-content").html($("#"+content+"").html());
    break;
    case "img":
    $("#windown-content").ajaxStart(function() {
      $(this).html("<img src='"+templateSrc+"/images/loading.gif' class='loading' />");
    });
    $.ajax({
      error:function(){
        $("#windown-content").html("<p class='windown-error'>加载数据出错...</p>");
      },
      success:function(html){
        $("#windown-content").html("<img src="+content+" alt='' />");
      }
    });
    break;
    case "url":
    var content_array=content.split("?");
    $("#windown-content").ajaxStart(function(){
      $(this).html("<img src='"+templateSrc+"/images/loading.gif' class='loading' />");
    });
    $.ajax({
      type:content_array[0],
      url:content_array[1],
      data:content_array[2],
      error:function(){
        $("#windown-content").html("<p class='windown-error'>加载数据出错...</p>");
      },
      success:function(html){
        $("#windown-content").html(html);
        if(backcall)
          backcall();
      }
    });
    break;
    case "iframe":
    $("#windown-content").ajaxStart(function(){
      $(this).html("<img src='"+templateSrc+"/images/loading.gif' class='loading' />");
    });
    $.ajax({
      error:function(){
        $("#windown-content").html("<p class='windown-error'>加载数据出错...</p>");
      },
      success:function(html){
        $("#windown-content").html("<iframe src=\""+content+"\" width=\"100%\" height=\""+parseInt(height)+"px"+"\" scrolling=\"auto\" frameborder=\"0\" marginheight=\"0\" marginwidth=\"0\"></iframe>");
      }
    });
  }
  $("#windown-title h2").html(title);
  if(showbg == "true") {$("#windownbg").show();}else {$("#windownbg").remove();};
  //$("#windownbg").animate({opacity:"0.3"},"normal");//设置透明度
  $("#windownbg").css({"opacity":"0.3","filter":"alpha(opacity=30)"},"normal"); //myself 去除动画效果
  $("#windown-box").show();
  if( height >= 527 ) {
    $("#windown-title").css({width:(parseInt(width)+22)+"px"});
    $("#windown-content").css({width:(parseInt(width)+17)+"px",height:height+"px"});
  }else {
    $("#windown-title").css({width:(parseInt(width)+10)+"px"});
    $("#windown-content").css({width:width+"px",height:height+"px"});
  }
  var cw = document.documentElement.clientWidth,ch = document.documentElement.clientHeight,est = document.documentElement.scrollTop;
  var _version = $.browser.version;
  if ( _version == 6.0 ) {
    $("#windown-box").css({left:"50%",top:(parseInt((ch)/2)+est)+"px",marginTop: -((parseInt(height)+53)/2)+"px",marginLeft:-((parseInt(width)+32)/2)+"px",zIndex: "999999"});
  }else {
    $("#windown-box").css({left:"50%",top:"50%",marginTop:-((parseInt(height)+53)/2)+"px",marginLeft:-((parseInt(width)+32)/2)+"px",zIndex: "999999"});
  };
  var Drag_ID = document.getElementById("windown-box"),DragHead = document.getElementById("windown-title");

  var moveX = 0,moveY = 0,moveTop,moveLeft = 0,moveable = false;
    if ( _version == 6.0 ) {
      moveTop = est;
    }else {
      moveTop = 0;
    }
  var sw = Drag_ID.scrollWidth,sh = Drag_ID.scrollHeight;
    DragHead.onmouseover = function(e) {
      if(drag == "true"){DragHead.style.cursor = "pointer";}else{DragHead.style.cursor = "default";}
    };
    DragHead.onmousedown = function(e) {
    if(drag == "true"){moveable = true;}else{moveable = false;}
    e = window.event?window.event:e;
    var ol = Drag_ID.offsetLeft, ot = Drag_ID.offsetTop-moveTop;
    moveX = e.clientX-ol;
    moveY = e.clientY-ot;
    document.onmousemove = function(e) {
        if (moveable) {
        e = window.event?window.event:e;
        var x = e.clientX - moveX;
        var y = e.clientY - moveY;
          if ( x > 0 &&( x + sw < cw) && y > 0 && (y + sh < ch) ) {
            Drag_ID.style.left = x + "px";
            Drag_ID.style.top = parseInt(y+moveTop) + "px";
            Drag_ID.style.margin = "auto";
            }
          }
        }
    document.onmouseup = function () {moveable = false;};
    Drag_ID.onselectstart = function(e){return false;}
  }
  $("#windown-content").attr("class","windown-"+cssName);
  if( time == "" || typeof(time) == "undefined") {
    $("#windown-close").click(function() {
      showselect('t123_')
      $("#windownbg").remove();
      $("body").css({overflow: "auto"}); //弹出层消失后body释放高度
      $("#windown-box").fadeOut("fast",function(){$(this).remove();});
      //  $("#windown-box").hide();//为了去除弹出层的缓慢效果。myself
    });
  }else {
    setTimeout(closeWindown,time);
  }
  hideselect('t123_');
}
var closeWindown = function() {
  showselect('t123_');
  $("#windownbg").remove();
  $("body").css({overflow: "auto"}); //弹出层消失后body释放高度
    //$("#windown-box").hide();//为了去除弹出层的缓慢效果。myself
  $("#windown-box").fadeOut("fast",function(){$(this).remove();});
}
function hideselect(per)
{
  var _version = $.browser.version;
  if ( _version == 6.0 ) {
    $("select",document).each(function(){
      if($(this).attr('name'))
      {
        if($(this).attr('name').substring(0,5)==per)
        {
          name = $(this).attr('name').substring(5);
          $(this).attr('name',name);
          $(this).css('display','');
        }
        if($(this).css('display')!='none')
        {
          name = per+$(this).attr('name');
          $(this).attr('name',name);
        }
        $(this).css('display','none');
      }
    });
  }
}
function showselect(per)
{
  var _version = $.browser.version;
  if ( _version == 6.0 ) {
    $("select",document).each(function(){
      if($(this).attr('name'))
      {
        if($(this).attr('name').substring(0,5)==per)
        {
          name = $(this).attr('name').substring(5);
          $(this).attr('name',name);
          $(this).css('display','');
        }
      }
    });
  }
}
function showTipsWindown(title,id,width,height){
  tipsWindown(title,"id:"+id,width,height,"true","","true",id);
  $("body").css({height:"bodyHeight"});//弹出后body赋值高度，多余部分隐藏，浏览器不能滑动
}
function popTips18(){
  showTipsWindown("提示", 'tipContent1',360, 120);
}
function popTips25(){
  showTipsWindown("提示", 'LcardTipContent',497,200,false,0,1);
}
$("#tyLianxi").live("click",function(){
  access_ajax_call("online_lianxi");
});
</script>
	<!--[if IE 6]><script>$(document).ready(function() {
  function popTips19(){
    showTipsWindown("提示", 'mbIeContent',610, 280);
  };
  popTips19();
});
</script><![endif]-->
	<script type="text/javascript">  /*改版*/
//  function tabsubject(x,y,z){
//    $('#'+x).click(function(){
//      $(this).addClass('currt').siblings('li').removeClass('currt');
//      $('.shijuangaozhong ul').hide();
//      $('.gzMore').attr('href','/tiku/'+z);
//      $('.'+y).show();
//    })
//  }
//  function tabsubjectcz(x,y,z){
//    $('#'+x).click(function(){
//      $(this).addClass('currt').siblings('li').removeClass('currt');
//      $('.czMore').attr('href','/tiku/'+z);
//      $('.shijuanchuzhong ul').hide();
//      $('.'+y).show();
//    })
//  }
//  $(function(){
//    $('.shijuangaozhong ul').hide();
//    $('.shijuangaozhong .Gyw').show();
//    $('.shijuanchuzhong ul').hide();
//    $('.shijuanchuzhong .Cyw').show();
//    if($('.lastest')[0]){
//      $('.product').parent('.full').addClass('fullProduct');
//    }
//    else{
//      $('.product').parent('.full').removeClass('fullProduct');
//    }
//  })
//  tabsubject('Gfir','Gyw','yuwensj');
//  tabsubject('Gsec','Gsx','shuxuesj');
//  tabsubject('Gthi','Gyy','yingyusj');
//  tabsubject('Gfor','Ghx','huaxuesj');
//  tabsubject('Gfif','Gwl','wulisj');
//  tabsubject('Gsix','Gsw','shengwusj');
//  tabsubject('Gsev','Gls','lishisj');
//  tabsubject('Geig','Gdl','dilisj');
//  tabsubject('Gnin','Gzz','zhengzhisj');
//  tabsubjectcz('Cfir','Cyw','ywsj');
//  tabsubjectcz('Csec','Csx','sxsj');
//  tabsubjectcz('Cthi','Cyy','yysj');
//  tabsubjectcz('Cfor','Chx','hxsj');
//  tabsubjectcz('Cfif','Cwl','wlsj');
//  tabsubjectcz('Csix','Csw','swsj');
//  tabsubjectcz('Csev','Cls','lssj');
//  tabsubjectcz('Ceig','Cdl','dlsj');
//  tabsubjectcz('Cnin','Czz','zzsj');
//  $("#LearnCard").click(popTips25);
  
  
  $("#LearnCard").click(function(){
    $("#windownbg").css("background","#000");
  });
  var cont=$('#mbyzm').val();
$('#mbyzm').focus(function(){
  $(this).val('');
})
/*加时间轴*/
$('.time_line').on('click','.cls_btn',function(){
  $(this).parent('div').parent('div').slideUp();
})

$(function(){
  var now=new Date();
  var deadLine=new Date("2015-03-30");
  var timeLength=~~((now-deadLine)/1000/3600/24);
  var toAdd=~~(timeLength*5.64);
  var w=toAdd;
  var oWidth=$(".zhezhao_blue").width();
  //oWidth=oWidth+toAdd;
  oWidth = 938;
  $(".zhezhao_blue").width(oWidth);
})
/*
//获取临时密码
$(function(){
    $("#tmppwd_flg").val("true");
    $("#tmppwd").click(function(e){
      var sendaddr = $("#mbemail").val();
      $("#error_user").css('display','none');
      if($("#mbemail").val() == ""){
         $("#error_user").html("请输入手机号或邮箱地址！");
         $("#error_user").css('display','block');
         return;
      }
      if(/^\d+$/.test(sendaddr)){
         if(!/^1[3578]{1}\d{9}$/.test(sendaddr)){
           $("#error_user").html("请输入正确的手机号！");
           $("#error_user").css('display','block');
           return;
         }
      }else if(!/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(sendaddr)){
         $("#error_user").html("请输入正确的邮箱地址！");
         $("#error_user").css('display','block');
         return;
      }
      if($("#tmppwd_flg").val() == "true"){alert("asdf")
        var verify = $("#verify").val();
        var mob    = $("#mbemail").val();
        var postdata = {'sendaddr':mob,'verify':verify}

        $.post('/Public/getTmpPwd',postdata,function(data){
          if(data.result == "2"){
            alert("您收入的验证码有误");
          }else{
            send(60);
          }
        });
        
      }
    });
});
*/

// 60秒
function send(num) {
  $("#tmppwd_flg").val("false");
  var clearTimer = setInterval(changeTime, 1000);
  $("#tmppwd").html( 60 + "秒");
  function changeTime() {
    if (num > 0) {
      num = num - 1;
      curnum = num;
      $("#tmppwd").html(curnum + "秒");
    } else {
      if (num == 0) {
        $("#tmppwd").html("<a href='javascript:void(0);'>重新获取</a>");
        $("#tmppwd_flg").val("true");
        clearInterval(clearTimer);
        num = 60;
      }
      num = num - 1;
    }
  }
  clearTimer;
}
 </script>
	<script><!--
//错误信息闪烁提示框方法
function shake(ele,cls,times){
    var i = 0, t = false, o = ele.attr("class")+" ", c = "", times = times||2;
    if(t) return;
    t= setInterval(function(){
        i++;
        c = i%2 ? o+cls : o;
        ele.attr("class",c);
        if(i==2*times){
            clearInterval(t);
            ele.removeClass(cls);//隐藏闪烁框
            //ele.addClass(cls);//显示闪烁框
            //ct= setInterval(function(){ele.removeClass(cls);},2000);
        }
    },200);
}

/**
 * 被动触发闪烁框子
 */
function beidong(){

	//错误信息闪烁提示框
    if($(".userName").next("div").hasClass("loginShow")){
        shake($(".userName"),"errorMessage",3);
        $(".userName input").focus();
    }else if($(".password").next("div").hasClass("loginShow")){
        shake($(".password"),"errorMessage",3);
        $(".password input").focus();
    }
	
}

/**
 * 被动触发登录框子上边距对其
 */
function shangbianju(){
	//当出现提示信息垂直居中
    var ulm_h = $("#banner").height() - $(".userLoginModule ").height();
        $(".userLoginModule ").animate({'top':ulm_h / 2}, 600 );
}

$(function($) {

    //userLoginModule滑动门
    $(".userLogintitle li").each(function(i){
        $(this).click(function(){
            if($(this).index() == 0){
                $(this).addClass("titleActive_l").siblings().removeClass("titleActive_r");
                $(".userLoginCell").removeClass("loginShow1").addClass("loginHide1");
                $(".userLoginName").removeClass("loginHide1").addClass("loginShow1");
                $("div.messageBox").removeClass("loginShow");
            }else{
                $(this).addClass("titleActive_r").siblings().removeClass("titleActive_l");
            }
            $(".activeCons:eq("+i+")").show().siblings(".activeCons").hide();
            shangbianju();
        })
    });


    

    /*
    //记住密码复选框事件
    $(".record label").click(function(){
        if($(this).next().prop("checked")){
           $(this).addClass("labelbg_1");
        }else{
           $(this).removeClass("labelbg_1");
        }
    });
    */

    

    //input焦点
    $('.input_test').bind({
        focus:function(){
            if (this.value == this.defaultValue){
                this.value="";
            }
            $("div.abcd1234").removeClass("loginShow");
        },
        blur:function(){
            if (this.value == ""){
                this.value = this.defaultValue;
            }
        }
    });

    //免密码登录点击显示
    $(".noPassword").click(function(){
//        $(".userLoginModule").animate({
//            top: "18px"
//        }, 600 );
        $(".userLoginCell").removeClass("loginHide1").addClass("loginShow1");
        $(".userLoginName").removeClass("loginShow1").addClass("loginHide1");
        $("div.messageBox").removeClass("loginShow");
        shangbianju();
    });

    //隐藏学习卡提示层
    $(".learnCardShow").click(function(){
        $(".learnCardAlert").show();
    });
    $(".learnCard_Close").click(function(){
        $(".learnCardAlert").hide();
    });
    setTimeout(function(){$(".learnCardAlert").hide();}, 5000);



	//sl
	//sl
	//sl
	//sl
	//sl
	$("input[name=account]").blur(function(){
		var val = $(this).val();
		if(val!='邮箱/手机号' && val!=''){
			
			$.ajax({
	    		type: "POST",
	    		url: groupUrl+"/User/ccffuu",
	    		data: "val="+val,
	    		success: function(data){
	             	if(data==0){
						$("div.abcd123").each(function(){$(this).addClass("loginShow");})
						//$("div.abcd123").each(function(){$(this).text("您的账号还未注册，点击去注册").show();});
                        $("div.abcd123").each(function(){$(this).show();});
						beidong();
                        shangbianju();
                    }
	             	if(data==1){
	             		$("div.abcd123").each(function(){$(this).removeClass("loginShow");});
						$("div.abcd123").each(function(){$(this).hide();});
						shangbianju();
		            }  
	    		}
	    	});
			
		}
	});


	$("input[name=password]").blur(function(){
		var val = $(this).val();
		if(val!='请重新输入' && val!=''){
			$("div.abcd1234").each(function(){$(this).hide();})
		}
	});

	
	
	$("input[name=regular_login]").click(function(){

		$a = $(".userLoginName").find("input[name=account]").val();
		$b = $(".userLoginName").find("input[name=password]").val();
		
		$c = 1;
		if($a=="邮箱/手机号"){
			$("div.abcd123").each(function(){$(this).addClass("loginShow");})
			$("div.abcd123").each(function(){$(this).text("邮箱/手机号不能为空").show();})
			$c=2;
		}
		
		//if($b=="请重新输入"){
		//	$("div.abcd1234").each(function(){$(this).addClass("loginShow");})
		//	$("div.abcd1234").each(function(){$(this).show();})
		//	$c=2;
		//}
		
		if($c==2){
			return;
		}
		
		$("#abcd999").submit();
		
	});
	
	
	});
--></script>
	<!--学习卡登录弹出层 start-->
	<!--<div id='sc_alr' class='sc_alert' style="display: none"><div id="windownbg" style="height: 7399px; z-index: 999901; display: block; opacity: 0.3;"></div><div id="windown-box" style="left: 50%; top: 50%; margin-top: -163px; margin-left: -211px; z-index: 999999;"><div id="windown-title" style="width: 520px; cursor: pointer;"><h2>提示</h2><span id="windown-close">关闭</span></div><div id="windown-content-border"><div id="windown-content" class="windown-mbloginContent" style="width: 510px; height: 214px;"><div class="learnCardWindow1"><form action="/User/login" method="POST"><div class="learnCardWindow_left"><p>您的学习卡已被使用<br/>请输入激活时使用的手机号</p><input class="learnCardInput input_test" name="" type="text" value="请输入激活时使用的手机号" /><input class="learnCardBotton" name="" type="button" value="登 录" /></div><div class="learnCardWindow_right" style="padding-top:80px;"><div id="footerpanel"><h2>在线咨询</h2><div><div style="padding-left:15px;"><script charset="utf-8" type="text/javascript" src="http://wpa.b.qq.com/cgi/wpa.php?key=XzgwMDAyNDIwMV8yNDAzNzNfODAwMDI0MjAxXw"></script></div><h3>9:00-18:00</h3></div></div></div></form></div></div></div></div></div><div id='sc_igno' class='sc_alert' style="display: none"><div id="windownbg" style="height: 7399px; z-index: 999901; display: block; opacity: 0.3;"></div><div id="windown-box" style="left: 50%; top: 50%; margin-top: -163px; margin-left: -211px; z-index: 999999;"><div id="windown-title" style="width: 520px; cursor: pointer;"><h2>提示</h2><span id="windown-close">关闭</span></div><div id="windown-content-border"><div id="windown-content" class="windown-mbloginContent" style="width: 510px; height: 214px;"><div class="learnCardWindow2"><form action="/User/login" method="POST"><div class="learnCardWindow_left"><p style="margin-top:60px;">无需重复激活，下次使用手机号<br/>直接登录就好咯</p><input class="learnCardBotton" name="" type="button" value="知道了，开始使用易题库" /></div><div class="learnCardWindow_right" style="padding-top:55px;"><div id="footerpanel"><h2>在线咨询</h2><div><div style="padding-left:15px;"><script charset="utf-8" type="text/javascript" src="http://wpa.b.qq.com/cgi/wpa.php?key=XzgwMDAyNDIwMV8yNDAzNzNfODAwMDI0MjAxXw"></script></div><h3>9:00-18:00</h3></div></div></div></form></div></div></div></div></div><div id="sc_suc" class='sc_alert' style="display:none"><div id="windownbg" style="height: 7399px; z-index: 999901; display: block; opacity: 0.3;"></div><div id="windown-box" style="left: 50%; top: 50%; margin-top: -163px; margin-left: -211px; z-index: 999999;"><div id="windown-title" style="width: 520px; cursor: pointer;"><h2>提示</h2><span id="windown-close">关闭</span></div><div id="windown-content-border"><div id="windown-content" class="windown-mbloginContent" style="width: 510px; height: 200px;"><div class="learnCardWindow3"><form action="/User/login" method="POST"><div class="learnCardWindow_left"><p style="margin-bottom: 10px">激活成功！ 下次登录使用<br/>手机号就可以啦</p><div class="Windowlearn">为了地球的花花草草<br/>我还可以当书签使用哦</div><input class="learnCardBotton" name="" type="button" value="知道了，开始使用易题库" /></div><div class="learnCardWindow_right" style="padding-top:20px;"><img src="images/WindowlearnCard_sample.png" /></div></form></div></div></div></div></div>-->
	<!--学习卡登陆弹出层 end-->
	<script>    function tabFun(number, divName, divID,aID)
    {
        var tarArr = document.getElementsByTagName("div");
        var count = 0;
        for (var i = 0; i < tarArr.length; i++)
        {
            if (tarArr[i].getAttribute("name") != null && tarArr[i].getAttribute("name") == divName)
            {
                count++;
            }
        }
        //将所有的name=divNumber的div都加上hiddendiv
        for (var j = 1; j <= count; j++)
        {
            var divEle = document.getElementById(divID + j);
            if (!$(divEle).hasClass('hiddendiv'))
            {
                $(divEle).addClass("hiddendiv");
            }
            var tabA = document.getElementById(aID+j);
            if($(tabA).hasClass('tabactive'))
            {
                $(tabA).removeClass("tabactive");
            }
        }
        //给当前的div移除hiddendiv
        var divThis = document.getElementById(divID + number);
        $(divThis).removeClass("hiddendiv");
        var AThis=document.getElementById(aID+number);
        $(AThis).addClass("tabactive");
    }

    $(".tabmenu").find("li").on("click", function()
    {
        tabFun($(this).index()+1,'divNumber','tabContent','tablink');
    });
    $(".tabmenuo").find("li").on("click", function()
    {
        tabFun($(this).index()+1,'divNumbero','tabContento','tablinko');
    });
    $(".tabmenut").find("li").on("click", function()
    {
        tabFun($(this).index()+1,'divNumbert','tabContentt','tablinkt');
    });
    $(".tabmenuh").find("li").on("click", function()
    {
        tabFun($(this).index()+1,'divNumberh','tabContenth','tablinkh');
    });


    $(".tabmenuf").find("li").on("click", function()
    {
        tabFun($(this).index()+1,'divNumberf','tabContentf','tablinkf');
    });
    $(".tabmenus").find("li").on("click", function()
    {
        tabFun($(this).index()+1,'divNumbers','tabContents','tablinks');
    });
    $(".tabmenue").find("li").on("click", function()
    {
        tabFun($(this).index()+1,'divNumbere','tabContente','tablinke');
    });
    $(".tabmenui").find("li").on("click", function()
    {
        tabFun($(this).index()+1,'divNumberi','tabContenti','tablinki');
    });

</script>
	<script src="./易题库 - 智能选题组卷及测评系统_files/guide.js.下载"></script>
	<script>  $(function(){
    $.ajax({
          type: "POST",
          url: "Tiku/Index/fromDjgUpdata",
        });
  })
</script>
	<div class="bdshare-slide-button-box bdshare-slide-style-l0"
		style="top: 100px; width: 0px; z-index: 99999; left: 0px;"
		data-bd-bind="1520468067085">
		<a href="http://www.yitiku.cn/#" onclick="return false;"
			class="bdshare-slide-button" style="right: -24px;"></a>
		<div class="bdshare-slide-list-box" style="width: 0px; display: none;">
			<div class="bdshare-slide-top">分享到</div>
			<div class="bdshare-slide-list">
				<ul class="bdshare-slide-list-ul" style="width: 226px;"></ul>
			</div>
			<div class="bdshare-slide-bottom" style="width: 226px;">
				<a href="http://www.yitiku.cn/#" onclick="return false;"
					class="slide-more" data-cmd="more">更多...</a>
			</div>
		</div>
	</div>
</body>
</html>