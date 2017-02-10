<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<meta http-equiv="Content-Type" content="text/html;">
<title>保姆信息展示</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="家政,阿姨,保姆,企业应用,管理软件,aioyun,aio">
<meta name="description" content="网络运行,助力家政。我们只做家政网络平台，家政网络的领导者！">
<link rel="stylesheet" href="./css/mobile.css">
<link
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<link href="//cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css"
	rel="stylesheet">
<link rel="stylesheet" href="./css/font-awesome.min.css">
<script src="http://hm.baidu.com/hm.js?c5a6557389d7a6c80278cb73003ffed3"></script>
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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

<script src="./css/api"></script>

</head>
<body>
	<header class="mui-bar mui-bar-nav"> <i
		class="fa fa-chevron-left" aria-hidden="true"></i> <i
		class="fa fa-search" aria-hidden="true" data-toggle="modal"
		data-target="#searchModal" style="float:right"></i>

	<h1 class="mui-title">
		<span class="all" data-id="0c6818da-5173-11e6-998d-52543c3a2aa7">全部保姆</span>

	</h1>
	</header>

	<div id="content" style="margin-bottom:50px;">
		<style type="text/css">
li a:link {
	color: #333;
}

li a:visited {
	color: gray;
}
</style>
		<div id="hacker-list" class="annotated-list content container">
			<div class="row text-center">
				<div class="col-xs-12 mt6 top-btn">
					<div class="col-xs-3 clickable op-job" data-toggle="modal"
						data-target="#jobModal" value="">
						工种 &nbsp;<i class="fa fa-sort-down" aria-hidden="true"></i>
					</div>
					<div class="col-xs-3 clickable op-skill div-left"
						data-toggle="modal" data-target="#skillModal" value="">
						能力 &nbsp;<i class="fa fa-sort-down" aria-hidden="true"></i>
					</div>
					<div class="col-xs-3 clickable op-age div-left" data-toggle="modal"
						data-target="#ageModal" value="">
						年龄 &nbsp;<i class="fa fa-sort-down" aria-hidden="true"></i>
					</div>
					<div class="col-xs-3 clickable div-left" data-toggle="modal"
						data-target="#sortModal" value="">
						排序 &nbsp;<i class="fa fa-sort-down" aria-hidden="true"></i>
					</div>
				</div>
			</div>
			<ul class="list row">
				<c:forEach var="ani" items="${pagehelper.list}">
					<shiro:user>
						<span class="skill hidden" id="judge">[1, 2, 3]</span>
						<c:choose>
							<c:when test="${ani.struts=='0'}">

								<li class="nanny clickable" data-id="${ani.id}">
									<div class="" style="float:right;margin:0;">
										<div class="panel-body" style="">
											<div>
												<span><b>审核</b></span> <span><b>|</b></span> <span><b>上/下
														线</b></span>
											</div>
											<div style="margin-top:30;float:right;margin-left:30"
												id="online_h${ani.id}" onclick="online(this,${ani.id})">上线</div>
											<div style="margin-top:30;float:right;" id="check_h${ani.id}"
												onclick="check(this,${ani.id})">通过</div>
										</div>
									</div>
									<div class="click_a " id="${ani.id}">

										<img class="avatar" src="${ani.image}" alt="avatar">
										<!-- <a href="/a/n/595"> -->
										<span class="name"><b>${ani.name}</b></span>
										<!-- </a>  -->
										<span class="salary" style="color:red">参考工资:${ani.wage}元/月</span>
										<div>
											<span class="age">${ani.age}</span>岁 | <span>${ani.education}</span>|
											<span class="city"> ${ani.census}</span>
										</div>
										<div>
											<span class="lst_job">${ani.type}</span>| <span
												class="job hidden">[4]</span> <span>${ani.functions}</span>
											<span class="skill hidden">[1, 2, 3]</span>
										</div>
										<div>
											更新时间:
											<fmt:formatDate value="${ani.inserttime}" type="date"
												dateStyle="long" />
											&nbsp;&nbsp;<br />手机号: <span class="distance"
												data-address="telphone">${ani.telphone}</span>
										</div>
									</div>
								</li>
							</c:when>
							<c:when test="${ani.struts=='1' && ani.online=='0'}">

								<li class="nanny clickable" data-id="${ani.id}">
									<div class="" style="float:right;margin:0;">
										<div class="panel-body" style="">
											<div>
												<span><b>审核</b></span> <span><b>|</b></span> <span><b>上/下
														线</b></span>
											</div>
											<div style="margin-top:30;float:right;margin-left:30"
												id="online_h${ani.id}" onclick="online(this,${ani.id})">上线</div>
											<div style="margin-top:30;float:right;" id="check_h${ani.id}"
												onclick="check(this,${ani.id})">取消</div>
										</div>
									</div>
									<div class="click_a " id="${ani.id}">

										<img class="avatar" src="${ani.image}" alt="avatar">
										<!-- <a href="/a/n/595"> -->
										<span class="name"><b>${ani.name}</b></span>
										<!-- </a>  -->
										<span class="salary" style="color:red">参考工资:${ani.wage}元/月</span>
										<div>
											<span class="age">${ani.age}</span>岁 | <span>${ani.education}</span>|
											<span class="city"> ${ani.census}</span>
										</div>
										<div>
											<span class="lst_job">${ani.type}</span>| <span
												class="job hidden">[4]</span> <span>${ani.functions}</span>
											<span class="skill hidden">[1, 2, 3]</span>
										</div>
										<div>
											更新时间:
											<fmt:formatDate value="${ani.inserttime}" type="date"
												dateStyle="long" />
											&nbsp;&nbsp;<br />手机号: <span class="distance"
												data-address="telphone">${ani.telphone}</span>
										</div>
									</div>
								</li>
							</c:when>
						</c:choose>
					</shiro:user>
					<c:choose>
						<c:when test="${ani.struts=='1' && ani.online=='1'}">

							<li class="nanny clickable" data-id="${ani.id}"><shiro:user>
									<div class="" style="float:right;margin:0;">
										<div class="panel-body" style="">
											<div>
												<span><b>审核</b></span> <span><b>|</b></span> <span><b>上/下
														线</b></span>
											</div>
											<div style="margin-top:30;float:right;margin-left:30"
												id="online_h${ani.id}" onclick="online(this,${ani.id})">下线</div>
											<div style="margin-top:30;float:right;" id="check_h${ani.id}"
												onclick="check(this,${ani.id})">取消</div>
										</div>
									</div>
								</shiro:user>
								<div class="click_a " id="${ani.id}">
									<img class="avatar" src="${ani.image}" alt="avatar">
									<!-- <a href="/a/n/595"> -->
									<span class="name"><b>${ani.name}</b></span>
									<!-- </a>  -->
									<span class="salary" style="color:red">参考工资:${ani.wage}元/月</span>
									<div>
										<span class="age">${ani.age}</span>岁 | <span>${ani.education}</span>|
										<span class="city"> ${ani.census}</span>
									</div>
									<div>
										<span class="lst_job">${ani.type}</span>| <span
											class="job hidden">[4]</span> <span>${ani.functions}</span> <span
											class="skill hidden">[1, 2, 3]</span>

									</div>
									<div>
										更新时间:
										<fmt:formatDate value="${ani.inserttime}" type="date"
											dateStyle="long" />
										&nbsp;&nbsp;<br />手机号: <span class="distance"
											data-address="telphone" style="margin-right:">${ani.telphone}</span>
									</div>
								</div></li>
						</c:when>
					</c:choose>
				</c:forEach>
			</ul>
			<!-- 模态框（Modal） -->
			<div class="modal fade" id="sortModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<ul class="list-group">
							<li class="list-group-item sort" data-sort="name">姓名</li>
							<!--  <li class="list-group-item sort" data-sort="distance">距离</li>-->
							<li class="list-group-item sort" data-sort="city">地址</li>
							<li class="list-group-item sort" data-sort="job">工作</li>
							<li class="list-group-item sort" data-sort="salary">工资</li>
						</ul>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>
			<div class="modal fade" id="searchModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content search-div">
						<div class="search-div">
							<input class="search">
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>

			<div class="modal fade" id="jobModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<ul class="list-group">
							<li class="list-group-item filter-job" value="">不限</li>

							<li class="list-group-item filter-job" value="1">住家保姆</li>

							<li class="list-group-item filter-job" value="2">不住家保姆</li>

							<li class="list-group-item filter-job" value="3">上午半天</li>

							<li class="list-group-item filter-job" value="4">下午半天</li>

							<li class="list-group-item filter-job" value="5">月嫂</li>

							<li class="list-group-item filter-job" value="6">钟点工</li>

							<li class="list-group-item filter-job" value="7">高端保姆</li>

							<li class="list-group-item filter-job" value="9">差评保姆</li>

							<li class="list-group-item filter-job" value="11">周六周日</li>

						</ul>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>
			<div class="modal fade" id="skillModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<ul class="list-group">
							<li class="list-group-item filter-skill" value="">不限</li>

							<li class="list-group-item filter-skill" value="1">育儿兼家务</li>

							<li class="list-group-item filter-skill" value="2">一般家务</li>

							<li class="list-group-item filter-skill" value="3">育儿嫂</li>

							<li class="list-group-item filter-skill" value="4">照顾老人</li>

							<li class="list-group-item filter-skill" value="5">病人陪护</li>

							<li class="list-group-item filter-skill" value="6">别墅高端家务</li>

							<li class="list-group-item filter-skill" value="7">公司烧饭</li>

							<li class="list-group-item filter-skill" value="8">涉外家政</li>

							<li class="list-group-item filter-skill" value="9">母婴护理</li>

						</ul>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>
			<div class="modal fade" id="ageModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<ul class="list-group">
							<li class="list-group-item filter-age" value="">不限</li>
							<li class="list-group-item filter-age" value="19">20以下</li>
							<li class="list-group-item filter-age" value="20">20到29</li>
							<li class="list-group-item filter-age" value="30">30到39</li>
							<li class="list-group-item filter-age" value="40">40到49</li>
							<li class="list-group-item filter-age" value="50">50以上</li>
						</ul>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>
			<!-- 分页 -->
			<div id="page_div">
				<%@ include file="/WEB-INF/jsp/common/pagehelper.jsp"%>
			</div>
			<!-- 分页结束 -->
		</div>

		<script>
			function queryAllPerson(pageNum, pageSize) {
				//$("body").load(
				//"NannyInformationPage.html?pageNum=" + pageNum
				//+ "&pageSize=" + pageSize);
				window.location.href = "searchNannyInformation.html?pageNum="
						+ pageNum + "&pageSize=" + pageSize + "&job="
						+ $('.op-job').attr('value') + "&skill="
						+ $('.op-skill').attr('value') + "&age="
						+ $('.op-age').attr('value');
				
			}

			function check(obj, id) {
				var wenzi = obj.innerHTML;
				if (wenzi == "通过") {
					obj.innerHTML = "取消";
					$("#online_h" + id).html("下线");// = "下线";
					$.post("changeNannyInformation.html?id=" + id + "&struts="
							+ "1");
					//alert($("#online_h"));
					$.post("onlineNannyInformation.html?id=" + id + "&struts="
							+ "1");
					//alert("2");
				} else if (wenzi == "取消") {
					obj.innerHTML = "通过";
					$("#online_h" + id).html("上线");// = "上线";
					$.post("changeNannyInformation.html?id=" + id + "&struts="
							+ "0");
					$.post("onlineNannyInformation.html?id=" + id + "&struts="
							+ "0");

				}
			}

			function online(obj, id) {

				var wenzi = obj.innerHTML;
				var wenzia = $("#check_h" + id).html();
				//alert(wenzi);
				if (wenzi == "上线") {
					if (wenzia == "取消") {
						obj.innerHTML = "下线";
						$.post("onlineNannyInformation.html?id=" + id
								+ "&struts=" + "1");
					} else if (wenzia == "通过") {
						alert("点击通过即可上线");
					}

				} else if (wenzi == "下线") {
					obj.innerHTML = "上线";
					$.post("onlineNannyInformation.html?id=" + id + "&struts="
							+ "0");
				}
			}

			function getUrlParam(name) {
				var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
				var r = window.location.search.substr(1).match(reg); //匹配目标参数  （从URL中截取数据）
				if (r != null)
					return unescape(r[2]);
				return null; //返回参数值
			}
			function filterGet() {
				window.location.href = "searchNannyInformation.html?pageNum="
						+ "" + "&pageSize=" + "" + "&job="
						+ $('.op-job').attr('value') + "&skill="
						+ $('.op-skill').attr('value') + "&age="
						+ $('.op-age').attr('value');
			}
			$(document)
					.ready(
							function() {
								$('.op-job').attr('value',
										getUrlParam('job') || '');
								$('.op-skill').attr('value',
										getUrlParam('skill') || '');
								$('.op-age').attr('value',
										getUrlParam('age') || '');
								//每一项的点击
								$('.click_a')
										.click(
												function() {
													window.location.href = "NannyDetailInformation.html?id="
															+ $(this)
																	.attr('id');
												});
							});
			// 检索查询
			$(".filter-job").click(function() {
				$('.op-job').attr('value', $(this).attr('value'));
				filterGet();
			});
			$(".filter-skill").click(function() {
				$('.op-skill').attr('value', $(this).attr('value'));
				filterGet();
			});
			$(".filter-age").click(function() {
				$('.op-age').attr('value', $(this).attr('value'));
				filterGet();
			});
		</script>
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