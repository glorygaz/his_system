<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<link rel="Bookmark" href="/favicon.ico" >
	<link rel="Shortcut Icon" href="/favicon.ico" />
	<!--[if lt IE 9]>
	<script type="text/javascript" src="lib/html5shiv.js"></script>
	<script type="text/javascript" src="lib/respond.min.js"></script>
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
	<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
	<!--[if IE 6]>
	<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
	<script>DD_belatedPNG.fix('*');</script>
	<![endif]-->
	<!--/meta 作为公共模版分离出去-->

	<title>现场挂号</title>
	<meta name="keywords" content="">
	<meta name="description" content="">
</head>
<body>
<article class="page-container">
	<form action="/regis" method="post" class="form form-horizontal" id="form-member-add">
		<div class="row cl">
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>发&ensp;票&ensp;号:</label>
			<div class="formControls col-xs-2 col-sm-2">
				<input type="text" class="input-text radius" value="" placeholder="" id="invoiceNum" name="invoiceNum" required>
			</div>
			<div class="formControls col-xs-2 col-sm-2">
				<input class="btn btn-primary radius" type="submit" id="submitButton" value="&nbsp;&nbsp;挂号&nbsp;&nbsp;">
			</div>
			<div class="formControls col-xs-2 col-sm-2">
				<input class="btn btn-primary radius" type="reset" value="&nbsp;&nbsp;清空&nbsp;&nbsp;">
			</div>
			<div class="formControls col-xs-2 col-sm-2">
				<button class="btn btn-primary radius" id="createInvoiceNum" type="button">生成发票号</button>
			</div>
			<div class="formControls col-xs-2 col-sm-2">
				<button class="btn btn-primary radius" id="createMedicalRecordId" type="button">生成病历号</button>
			</div>
			<label class="form-label col-xs-5 col-sm-5"></label>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-1 col-sm-1" style="font-weight: bold">挂号信息</label>
			<label class="form-label col-xs-11 col-sm-11"></label>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>病&ensp;历&ensp;号:</label>
			<div class="formControls col-xs-2 col-sm-2">
				<input type="text" class="input-text radius" value="" placeholder="" id="medicalRecordId" name="medicalRecordId" required>
			</div>
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>姓&emsp;&emsp;名:</label>
			<div class="formControls col-xs-2 col-sm-2">
				<input type="text" class="input-text radius" value="" placeholder="" id="name" name="name" required>
			</div>
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>性&emsp;&emsp;别:</label>
			<div class="formControls col-xs-1 col-sm-1">
				<span class="select-box radius"><select class="select" id="sex" name="sex" required>
					<option>男</option>
					<option>女</option>
				</select></span>
			</div>
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>年&emsp;&emsp;龄:</label>
			<div class="formControls col-xs-1 col-sm-1">
				<input type="text" class="input-text radius" value="" placeholder="" id="age" name="age" required>
			</div>
			<div class="formControls col-xs-1 col-sm-1">
				<span class="select-box"><select class="select" id="ageType" name="ageType" required>
					<option>岁</option>
					<option>月</option>
					<option>日</option>
				</select></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>出生日期:</label>
			<div class="formControls col-xs-2 col-sm-2">
				<input type="text" onfocus="WdatePicker()" id="birthday" name="birthday" class="input-text Wdate radius" required>
			</div>
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>身份证号:</label>
			<div class="formControls col-xs-2 col-sm-3">
				<input type="text" class="input-text radius" value="" placeholder="请在此处输入身份证号" id="idNum" name="idNum"
					   minlength="18" maxlength="18" required/>
			</div>
			<label class="form-label col-xs-1 col-sm-1">家庭住址:</label>
			<div class="formControls col-xs-2 col-sm-3">
				<input type="text" class="input-text radius" value="" placeholder="请在此处输入家庭住址" id="address" name="address"/>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>结算类别:</label>
			<div class="formControls col-xs-2 col-sm-2">
				<span class="select-box radius"><select class="select" id="settlementType" name="settlementType" required>
					<option>自费</option>
					<option>市医保</option>
				</select></span>
			</div>
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>看诊日期:</label>
			<div class="formControls col-xs-2 col-sm-2">
				<input type="text" onfocus="WdatePicker()" id="regisDate" name="regisDate" class="input-text Wdate radius" required>
			</div>
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>午&emsp;&emsp;别:</label>
			<div class="formControls col-xs-2 col-sm-1">
				<span class="select-box radius"><select class="select" id="noonDistinction" name="noonDistinction" required>
					<option>上午</option>
					<option>下午</option>
				</select></span>
			</div>
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>挂号科室:</label>
			<div class="formControls col-xs-2 col-sm-2">
				<span class="select-box radius"><select class="select" id="department" name="department" required>
					<c:forEach items="${deptNameList}" var="deptName">
						<option>${deptName}</option>
					</c:forEach>
				</select></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>号&emsp;&emsp;别:</label>
			<div class="formControls col-xs-2 col-sm-2">
				<span class="select-box radius"><select class="select" id="regisLevel" name="regisLevel" required>
					<option>专家号</option>
					<option>普通号</option>
				</select></span>
			</div>
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>看诊医生:</label>
			<div class="formControls col-xs-2 col-sm-2">
				<span class="select-box radius"><select class="select" id="doctor" name="doctor" required>
				</select></span>
			</div>
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>病&ensp;历&ensp;本:</label>
			<div class="formControls col-xs-1 col-sm-1">
				<input type="checkbox" class="check-box radius" id="isMedicalRecord" name="isMedicalRecord"/>
			</div>
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>应收金额:</label>
			<div class="formControls col-xs-2 col-sm-2">
				<input type="text" class="input-text radius" readonly="readonly" value="" placeholder="" id="amount" name="amount" required>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>收费方式:</label>
			<div class="formControls col-xs-2 col-sm-2">
				<span class="select-box radius"><select class="select" id="tollBy" name="tollBy" required>
					<option>现金</option>
					<option>医保卡</option>
					<option>银行卡</option>
					<option>信用卡</option>
					<option>微信</option>
					<option>支付宝</option>
					<option>云闪付</option>
					<option>其他</option>
				</select></span>
			</div>
		</div>
	</form>
