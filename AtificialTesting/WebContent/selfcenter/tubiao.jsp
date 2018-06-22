<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html style="height: 100%">
<head>
<meta charset="utf-8">
<script type="text/javascript" src="${ctx }/static/js/echarts.min.js"></script>
<script type="text/javascript" src="${ctx }/static/js/echarts-gl.min.js"></script>
<script type="text/javascript" src="${ctx }/static/js/ecStat.min.js"></script>
<script type="text/javascript" src="${ctx }/static/js/dataTool.min.js"></script>
<script type="text/javascript" src="${ctx }/static/js/china.js"></script>
<script type="text/javascript" src="${ctx }/static/js/world.js"></script>
<script type="text/javascript" src="${ctx }/static/js/dataTool.min.js"></script>
<script type="text/javascript" src="${ctx }/static/js/bmap.min.js"></script>
<script type="text/javascript" src="${ctx }/static/js/simplex.js"></script>

<link rel="stylesheet" href="${ctx }/selfcenter/css/login.css">
<link rel="stylesheet" href="${ctx }/selfcenter/css/layui.css">
</head>
<body style="height: 100%; margin: 0">
	<c:set var="num" value="0" />
	<c:set var="key0" value="key" />
	<c:set var="value0" value="value" />
	<c:forEach items="${myMap}" var="map">
		<c:set var="num" value="${num+1}" />
		<c:set var="key1" value="${key0}_${num}" />
		<c:set var="value1" value="${value0}_${num}" />
		<input type="hidden" value="${map.key}" id="${key1 }" />
		<input type="hidden" value="${map.value}" id="${value1 }" />
	</c:forEach>
	<input type="hidden" value=${date } id="id2" />
	<input type="hidden" value=${num } id="num" />
	<div id="container" style="height: 100%"></div>

	<script type="text/javascript">
		//获取学生名字数组
		var StudentName = new Array()
		var a = parseInt(document.getElementById("num").value);
		for (var i = 1; i <= a; i++) {
			var Name = document.getElementById("key_" + i).value;
			StudentName[i - 1] = Name;
		}
		//获取学生总分数组
		var StudentScore = new Array()
		for (var i = 1; i <= a; i++) {
			var Name = document.getElementById("value_" + i).value;
			var score=parseInt(Name);
			StudentScore[i - 1] = score;
		}

		
		
		var test2 = document.getElementById("id2").value;

		var dom = document.getElementById("container");
		var myChart = echarts.init(dom);
		var app = {};
		option = null;
		app.title = '多 X 轴示例';

		var colors = [ '#5793f3', '#d14a61', '#675bba' ];

		option = {
			color : colors,

			tooltip : {
				trigger : 'none',
				axisPointer : {
					type : 'cross'
				}
			},
			legend : {
				data : [ '成绩' ]
			},
			grid : {
				top : 70,
				bottom : 50
			},
			xAxis : [
					{
						type : 'category',
						axisTick : {
							alignWithLabel : true
						},
						axisLine : {
							onZero : false,
							lineStyle : {
								color : colors[1]
							}
						},
						axisPointer : {
							label : {
								formatter : function(params) {
									return '成绩 '
											+ params.value
											+ (params.seriesData.length ? '：'
													+ params.seriesData[0].data
													: '');
								}
							}
						},
						data :StudentName
					},
					{
						type : 'category',
						axisTick : {
							alignWithLabel : true
						},
						axisLine : {
							onZero : false,
							lineStyle : {
								color : colors[0]
							}
						},
						axisPointer : {
							label : {
								formatter : function(params) {
									return '成绩  '
											+ params.value
											+ (params.seriesData.length ? '：'
													+ params.seriesData[0].data
													: '');
								}
							}
						},
						data : StudentName
					} ],
			yAxis : [ {
				type : 'value'
			} ],
			series : [
					{
						name : '2015 降水量',
						type : 'line',
						xAxisIndex : 1,
						smooth : true,
						data : StudentScore
					} ]
		};
		;
		if (option && typeof option === "object") {
			myChart.setOption(option, true);
		}
	</script>
	<div class="layui-carousel video_mask">
			<div id="qwe" style="align:center">
				<a href="${ctx }/artificial/toExcal?date=${date }" class="login_btn layui-btn layui-btn-radius layui-btn-normal">智能推荐</a>
			</div>
		</div>
	
</body>
</html>