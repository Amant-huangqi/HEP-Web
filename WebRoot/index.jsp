<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>跳转页面</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="家政,阿姨,保姆,企业应用,管理软件,aioyun,aio">
<meta name="description" content="网络运行,助力家政。我们只做家政网络平台，家政网络的领导者！">
<link rel="stylesheet" href="./css/mobile.css">
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="panel panel-default"
		style="margin: 0 auto; width:700px;height:380px;margin-top:70px;">
		<div class="panel-body">
			<div class="">
				<div class="panel-body">
					Hello
					<shiro:principal property="username" />
					<span style="float:right"><shiro:guest>
							<a href="/HEP-Web/login">权限登录</a>
						</shiro:guest> <shiro:user>
							<a href="/HEP-Web/logout">权限退出</a>
						</shiro:user></span>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-body" style="text-align:center;">
					<a href="NannyRegistration.html">保姆简历登记</a>
				</div>
			</div>
			<div class="panel panel-default" style="text-align:center;">
				<div class="panel-body">
					<a href="NannyInformation.html">保姆信息展示</a>
				</div>
			</div>
			<div class="panel panel-default" style="text-align:center;">
				<div class="panel-body">
					<a href="RecruitmentRelease.html">雇主发布招聘信息</a>
				</div>
			</div>
			<div class="panel panel-default" style="text-align:center;">
				<div class="panel-body">
					<a href="RecruitmentInformation.html">雇主招聘信息展示</a>
				</div>
			</div>

		</div>
	</div>


</body>
</html>
