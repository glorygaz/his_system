<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="lib/html5shiv.js"></script>
    <script type="text/javascript" src="lib/respond.min.js"></script>

    <![endif]-->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin"/>
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css"/>
    <link rel="stylesheet" href="lib/zTree/v3/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <!--[if IE 6]>
    <script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js"></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>医生诊疗</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 门诊医生 <span
        class="c-gray en">&gt;</span> 门诊病历 <a class="btn btn-primary radius r" style="line-height:1.6em;margin-top:3px"
                                              href="javascript:location.replace(location.href);" title="刷新"><i
        class="Hui-iconfont">&#xe68f;</i></a></nav>
<table class="table">
    <tr>
        <td width="260" class="va-t">
<%--            <ul id="treeDemo" class="panel panel-primary"></ul>--%>
            <div class="panel panel-primary" style="box-shadow:1px 1px 1px #888888;">
                <div class="panel-heading">
                    <p class="panel-title">患者选择:</p>
                </div>
                <div class="panel-body">
                    <ul id="myTab" class="nav nav-tabs">
                        <li class="active">
                            <a href="#personal" data-toggle="tab">
                                本人
                            </a>
                        </li>
                        <li><a href="#department" data-toggle="tab">
                                科室
                            </a>
                        </li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade in active" id="personal" >
                            <p class="inTitle">&ensp;&ensp;未诊患者:</p>
                            <div style="overflow:auto; height:200px;">
                                <table class="table table-hover" id="patientUndoP">
                                    <c:forEach items="${patientPersonalUndo}" var="personalUndo">
                                        <tr class="patientLi"
                                            onclick="selectPatient(this, ${personalUndo.regisId}, ${personalUndo.medReId}, '${personalUndo.name}', ${personalUndo.age}, '${personalUndo.ageType}', '${personalUndo.sex}', '${personalUndo.regisState}')">
                                            <td>${personalUndo.medReId}</td>
                                            <td>${personalUndo.name}</td>
                                            <td>${personalUndo.age}${personalUndo.ageType}</td>
                                        </tr>
                                    </c:forEach>
                                </table>
                            </div>
                            <p class="inTitle">&ensp;&ensp;已诊患者:</p>
                            <div style="overflow:auto; height:200px;">
                                <table class="table table-hover" id="patientDoneP" >
                                    <c:forEach items="${patientPersonalDone}" var="personalDone">
                                        <tr class="patientLi"
                                            onclick="selectPatient(this, ${personalDone.regisId}, ${personalDone.medReId}, '${personalDone.name}', ${personalDone.age}, '${personalDone.ageType}', '${personalDone.sex}', '${personalDone.regisState}')">
                                            <td>${personalDone.medReId}</td>
                                            <td>${personalDone.name}</td>
                                            <td>${personalDone.age}${personalDone.ageType}</td>
                                        </tr>
                                    </c:forEach>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="department">
                            <p class="inTitle">&ensp;&ensp;未诊患者:</p>
                            <div style="overflow:auto; height:200px;">
                                <table class="table table-hover" id="patientUndoD" >
                                    <c:forEach items="${patientDeptUndo}" var="deptUndo">
                                        <tr class="patientLi"
                                            onclick="selectPatient(this, ${deptUndo.regisId}, ${deptUndo.medReId}, '${deptUndo.name}', ${deptUndo.age}, '${deptUndo.ageType}', '${deptUndo.sex}', '${deptUndo.regisState}')">
                                            <td>${deptUndo.medReId}</td>
                                            <td>${deptUndo.name}</td>
                                            <td>${deptUndo.age}${deptUndo.ageType}</td>
                                        </tr>
                                    </c:forEach>
                                </table>
                            </div>
                            <p class="inTitle">&ensp;&ensp;已诊患者:</p>
                            <div style="overflow:auto; height:200px;">
                                <table class="table table-hover" id="patientDoneD">
                                    <c:forEach items="${patientDeptDone}" var="deptDone">
                                        <tr class="patientLi"
                                            onclick="selectPatient(this, ${deptDone.regisId}, ${deptDone.medReId}, '${deptDone.name}', ${deptDone.age}, '${deptDone.ageType}', '${deptDone.sex}', '${deptDone.regisState}')">
                                            <td>${deptDone.medReId}</td>
                                            <td>${deptDone.name}</td>&emsp;
                                            <td>${deptDone.age}${deptDone.ageType}</td>
                                        </tr>
                                    </c:forEach>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </td>
        <td class="va-t">
            <div>
                <label class="label" style="background-color: #0e90d2">患者姓名:</label>
                <label id="name" style="width: 65px"></label>

                <label class="label" style="background-color: #0e90d2">病&ensp;历&ensp;号:</label>
                <label id="medReId" style="width: 65px"></label>

                <label class="label" style="background-color: #0e90d2">年&emsp;&emsp;龄:</label>
                <label id="age" style="width: 40px"></label>

                <label class="label" style="background-color: #0e90d2">性&emsp;&emsp;别:</label>
                <label id="sex" style="width: 40px"></label>

                <label class="label" style="background-color: #0e90d2">看诊状态:</label>
                <label id="state" style="width: 65px"></label>
            </div>
            <iframe id="medicalRecordIframe" Name="medicalRecordIframe" FRAMEBORDER=0 SCROLLING=AUTO width=100% height=600px
                    SRC="/medicalRecord">
            </iframe>
        </td>
    </tr>
</table>

<%--隐藏input--%>
<input type="text" value="" id='patientRegisId' hidden>
<input type="text" value="" id='patientMedRecId' hidden>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--使用ztree插件，也可以自行选择其他插件显示 -->
<script type="text/javascript" src="lib/zTree/v3/js/jquery.ztree.all-3.5.min.js"></script>
<script type="text/javascript">
    function selectPatient(obj, regisId, medRecId, name, age, ageType, sex, state){
        $(".patientLi").removeClass("info");
        $(obj).addClass("info");
        $("#name").text(name);
        $("#medReId").text(medRecId);
        $("#age").text(age+ageType);
        $("#sex").text(sex);
        $("#state").text(state);
        $("#patientRegisId").val(regisId);
        $("#patientMedRecId").val(medRecId);
        $("#medicalRecordIframe")[0].contentWindow.searchDiagnosis(regisId);

        if(state === "诊毕"){
            $("#medicalRecordIframe")[0].contentWindow.homepageFilled(regisId);
            $("#medicalRecordIframe")[0].contentWindow.prescriptionFilled(regisId);
        }
    }

    $(document).ready(function () {
        $('#myTab a').click(function (e) {
            e.preventDefault();
            $(this).tab('show');
        })
    });
</script>
</body>
<style>
    .inTitle{
        background-color: #0e90d2;
        color: white;
        border-radius: 5px;
        font-weight: bold;
    }
</style>
</html>
