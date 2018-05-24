<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="com.entity.Choicequestion"%>
<%@ page import="com.entity.Bigquestion"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ctx }/static/css/base.min1.css">
<link rel="stylesheet" href="${ctx }/static/css/artDialog-skin-ot2.min1.css">
<link rel="stylesheet" href="${ctx }/static/css/main.min1.css">
<style type="text/css">
	.ans{
	width:300px;
	background-color: white;
	float: left;
	margin : 10px 0px 15px 40px;
}
	.ans2{
		padding:10px 10px 10px 10px;
	}
	.ans3{
		width:300px;
	}
	.judge{
		margin : 10px 50px 15px 50px;
		float: left;
		
		background-color:white;
		
	}
	.judge-1{
		
		margin : 20px 20px 20px 20px;
		
	}
	.judge2{
	width:1920px;
	heigth:100px;
	background-color:white;
	float:left;
	
	}
	.judge2-1{
		width:500px;
		
		margin:0 auto;
		background-color:#dcdbdb;
	}
	.judge3{
		width:200px;
		height:500px;
		background-color:white;
		float:left;
		margin : 20px 20px 20px 20px;
	}
	.judge2-1-1{
		float:left;
		margin:5px 5px 5px 5px;
	}
</style>
</head>
<body>
<link rel="stylesheet" href="${ctx }/static/css/test-preview.min.css">
	<div class="header">
		<div class="header-inner g-container f-cb">
			<div class="header-logo">
				<a href=""><img
					src="${ctx }/static/images/app_logo_zujuan.png" alt="组卷网"></a>
			</div>
			<div class="header-nav">
				<span class="split"></span>
				<a href="" class="help">
					<i class="icona-home"></i>网站首页
				</a> 
				<span class="split"></span>
				<a>购买VIP</a>
				<span class="split"></span>
				<a>激活VIP卡</a>
				<span class="split"></span>
				<a>团体购买</a> 
				<span class="split"></span> 
				<a href="">淘宝店</a> 
				<span class="split"></span>
				<div class="loginbox">
				<a shref="/login" class="login">
					<span>注册&amp;登录</span>
				</a>
			</div>
		</div>
	</div>
	<div class="breadcrumb g-container">
		<i class="icona-dingwei"></i>位置： <a href="">首页</a>
	</div>
	<div class="ans">
		<div class="ans3">
				<h3>标准答案</h3>
		</div>
		<div class="ans2">
			<p>${Judge.answer }</p>
		</div>
	</div>
	<div class="judge3">
		<p>学生姓名：${Judge.student_name }</p>
		<p>学生班级：${Judge.classes }</p>
		<p>答题时间：${Judge.date }</p>
		<p>当前题目：${sessionScope.JudgePage }</p>
		<p>所有题目：${sessionScope.Judges.size() }</p>
	</div>
	<div class="judge">
		<div class="judge-1">
			<img alt="" src="${ctx }/static/images/${Judge.img }">
		</div>
	</div>
	<div class="judge2">
		<form action="${ctx }/Judge/submit2">
		<input type="hidden" name="id" value="${Judge.id }" />
		<div class="judge2-1">
			<div class="judge2-1-1">
				<input type="submit" value="上一页" name="submit" type="up">
				<!--  <a href="${ctx }/Judge/ChangePage?ChangeJudgePage=up">上一题</a>-->
			</div>
			<div class="judge2-1-1">
				<input type="submit" value="下一页" name="submit" type="down">
				<!--  <a href="${ctx }/Judge/ChangePage?ChangeJudgePage=down">下一题</a>-->
			</div>
			<div class="judge2-1-1" >
				输入分数：<input type="text" id="field0" name="score" value="${Judge.score }">
			</div>
			<div class="judge2-1-1">
				<input type="submit" value="保存" name="submit" type="submit"/>
			</div>
			<div class="judge2-1-1">
				<input type="button" value="满分" onclick="fullmark(${Judge.fullmark })">
			</div>
			<div class="judge2-1-1">
				<input type="submit" value="提交" name="submit" type="save"/>
			</div>
			</form>
		</div>
		<script>
			function fullmark(str)
			{
				
				document.getElementById("field0").value=str;
			}
		</script>
		
	</div>
</body>
</html>