</article>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript">
	//获取所选的科室的医生
	function  getDocList() {
		$("#doctor").empty();
		$.post("/getDocList",
				{deptName: $("#department option:selected").text(), regisLevelName: $("#regisLevel option:selected").text()},
				function (data, status) {
					if(data.success) {
						for (var i in data.data) {
							$("#doctor").append("<option>" + data.data[i] + "</option>");
						}
					}
				})
	}

	//获取挂号金额
	function getAmount() {
		$.post("/getRegisAmount", {regisLevelName: $("#regisLevel option:selected").text()}, function (data, status) {
			$("#amount").val(data);
		})
	}

	//设置为今日日期
	function setDate(){
		var time = new Date();
		var day = ('0' + time.getDate()).slice(-2);
		var month = ('0' + (time.getMonth() + 1)).slice(-2);
		var today = time.getFullYear() + '-' + month + '-' + day;
		$('#birthday').val(today);
		$('#regisDate').val(today);
	}

	//获取上个月份天数
	function mGetDate(){
		var date = new Date();
		var year = date.getFullYear();
		var month = date.getMonth();
		var d = new Date(year, month, 0);
		return d.getDate();
	}

	//计算年龄
	function getAge() {
		var today = new Date();
		var birthDate = new Date($("#birthday").val());
		var age = today.getFullYear() - birthDate.getFullYear();
		var m = today.getMonth() - birthDate.getMonth();//获取到月份后相减
		var d = today.getDate() - birthDate.getDate();
		if (m < 0 || (m === 0 && d < 0)){
			age--;//如果月份的结果小于等于0，或者日期相减的结果是0，年龄减去1
		}
		var ageSelector = $("#age");
		var ageTypeSelector = $("#ageType");
		ageSelector.val(age);
		ageTypeSelector.val("岁");
		if(age === 0 && m !== 0 && d >= 0){
			ageSelector.val(m);
			ageTypeSelector.val("月");
		}
		if(age === 0 && (m === 0 || m === 1)){
			if(d < 0){
				ageSelector.val(d+mGetDate());
			}else{
				ageSelector.val(d);
			}
			ageTypeSelector.val("日");
		}
	}

	function submit(){
		$.ajax({
			type:"POST",
			dataType:"json",
			url:"/regis",
			data: $("#form-member-add").serialize(),
			success: function (result) {
				if(result.success){
					$("#name").val("");
					$("#idNum").val("");
					$("#birthday").val("");
					$("#address").val("");
					getAge();
				}else{
					alert(result.error)
				}
			},
			error: function () {
				alert("提交时错误");
			}
		})
	}

	$(document).ready(function () {
		getDocList();
		getAmount();
		setDate();
		getAge();

		//生成发票号
		$("#createInvoiceNum").click(function () {
			$.get("/getNewInvoiceNum", function (data, status) {
				$("#invoiceNum").val(data);
			})
		});
		//生成病历号
		$("#createMedicalRecordId").click(function () {
			$.get("/getNewMedicalRecordId", function (data, status) {
				$("#medicalRecordId").val(data);
			})
		});

		//自动补全病人信息
		$("#medicalRecordId").on('input propertychange', function () {
			var num = $(this).val();
			if($.isNumeric(num)){
				$.post("/searchPatient", {medicalRecordId: num}, function (data, status) {
					var obj = data;
					if (obj.success) {
						$("#name").val(obj.data.name);
						if (obj.data.sex) {
							$("#sex").val("女");
						} else {
							$("#sex").val("男");
						}
						$("#birthday").val(obj.data.birthday);
						$("#idNum").val(obj.data.idnum);
						$("#address").val(obj.data.address);
						getAge();
					} else {
						$("#name").val("");
						$("#idNum").val("");
						$("#birthday").val("");
						$("#address").val("");
						getAge();
					}
				})
			}else{
				$("#name").val("");
				$("#idNum").val("");
				$("#birthday").val("");
				$("#address").val("");
				getAge();
			}
		});

		//获取所选的科室的医生
		$("#department,#regisLevel").change(function () {
			getDocList();
		});

		$("#regisLevel").change(function () {
			getAmount();
		});

		$("#birthday").change(function () {
			getAge();
		});


		//挂号
		$("#submitButton").click(function () {
			if($("#invoiceNum").val() == "" ||
			$("#medicalRecordId").val() == "" ||
			$("#name").val() == "" || $("#regisDate").val() == "" ||
			$("#idNum").val() == "" || $("#birthday").val() == ""){
				return;
			}
			var url = $("#form-member-add").attr("action");
			var data = $("#form-member-add").serialize();
			$.ajax({
				type:"POST",
				dataType:"json",
				url:url,
				data: data,
				success: function (result) {
					if(result.success){
						$("#invoiceNum").val("");
						$("#medicalRecordId").val("");
						$("#name").val("");
						$("#idNum").val("");
						$("#birthday").val("");
						$("#address").val("");
						getAge();
						layer.msg('挂号成功',{icon:1,time:1250});
					}else{
						layer.msg(result.error,{icon:2,time:1250});
					}
				}
			})
		})
	});

	$(function(){
		$('.skin-minimal input').iCheck({
			checkboxClass: 'icheckbox-blue',
			radioClass: 'iradio-blue',
			increaseArea: '20%'
		});

		$("#form-member-add").validate({
			rules:{
				username:{
					required:true,
					minlength:2,
					maxlength:16
				},
				sex:{
					required:true,
				},
				mobile:{
					required:true,
					isMobile:true,
				},
				email:{
					required:true,
					email:true,
				},
				uploadfile:{
					required:true,
				},

			},
			onkeyup:false,
			focusCleanup:true,
			success:"valid",
			submitHandler:function(form){
				//$(form).ajaxSubmit();
				var index = parent.layer.getFrameIndex(window.name);
				//parent.$('.btn-refresh').click();
				parent.layer.close(index);
			}
		});
	});
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>