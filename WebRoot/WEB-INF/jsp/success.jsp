<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title></title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="家政,阿姨,保姆,企业应用,管理软件,aioyun,aio">
<meta name="description" content="网络运行,助力家政。我们只做家政网络平台，家政网络的领导者！">
<link rel="stylesheet" href="./css/mobile.css">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	提交成功，等待审核
	<br>
	<a href="jump.html">跳转页面</a>
</body>
</html>
