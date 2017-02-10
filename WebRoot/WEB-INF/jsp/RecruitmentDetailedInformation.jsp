<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;">
<title>招聘信息</title>


<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="家政,阿姨,保姆,企业应用,管理软件,aioyun,aio">
<meta name="description" content="网络运行,助力家政。我们只做家政网络平台，家政网络的领导者！">
<link rel="stylesheet" href="./css/mobile.css">
<link href="//cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<link
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="./css/font-awesome.min.css">

<script src="http://hm.baidu.com/hm.js?c5a6557389d7a6c80278cb73003ffed3"></script>
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="./css/api"></script>
<style type="text/css">
:root #content>#right>.dose>.dosesingle,:root #content>#center>.dose>.dosesingle
	{
	display: none !important;
}
</style>
<style>
html,* {
	-webkit-user-select: text !important;
	-moz-user-select: text !important;
}
</style>
<script type="text/javascript" src="./css/getscript"></script>
</head>
<body>
	<header class="mui-bar mui-bar-nav"> <i
		class="fa fa-chevron-left" aria-hidden="true"></i>
	<h1 class="mui-title"><c:out value="${NaayData.employer}"></c:out></h1>
	</header>
	
	<div id="content" style="margin-bottom:50px;">
		<style type="text/css">
i {
	color: green
}

.mui-bar i {
	color: #428bca;
}
</style>
		<div class="content container bg-gray">
			<div class="row section" style="margin-top:0px;padding-top:8px;">
				<div class="col-xs-12" style="padding:10;font-size:x-large">
					<b>订单号：NO.K00<c:out value="${NaayData.id}"></c:out></b>
				</div>
				

			</div>
			<div class="row">
				<div class="col-xs-12 section" style="margin-top:0;">
					<p>
						<i class="fa fa-female" aria-hidden="true"></i> 家庭住址：<c:out value="${NaayData.addressa}"></c:out>
					</p>
					<p>
						<i class="fa fa-heart" aria-hidden="true"></i>
						所需工种：<c:out value="${NaayData.type}"></c:out>
					</p>
					<p>
						<i class="fa fa-star" aria-hidden="true"></i>
						所需职能：<c:out value="${NaayData.functions}"></c:out>
					</p>
					<p>
						<i class="fa fa-user-md" aria-hidden="true"></i>
						家庭人口：<c:out value="${NaayData.population}"></c:out>
					</p>
					<p>
						<i class="fa fa-safari" aria-hidden="true"></i>
						家庭面积：<c:out value="${NaayData.area}"></c:out>平方米
					</p>
					<p>
						<i class="fa fa-gear" aria-hidden="true"></i> 参考工资：
						<c:choose>
							<c:when test="${NaayData.wage=='discuss'}">
								<span style="color:red">面议</span>
							</c:when>
							<c:when test="${NaayData.wage=='fixed'}">
								<span class="salary_dsp">指导价</span>

							</c:when>
							<c:when test="${NaayData.wage=='lt2000'}">
								<span class="salary_dsp">2000以下</span>
								<span class="fixed_price"></span>元/月
							</c:when>
							<c:when test="${NaayData.wage=='2000'}">
								<span class="salary_dsp">2000~2900</span>
								<span class="fixed_price"></span>元/月
							</c:when>
							<c:when test="${NaayData.wage=='3000'}">
								<span class="salary_dsp">3000~3900</span>
								<span class="fixed_price"></span>元/月
							</c:when>
							<c:when test="${NaayData.wage=='4000'}">
								<span class="salary_dsp">4000~4900</span>
								<span class="fixed_price"></span>元/月
							</c:when>
							<c:when test="${NaayData.wage=='gt5000'}">
								<span class="salary_dsp">5000以上</span>
								<span class="fixed_price"></span>元/月
							</c:when>
						</c:choose>
					</p>
					<hr>
					<p>
						<i class="fa fa-clone" aria-hidden="true"></i> 工作详情：
						<c:out value="${NaayData.detail}"></c:out>
					</p>
					<p>
						<i class="fa fa-clock-o" aria-hidden="true"></i> 保姆要求：
						<c:out value="${NaayData.claim}"></c:out>
					</p>

					<p>
						<i class="fa fa-microphone" aria-hidden="true"></i> 更新时间：
						<fmt:formatDate value="${NaayData.time}" type="date" dateStyle="long"/>
					</p>
				</div>


			</div>
		</div>
	</div>
	<script src="./css/list.min.js"></script>
	<script src="./css/my.js"></script>
	<script>
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "//hm.baidu.com/hm.js?c5a6557389d7a6c80278cb73003ffed3";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>

</body>
</html>