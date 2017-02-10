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
<meta http-equiv="Content-Type" content="text/html;">
<title>阿姨简历登记</title>


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
<style type="text/css">
:root #content>#center>.dose>.dosesingle,:root #content>#right>.dose>.dosesingle
	{
	display: none !important;
}
</style>

<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>

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
<body>
	<header class="mui-bar mui-bar-nav"> <i
		class="fa fa-chevron-left" aria-hidden="true"></i>
	<h1 class="mui-title">简历登记</h1>
	</header>

	<div id="content" style="margin-bottom:50px;">
		<style type="text/css">
.checkbox-inline+.checkbox-inline {
	margin-left: 0;
}

label {
	margin-top: 5px;
}

.btn-file {
	position: relative;
	overflow: hidden;
}

.btn-file input[type=file] {
	position: absolute;
	top: 0;
	right: 0;
	min-width: 100%;
	min-height: 100%;
	font-size: 100px;
	text-align: right;
	filter: alpha(opacity = 0);
	opacity: 0;
	outline: none;
	background: white;
	cursor: inherit;
	display: block;
}
</style>
		<div class="container content">
			<form class="form-horizontal mt10" role="form"
				action="getNannyRegistrationData.html" method="post">
				<div class="form-group">
					<div class="col-xs-6">
						<img id="portrait" src="" width="70" height="75"> <span
							class="btn btn-default btn-file"> 头像<input type="file"
							onchange="showPreview(this)">
						</span> <input type="hidden" name="image" id="avatar">
					</div>

					<div class="col-xs-6">
						<img id="portrait2" src="" width="70" height="75"> <span
							class="btn btn-default btn-file"> 身份证<input type="file"
							name="fname" onchange="showPreview2(this)">
						</span> <input type="hidden" name="photo" id="photo">
					</div>

				</div>

				<div class="form-group">
					<label for="name" class="col-xs-3 control-label">姓名</label>
					<div class="col-xs-9">
						<input type="text" class="form-control client-job-desc"
							name="name" placeholder="真实姓名">
					</div>
				</div>
				<div class="form-group">
					<label for="street" class="col-xs-3 control-label">户籍地址</label>
					<div class="col-xs-9">
						<input type="text" class="form-control client-job-desc"
							name="street" placeholder="省/市">
					</div>
				</div>
				<div class="form-group">
					<label for="residence" class="col-xs-3 control-label">暂住地址</label>
					<div class="col-xs-9">
						<input type="text" class="form-control" name="residence"
							placeholder="具体地址">
					</div>
				</div>
				<div class="form-group">
					<label for="id_card" class="col-xs-3 control-label">身份证号</label>
					<div class="col-xs-9">
						<input type="text" class="form-control ai-id_card" name="id_card"
							placeholder="必填">
					</div>
				</div>
				<div class="form-group">
					<label for="phone" class="col-xs-3 control-label">联系号码</label>
					<div class="col-xs-9">
						<input type="text" class="form-control ai-phone" name="phone"
							placeholder="手机号码">
					</div>
				</div>
				<div class="form-group">
					<label for="residence" class="col-xs-3">服务工种</label>
					<div class="col-xs-9">
						<select class="form-control" name="type">

							<option value="住家保姆">住家保姆</option>

							<option value="不住家保姆">不住家保姆</option>

							<option value="上午半天">上午半天</option>

							<option value="下午半天">下午半天</option>

							<option value="月嫂">月嫂</option>

							<option value="钟点工">钟点工</option>

							<option value="高端保姆">高端保姆</option>

							<option value="差评保姆">差评保姆</option>

							<option value="周六周日">周六周日</option>

						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="skill_id" class="col-xs-3">服务职能</label>
					<div class="col-xs-9">
						<select class="form-control" name="skill_id">

							<option value="育儿兼家务">育儿兼家务</option>

							<option value="一般家务">一般家务</option>

							<option value="育儿嫂">育儿嫂</option>

							<option value="照顾老人">照顾老人</option>

							<option value="病人陪护">病人陪护</option>

							<option value="别墅高端家务">别墅高端家务</option>

							<option value="公司烧饭">公司烧饭</option>

							<option value="涉外家政">涉外家政</option>

							<option value="母婴护理">母婴护理</option>

						</select>
					</div>
				</div>
				<h2>个人详情</h2>
				<div class="form-group">
					<label for="education" class="col-xs-3">学历</label>
					<div class="col-xs-9">
						<select class="form-control" name="education">

							<option value="小学">小学</option>

							<option value="初中">初中</option>

							<option value="高中">高中</option>

							<option value="大专">大专</option>

							<option value="本科">本科</option>

						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="belief" class="col-xs-3">信仰</label>
					<div class="col-xs-9">
						<select class="form-control" name="belief">

							<option value="无宗教信仰">无宗教信仰</option>

							<option value="佛教">佛教</option>

							<option value="基督教">基督教</option>

							<option value="伊斯兰教">伊斯兰教</option>

							<option value="犹太教">犹太教</option>

							<option value="印度教">印度教</option>

							<option value="无神论">无神论</option>

							<option value="民间信仰">民间信仰</option>

						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="matrimony" class="col-xs-3">婚姻</label>
					<div class="col-xs-9">
						<select class="form-control" name="matrimony">

							<option value="已婚">已婚</option>

							<option value="未婚">未婚</option>

							<option value="丧偶">丧偶</option>

							<option value="离异">离异</option>

						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="party" class="col-xs-3">党籍</label>
					<div class="col-xs-9">
						<select class="form-control" name="party">

							<option value="群众">群众</option>

							<option value="共产党">共产党</option>

							<option value="其它党">其它党</option>

						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="height" class="col-xs-3 control-label">身高</label>
					<div class="col-xs-7">
						<input type="text" class="form-control client-job-desc"
							name="height" placeholder="">
					</div>
					cm
				</div>
				<div class="form-group">
					<label for="weight" class="col-xs-3 control-label">体重</label>
					<div class="col-xs-7">
						<input type="text" class="form-control" name="weight"
							placeholder="">
					</div>
					kg
				</div>
				<h2>个人能力</h2>
				<div class="form-group">
					<label for="name" class="col-xs-12 mt10">语言能力</label>
					<div class="col-xs-12">

						<label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="标准普通话" name="lang-1">标准普通话
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="普通话带有口音" name="lang-2">普通话带有口音
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="能听懂温州话" name="lang-3">能听懂温州话
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="温州话会简单交流" name="lang-4">温州话会简单交流
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="会温州话" name="lang-5">会温州话
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="简单英文" name="lang-6">简单英文
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="其它外语" name="lang-7">其它外语
						</label>

					</div>
					<label for="name" class="col-xs-12 mt10">荣誉/证书</label>
					<div class="col-xs-12">

						<label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="无培训记录" name="certificate-1">无培训记录
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="家政服务员" name="certificate-2">家政服务员
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="育婴师" name="certificate-3">育婴师
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="母婴护理" name="certificate-4">母婴护理
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="养老护理员" name="certificate-5">养老护理员
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="保育员" name="certificate-6">保育员
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="驾驶证" name="certificate-7">驾驶证
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="营养师" name="certificate-8">营养师
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="幼师" name="certificate-9">幼师
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="早教" name="certificate-10">早教
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="高端保姆" name="certificate-11">高端保姆
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="厨师" name="certificate-12">厨师
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="老师资格证" name="certificate-13">老师资格证
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="护士" name="certificate-14">护士
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" value="计算机四级" name="certificate-15">计算机四级
						</label>

					</div>
					<label for="name" class="col-xs-12 mt10">技能特长</label>
					<div class="col-xs-12">

						<label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="specialist-1" value="无">无
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="specialist-2" value="面食">面食
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="specialist-3" value="西餐">西餐
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="specialist-4" value="糕点">糕点
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="specialist-5" value="海鲜">海鲜
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="specialist-6" value="营养餐">营养餐
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="specialist-7" value="月子餐">月子餐
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="specialist-8" value="早教">早教
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="specialist-9" value="家常菜">家常菜
						</label>

					</div>
					<label for="name" class="col-xs-12 mt10">工作意向</label>
					<div class="col-xs-12">

						<label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="purpose-1" value="无">无
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="purpose-2" value="带刚出生宝宝">带刚出生宝宝
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="purpose-3" value="带六个月以上宝宝">带六个月以上宝宝
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="purpose-4" value="带一周岁以上宝宝">带一周岁以上宝宝
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="purpose-5" value="带二周岁以上宝宝">带二周岁以上宝宝
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="purpose-6" value="带三周岁以上宝宝">带三周岁以上宝宝
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="purpose-7" value="不带孩子">不带孩子
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="purpose-8" value="做一般家务，饭菜">做一般家务，饭菜
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="purpose-9" value="做高端别墅家务饭菜">做高端别墅家务饭菜
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="purpose-10" value="只照顾能自理的阿公、阿婆">只照顾能自理的阿公、阿婆
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="purpose-11" value="只照顾能自理的阿婆">只照顾能自理的阿婆
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="purpose-12" value="照顾阿公、阿婆，自理、不自理都可以">照顾阿公、阿婆，自理、不自理都可以
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="purpose-13" value="只照顾阿婆，自理、不自理都可以">只照顾阿婆，自理、不自理都可以
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="purpose-14" value="护理病人">护理病人
						</label> <label class="checkbox-inline col-xs-6"> <input
							type="checkbox" name="purpose-15" value="大的接送">大的接送
						</label>

					</div>
				</div>
				<div class="form-group">
					<label for="scope" class="col-xs-3">服务范围</label>
					<div class="col-xs-9">
						<select class="form-control" name="scope">

							<option value="全国">全国</option>

							<option value="温州">温州</option>

							<option value="新城">新城</option>

							<option value="时代广场">时代广场</option>

							<option value="火车站">火车站</option>

							<option value="黎明立交桥">黎明立交桥</option>

							<option value="大南门">大南门</option>

							<option value="江滨西路">江滨西路</option>

							<option value="牛山北路">牛山北路</option>

							<option value="状元">状元</option>

							<option value="黄龙">黄龙</option>

							<option value="新桥">新桥</option>

							<option value="万达广场">万达广场</option>

							<option value="瓯海新区府">瓯海新区府</option>

						</select>
					</div>
				</div>

				<div class="form-group">
					<label for="experience" class="col-xs-3 control-label">工作经验</label>
					<div class="col-xs-7">
						<input type="text" class="form-control" name="experience"
							placeholder="">
					</div>
					年
				</div>
				<div class="form-group">
					<label for="ref_salary" class="col-xs-3 control-label">工资要求</label>
					<div class="col-xs-7">
						<input type="text" class="form-control" name="ref_salary"
							placeholder="">
					</div>
					元/月
				</div>
				<div class="form-group">
					<div class="col-xs-offset-2 col-xs-9">
						<button type="submit" class="btn btn-default btn-block ai-submit">提交</button>
					</div>
				</div>
			</form>
		</div>
		<script type="text/javascript">
			$('.ai-submit').click(function() {
				if ($('.ai-id_card').val().length < 18) {
					alert('身份证号必填');
					return false;
				}
				if ($('.ai-phone').val().length < 11) {
					alert('手机号码必填');
					return false;
				}
			});
		</script>
		<script type="text/javascript">
			function showPreview(source) {
				var file = source.files[0];
				if (!/image\/\w+/.test(file.type)) {
					alert("请确保文件为图像类型");
					return false;
				}
				if (window.FileReader) {
					var fr = new FileReader();
					fr.onloadend = function(e) {
						document.getElementById("portrait").src = e.target.result;
						document.getElementById("avatar").value = e.target.result;
					};
					fr.readAsDataURL(file);
				}
			}
			function showPreview2(source) {
				var file = source.files[0];
				if (!/image\/\w+/.test(file.type)) {
					alert("请确保文件为图像类型");
					return false;
				}
				if (window.FileReader) {
					var fr = new FileReader();
					fr.onloadend = function(e) {
						document.getElementById("portrait2").src = e.target.result;
						document.getElementById("photo").value = e.target.result;
					};
					fr.readAsDataURL(file);
				}
			}
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