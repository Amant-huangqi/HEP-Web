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
<title>招聘信息</title>


<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="家政,阿姨,保姆,企业应用,管理软件,aioyun,aio">
<meta name="description" content="网络运行,助力家政。我们只做家政网络平台，家政网络的领导者！">
<link rel="stylesheet" href="./css/mobile.css">
<link
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="./css/font-awesome.min.css">
<link href="//cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css"
	rel="stylesheet">

<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<style type="text/css">
:root #content>#right>.dose>.dosesingle,:root #content>#center>.dose>.dosesingle
	{
	display: none !important;
}
</style>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="./css/api"></script>
<style>
html,* {
	-webkit-user-select: text !important;
	-moz-user-select: text !important;
}
</style>
<script type="text/javascript" src="./css/getscript"></script>
</head>
<body class="">
	<header class="mui-bar mui-bar-nav"> <i
		class="fa fa-chevron-left" aria-hidden="true"></i>

	<h1 class="mui-title">招聘信息</h1>
	</header>

	<div id="content" style="margin-bottom:50px;">
		<div id="hacker-list" class="annotated-list content container">
			<div class="row text-center">
				<div class="col-xs-12 mt6 top-btn">
					<div class="col-xs-3 clickable op-job" data-toggle="modal"
						data-target="#jobModal" value="">
						工种 &nbsp;<i class="fa fa-sort-down" aria-hidden="true"></i>
					</div>
					<div class="col-xs-3 div-left clickable op-skill"
						data-toggle="modal" data-target="#skillModal" value="">
						职能 &nbsp;<i class="fa fa-sort-down" aria-hidden="true"></i>
					</div>
					<div class="col-xs-3 div-left clickable op-salary"
						data-toggle="modal" data-target="#salaryModal" value="">
						工资 &nbsp;<i class="fa fa-sort-down" aria-hidden="true"></i>
					</div>
					<div class="col-xs-3 div-left clickable" data-toggle="modal"
						data-target="#sortModal">
						排序 &nbsp;<i class="fa fa-sort-down" aria-hidden="true"></i>
					</div>
					<!-- <i class="fa fa-search mt10" aria-hidden="true" data-toggle="modal" data-target="#searchModal" style="float:right">搜索</i>                                -->
				</div>
			</div>
			<ul class="list row">
				<c:forEach var="ani" items="${pagehelper.list}">
					<shiro:user>
						<c:choose>
							<c:when test="${ani.struts=='0'}">

								<li class="client" data-id="${ani.id}">
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

										<span class="name"><b>${ani.addressa}&nbsp;&nbsp;${ani.employer}</b></span>
										<div style="font-size:14px;font-weight:300;">
											<span class="job_dsp">${ani.type}</span> | <span
												class="skill_dsp">${ani.functions}</span> | <span>${ani.population}</span>口之家
											| <span class="area">${ani.area}</span>平方米 <span
												class="job hidden">1</span> <span class="skill hidden">1</span>
										</div>
										<div style="color:red;font-size:14px;font-weight:300;">
											<c:choose>
												<c:when test="${ani.wage=='discuss'}">
													<span class="salary_dsp">面议</span>
													<span class="fixed_price"></span>
													<span class="salary hidden">4000</span>
												</c:when>
												<c:when test="${ani.wage=='fixed'}">
													<span class="salary_dsp">指导价</span>
													<span class="fixed_price"></span>
													<span class="salary hidden">4000</span>
												</c:when>
												<c:when test="${ani.wage=='lt2000'}">
													<span class="salary_dsp">2000以下</span>
													<span class="fixed_price"></span>元/月 <span
														class="salary hidden">4000</span>
												</c:when>
												<c:when test="${ani.wage=='2000'}">
													<span class="salary_dsp">2000~2900</span>
													<span class="fixed_price"></span>元/月 <span
														class="salary hidden">4000</span>
												</c:when>
												<c:when test="${ani.wage=='3000'}">
													<span class="salary_dsp">3000~3900</span>
													<span class="fixed_price"></span>元/月 <span
														class="salary hidden">4000</span>
												</c:when>
												<c:when test="${ani.wage=='4000'}">
													<span class="salary_dsp">4000~4900</span>
													<span class="fixed_price"></span>元/月 <span
														class="salary hidden">4000</span>
												</c:when>
												<c:when test="${ani.wage=='gt5000'}">
													<span class="salary_dsp">5000以上</span>
													<span class="fixed_price"></span>元/月 <span
														class="salary hidden">4000</span>
												</c:when>


											</c:choose>

										</div>
										<div>
											更新时间: <span><fmt:formatDate value="${ani.time}"
													type="date" dateStyle="long" /></span> &nbsp;&nbsp;手机号:<span
												class="distance"  >${ani.telphone}</span>
										</div>
									</div>
								</li>
							</c:when>

							<c:when test="${ani.struts=='1' && ani.online=='0'}">

								<li class="client" data-id="${ani.id}">
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

										<span class="name"><b>${ani.addressa}&nbsp;&nbsp;${ani.employer}</b></span>
										<div style="font-size:14px;font-weight:300;">
											<span class="job_dsp">${ani.type}</span> | <span
												class="skill_dsp">${ani.functions}</span> | <span>${ani.population}</span>口之家
											| <span class="area">${ani.area}</span>平方米 <span
												class="job hidden">1</span> <span class="skill hidden">1</span>
										</div>
										<div style="color:red;font-size:14px;font-weight:300;">
											<c:choose>
												<c:when test="${ani.wage=='discuss'}">
													<span class="salary_dsp">面议</span>
													<span class="fixed_price"></span>
													<span class="salary hidden">4000</span>
												</c:when>
												<c:when test="${ani.wage=='fixed'}">
													<span class="salary_dsp">指导价</span>
													<span class="fixed_price"></span>
													<span class="salary hidden">4000</span>
												</c:when>
												<c:when test="${ani.wage=='lt2000'}">
													<span class="salary_dsp">2000以下</span>
													<span class="fixed_price"></span>元/月 <span
														class="salary hidden">4000</span>
												</c:when>
												<c:when test="${ani.wage=='2000'}">
													<span class="salary_dsp">2000~2900</span>
													<span class="fixed_price"></span>元/月 <span
														class="salary hidden">4000</span>
												</c:when>
												<c:when test="${ani.wage=='3000'}">
													<span class="salary_dsp">3000~3900</span>
													<span class="fixed_price"></span>元/月 <span
														class="salary hidden">4000</span>
												</c:when>
												<c:when test="${ani.wage=='4000'}">
													<span class="salary_dsp">4000~4900</span>
													<span class="fixed_price"></span>元/月 <span
														class="salary hidden">4000</span>
												</c:when>
												<c:when test="${ani.wage=='gt5000'}">
													<span class="salary_dsp">5000以上</span>
													<span class="fixed_price"></span>元/月 <span
														class="salary hidden">4000</span>
												</c:when>


											</c:choose>

										</div>
										<div>
											更新时间: <span><fmt:formatDate value="${ani.time}"
													type="date" dateStyle="long" /></span> &nbsp;&nbsp;手机号:<span
												class="distance"  >${ani.telphone}</span>
										</div>
									</div>
								</li>
							</c:when>
						</c:choose>
					</shiro:user>

					<c:choose>
						<c:when test="${ani.struts=='1' && ani.online=='1'}">

							<li class="client" data-id="${ani.id}"><shiro:user>
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

									<span class="name"><b>${ani.addressa}&nbsp;&nbsp;${ani.employer}</b></span>
									<div style="font-size:14px;font-weight:300;">
										<span class="job_dsp">${ani.type}</span> | <span
											class="skill_dsp">${ani.functions}</span> | <span>${ani.population}</span>口之家
										| <span class="area">${ani.area}</span>平方米 <span
											class="job hidden">1</span> <span class="skill hidden">1</span>
									</div>
									<div style="color:red;font-size:14px;font-weight:300;">
										<c:choose>
											<c:when test="${ani.wage=='discuss'}">
												<span class="salary_dsp">面议</span>
												<span class="fixed_price"></span>
												<span class="salary hidden">4000</span>
											</c:when>
											<c:when test="${ani.wage=='fixed'}">
												<span class="salary_dsp">指导价</span>
												<span class="fixed_price"></span>
												<span class="salary hidden">4000</span>
											</c:when>
											<c:when test="${ani.wage=='lt2000'}">
												<span class="salary_dsp">2000以下</span>
												<span class="fixed_price"></span>元/月 <span
													class="salary hidden">4000</span>
											</c:when>
											<c:when test="${ani.wage=='2000'}">
												<span class="salary_dsp">2000~2900</span>
												<span class="fixed_price"></span>元/月 <span
													class="salary hidden">4000</span>
											</c:when>
											<c:when test="${ani.wage=='3000'}">
												<span class="salary_dsp">3000~3900</span>
												<span class="fixed_price"></span>元/月 <span
													class="salary hidden">4000</span>
											</c:when>
											<c:when test="${ani.wage=='4000'}">
												<span class="salary_dsp">4000~4900</span>
												<span class="fixed_price"></span>元/月 <span
													class="salary hidden">4000</span>
											</c:when>
											<c:when test="${ani.wage=='gt5000'}">
												<span class="salary_dsp">5000以上</span>
												<span class="fixed_price"></span>元/月 <span
													class="salary hidden">4000</span>
											</c:when>
										</c:choose>

									</div>
									<div>
										更新时间: <span><fmt:formatDate value="${ani.time}"
												type="date" dateStyle="long" /></span> &nbsp;&nbsp;手机号:<span
											class="distance" >${ani.telphone}</span>
									</div>
								</div></li>
						</c:when>

					</c:choose>
				</c:forEach>
			</ul>
			<!-- 模态框（Modal） -->
			<div class="modal fade" id="sortModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true"
				style="display: none;">
				<div class="modal-dialog">
					<div class="modal-content">
						<ul class="list-group">
							<li class="list-group-item sort" data-sort="name">地址</li>
							<!--  <li class="list-group-item sort" data-sort="distance">距离</li>-->
							<li class="list-group-item sort" data-sort="job">工种</li>
							<li class="list-group-item sort" data-sort="skill">职能</li>
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
				aria-labelledby="myModalLabel" aria-hidden="true"
				style="display: none;">
				<div class="modal-dialog">
					<div class="modal-content">
						<ul class="list-group">
							<li class="list-group-item filter-job" value="">不限</li>

							<li class="list-group-item filter-job" value="1">住家保姆</li>

							<li class="list-group-item filter-job" value="2">不住家保姆</li>

							<li class="list-group-item filter-job" value="3">上午半天</li>

							<li class="list-group-item filter-job" value="4">下午半天</li>

							<li class="list-group-item filter-job" value="5">月嫂</li>

							<li class="list-group-item filter-job" value="7">高端保姆</li>

						</ul>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>
			<div class="modal fade" id="skillModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true"
				style="display: none;">
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

							<li class="list-group-item filter-skill" value="9">母婴护理</li>o

						</ul>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>
			<div class="modal fade" id="salaryModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true"
				style="display: none;">
				<div class="modal-dialog">
					<div class="modal-content">
						<ul class="list-group">
							<li class="list-group-item filter-salary" value="">不限</li>

							<li class="list-group-item filter-salary" value="discuss">面议</li>

							<li class="list-group-item filter-salary" value="fixed">指导价</li>

							<li class="list-group-item filter-salary" value="lt2000">2000以下</li>

							<li class="list-group-item filter-salary" value="2000">2000~2900</li>

							<li class="list-group-item filter-salary" value="3000">3000~3900</li>

							<li class="list-group-item filter-salary" value="4000">4000~4900</li>

							<li class="list-group-item filter-salary" value="gt5000">5000以上</li>

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
				window.location.href = "searchRecruitmentInformation.html?pageNum="
						+ pageNum + "&pageSize=" + pageSize + "&job="
						+ $('.op-job').attr('value') + "&skill="
						+ $('.op-skill').attr('value') + "&salary="
						+ $('.op-salary').attr('value');
			}

			function check(obj, id) {
				var wenzi = obj.innerHTML;
				if (wenzi == "通过") {
					obj.innerHTML = "取消";
					$("#online_h" + id).html("下线");// = "下线";
					$.post("changeRecruitmentInformation.html?id=" + id
							+ "&struts=" + "1");
					//alert($("#online_h"));
					$.post("onlineRecruitmentInformation.html?id=" + id
							+ "&struts=" + "1");
					//alert("2");
				} else if (wenzi == "取消") {
					obj.innerHTML = "通过";
					$("#online_h" + id).html("上线");// = "上线";
					$.post("changeRecruitmentInformation.html?id=" + id
							+ "&struts=" + "0");
					$.post("onlineRecruitmentInformation.html?id=" + id
							+ "&struts=" + "0");

				}
			}

			function online(obj, id) {

				var wenzi = obj.innerHTML;
				var wenzia = $("#check_h" + id).html();
				//alert(wenzi);
				if (wenzi == "上线") {
					if (wenzia == "取消") {
						obj.innerHTML = "下线";
						$.post("onlineRecruitmentInformation.html?id=" + id
								+ "&struts=" + "1");
					} else if (wenzia == "通过") {
						alert("点击通过即可上线");
					}

				} else if (wenzi == "下线") {
					obj.innerHTML = "上线";
					$.post("onlineRecruitmentInformation.html?id=" + id
							+ "&struts=" + "0");
				}
			}

			function getUrlParam(name) {
				var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
				var r = window.location.search.substr(1).match(reg); //匹配目标参数
				if (r != null)
					return unescape(r[2]);
				return null; //返回参数值
			}
			function filterGet() {
				window.location.href = "searchRecruitmentInformation.html?pageNum="
						+ "" + "&pageSize=" + "" + "&job="
						+ $('.op-job').attr('value') + "&skill="
						+ $('.op-skill').attr('value') + "&salary="
						+ $('.op-salary').attr('value');
			}
			$(document).ready(function() {
				$('.op-job').attr('value', getUrlParam('job') || '');
				$('.op-skill').attr('value', getUrlParam('skill') || '');
				$('.op-salary').attr('value', getUrlParam('salary') || '');
			});
			$(".filter-job").click(function() {
				$('.op-job').attr('value', $(this).attr('value'));
				filterGet();
			});
			$(".filter-skill").click(function() {
				$('.op-skill').attr('value', $(this).attr('value'));
				filterGet();
			});
			$(".filter-salary").click(function() {
				$('.op-salary').attr('value', $(this).attr('value'));
				filterGet();
			});
			$('.click_a')
					.click(
							function() {
								window.location.href = "RecruitmentDetailedInformation.html?id="
										+ $(this).attr('id');
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