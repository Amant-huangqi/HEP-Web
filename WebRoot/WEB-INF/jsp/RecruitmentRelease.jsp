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
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>雇主招聘发布</title>

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
<script src="http://hm.baidu.com/hm.js?c5a6557389d7a6c80278cb73003ffed3"></script>
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
<style type="text/css">
:root #content>#center>.dose>.dosesingle,:root #content>#right>.dose>.dosesingle
	{
	display: none !important;
}
</style>
</head>
<body>
	<header class="mui-bar mui-bar-nav"> <i
		class="fa fa-chevron-left" aria-hidden="true"></i>
	<h1 class="mui-title">招聘</h1>
	</header>

	<div id="content" style="margin-bottom:50px;">
		<style type="text/css">
label {
	margin-top: 5px;
}
</style>
		<div class="container content">
			<form class="form-horizontal mt10" role="form"
				action="getRecruitmentRelease.html" method="get">
				<div class="form-group">
					<label for="job_type_id" class="col-xs-3">服务工种</label>
					<div class="col-xs-9">
						<select class="form-control" name="job_type_id">

							<option value="住家保姆">住家保姆</option>

							<option value="不住家保姆">不住家保姆</option>

							<option value="上午半天">上午半天</option>

							<option value="下午半天">下午半天</option>

							<option value="月嫂">月嫂</option>

							<option value="高端保姆">高端保姆</option>

						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="skill_id" class="col-xs-3">所需职能</label>
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
				<div class="form-group">
					<label for="job_description" class="col-xs-3 control-label">工作详情</label>
					<div class="col-xs-9">
						<input type="text" class="form-control client-job-desc"
							name="job_description" placeholder="至少8个字">
					</div>
				</div>
				<div class="form-group">
					<label for="demands" class="col-xs-3 control-label">对保姆要求</label>
					<div class="col-xs-9">
						<input type="text" class="form-control client-demands"
							name="demands" placeholder="至少8个字">
					</div>
				</div>
				<div class="form-group">
					<label for="salary" class="col-xs-3">参考工资</label>
					<div class="col-xs-7">
						<select class="form-control" name="salary" id="salary">

							<option value="discuss">面议</option>

							<option value="fixed">指导价</option>

							<option value="lt2000">2000以下</option>

							<option value="2000">2000~2900</option>

							<option value="3000">3000~3900</option>

							<option value="4000">4000~4900</option>

							<option value="gt5000">5000以上</option>

						</select> <input class="fiexed-price hidden form-control" type="text"
							name="fixed_price">
					</div>
					元/月
				</div>
				<div class="form-group">
					<label for="street" class="col-xs-3 control-label">家庭住址</label>
					<div class="col-xs-9">
						<input type="text" class="form-control" name="street"
							placeholder="具体住址">
					</div>
				</div>
				<div class="form-group">
					<label for="people" class="col-xs-3 control-label">家庭人口</label>
					<div class="col-xs-7">
						<input type="text" class="form-control" name="people"
							placeholder="">
					</div>
					人
				</div>
				<div class="form-group">
					<label for="area" class="col-xs-3 control-label">家庭面积</label>
					<div class="col-xs-7">
						<input type="text" class="form-control" name="area" placeholder="">
					</div>
					平方米
				</div>
				<div class="form-group">
					<label for="name" class="col-xs-3 control-label">联系人</label>
					<div class="col-xs-9">
						<input type="text" class="form-control client-name" name="name"
							placeholder="至少2个字">
					</div>
				</div>
				<div class="form-group">
					<label for="phone" class="col-xs-3 control-label">联系号码</label>
					<div class="col-xs-9">
						<input type="text" class="form-control client-phone" name="phone"
							placeholder="手机号必填">
					</div>
				</div>
				<p>备注，家里有宝宝，请填写生日，方便精确推荐阿姨</p>
				<div class="form-group">
					<label for="phone" class="col-xs-3 control-label">宝宝1生日</label>
					<div class="col-xs-9">
						<input type="text" class="form-control" name="child1"
							placeholder="日期格式：2008-08-08">
					</div>
				</div>
				<div class="form-group">
					<label for="phone" class="col-xs-3 control-label">宝宝2生日</label>
					<div class="col-xs-9">
						<input type="text" class="form-control" name="child2"
							placeholder="日期格式：2008-08-08">
					</div>
				</div>
				<!--         <fieldset>
            <div class="form-group">
                <label for="dtp_input1" class="col-xs-3 control-label">宝宝1生日</label>
                <div class="input-group date form_date col-xs-9" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input1" data-link-format="yyyy-mm-dd">
                    <input class="form-control" size="16" type="text" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
                <input type="hidden" id="dtp_input1" name="child1" value="" /><br/>
            </div>
      <div class="form-group">
                <label for="dtp_input2" class="col-xs-3 control-label">宝宝2生日</label>
                <div class="input-group date form_date col-xs-9" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <input class="form-control" size="16" type="text" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
          <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
        <input type="hidden" id="dtp_input2" name="child2" value="" /><br/>
            </div>
        </fieldset> -->

				<div class="form-group">
					<div class="col-xs-offset-2 col-xs-9">
						<button type="submit"
							class="btn btn-default btn-block client-submit">提交</button>
					</div>
				</div>
			</form>
		</div>
		<!-- <script type="text/javascript" src="/jiazheng/static/m/js/bootstrap-datetimepicker.min.js" charset="UTF-8"></script> -->
		<!-- <script type="text/javascript" src="/jiazheng/static/m/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script> 
<script type="text/javascript">
  $('.form_date').datetimepicker({
        language:  'zh-CN',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0
        });
</script>-->
		<script type="text/javascript">
			$('.client-submit').click(function() {
				if ($('.client-name').val().length < 2) {
					alert('联系人不能少于2个字！');
					return false;
				}
				if ($('.client-demands').val().length < 8) {
					alert('对保姆要求不能少于8个字！');
					return false;
				}
				if ($('.client-job-desc').val().length < 8) {
					alert('工作详情不能少于8个字！');
					return false;
				}
				if ($('.client-phone').val().length < 11) {
					alert('手机号码格式不正确！');
					return false;
				}
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