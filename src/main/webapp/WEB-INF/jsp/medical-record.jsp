<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
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

    <title>医生</title>
</head>
<body>
<div class="page-container">
    <div id="tab-system" class="HuiTab">
        <div class="tabBar cl">
            <span>病历首页</span>
            <span>检查申请</span>
            <span>检验申请</span>
            <span>门诊确诊</span>
            <span>处置申请</span>
            <span>成药处方</span>
            <span>草药处方</span>
            <span>费用查询</span>
        </div>
        <div class="tabCon">
            <div class="row cl">
<%--                <iframe id="homepage" name="homepage" src="/homepage" FRAMEBORDER=0 SCROLLING=AUTO width=100% height=500 marginwidth="0" marginheight="0"></iframe>--%>
                <form class="form form-horizontal" id="homepageAndDiagnosis">
                    <div class="row cl" style="background-color: #eaf1f5; text-align:center;" >
                        <button class="btn" id="submit" type="button" style="color: #337ab7; background: transparent; border: none;">
                            <i class='Hui-iconfont'>&#xe610;</i>&ensp;提交
                        </button>
                        &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
                        <button class="btn" id="reset" type="reset" style="color: #337ab7; background: transparent; border: none;">
                            <i class='Hui-iconfont'>&#xe60b;</i>&ensp;清空所有
                        </button>
                        &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
                        <a class="btn" href="javascript:location.replace(location.href);" id="flush" type="button" style="color: #337ab7; background: transparent; border: none;">
                            <i class='Hui-iconfont'>&#xe68f;</i>&ensp;刷新
                        </a>
                    </div>
                    <div class="row cl">
                        <label style="width: 20px"></label>
                        <label class="label" style="background-color: #0e90d2;">病史内容:</label>
                    </div>
                    <div class="row cl">
                        <label class="form-label col-xs-2 col-sm-2"><span class="c-red">*</span>主诉：</label>
                        <div class="formControls col-xs-9 col-sm-9">
                            <textarea style="overflow:auto" class="input-text radius" value="" placeholder="" name="chiefComplaint" id="chiefComplaint" required></textarea>
                        </div>
                    </div>
                    <div class="row cl">
                        <label class="form-label col-xs-2 col-sm-2">现病史：</label>
                        <div class="formControls col-xs-9 col-sm-9">
                            <textarea style="overflow:auto" class="input-text radius" value="" placeholder="" name="presentIll" id="presentIll"></textarea>
                        </div>
                    </div>
                    <div class="row cl">
                        <label class="form-label col-xs-2 col-sm-2">现病治疗情况：</label>
                        <div class="formControls col-xs-9 col-sm-9">
                            <textarea style="overflow:auto" class="input-text radius" value="" placeholder="" name="treatmentOfPresentIll" id="treatmentOfPresentIll"></textarea>
                        </div>
                    </div>
                    <div class="row cl">
                        <label class="form-label col-xs-2 col-sm-2">既往史：</label>
                        <div class="formControls col-xs-9 col-sm-9">
                            <textarea style="overflow:auto" class="input-text radius" value="" placeholder="" name="previousHistory" id="previousHistory"></textarea>
                        </div>
                    </div>
                    <div class="row cl">
                        <label class="form-label col-xs-2 col-sm-2">过敏史：</label>
                        <div class="formControls col-xs-9 col-sm-9">
                            <textarea style="overflow:auto" class="input-text radius" value="" placeholder="" name="allergicHistory" id="allergicHistory"></textarea>
                        </div>
                    </div>
                    <div class="row cl">
                        <label class="form-label col-xs-2 col-sm-2">体格检查：</label>
                        <div class="formControls col-xs-9 col-sm-9">
                            <textarea style="overflow:auto" class="input-text radius" value="" placeholder="" name="healthCheck" id="healthCheck"></textarea>
                        </div>
                    </div>
                </form>
            </div>
            <div class="row cl">
                <label style="width: 20px"></label>
            </div>

            <div class="row cl">
                <div class="row cl">
                    <label style="width: 20px"></label>
                    <label class="label" style="background-color: #0e90d2;">评估/诊断:</label>
                </div>
                <div class="row cl">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <label class="panel-title">
                                西医诊断
                            </label>
                            <button class="btn pull-right" id="delIll" type="button" onclick="delIllItem()" style="color: #337ab7; background: transparent; border: none;">
                                <i class='Hui-iconfont'>&#xe60b;</i>&ensp;删除
                            </button>
                            <button class="btn pull-right" id="addIll" type="button" onclick="addIllItem()" style="color: #337ab7; background: transparent; border: none;">
                                <i class='Hui-iconfont'>&#xe610;</i>&ensp;增加
                            </button>
                        </div>
                        <div class="panel-body">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th><input type="checkbox" class="checkbox" id="illGrossCheck"/></th>
                                        <th hidden>疾病ID</th>
                                        <th>ICD编码</th>
                                        <th>名称</th>
                                        <th>发病时间</th>
                                    </tr>
                                </thead>
                                <tbody id="illItems">
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>



        </div>
        <div class="tabCon">
            <div class="row cl">
                <label class="form-label col-xs-4 col-sm-2">检查申请：</label>
                <div class="formControls col-xs-8 col-sm-9">
                    <textarea class="textarea" name="" ></textarea>
                </div>
            </div>
        </div>
        <div class="tabCon">
            <div class="row cl">
                <label class="form-label col-xs-4 col-sm-2">检验申请：</label>
                <div class="formControls col-xs-8 col-sm-9">
                    <input type="text"  class="input-text" value="" name="">
                </div>
            </div>
        </div>
        <div class="tabCon">
            <div class="row cl">
                <label class="form-label col-xs-4 col-sm-2">门诊确诊：</label>
                <div class="formControls col-xs-8 col-sm-9">
                    <input type="text"  class="input-text" value="" name="">
                </div>
            </div>
        </div>
        <div class="tabCon">
            <div class="row cl">
                <label class="form-label col-xs-4 col-sm-2">处置申请：</label>
                <div class="formControls col-xs-8 col-sm-9">
                    <input type="text"  class="input-text" value="" name="">
                </div>
            </div>
        </div>
        <div class="tabCon">
            <div class="row cl">
                <div class="row cl">
                    <label class="label" style="background-color: #0e90d2;">门诊诊断:</label>
                    <label id="diagnosisDisease" class="label"></label>
                </div>
                <div class="row cl" style="background-color: #eaf1f5; text-align:center;" >
                    <button class="btn" id="addPrescription" type="button" onclick="addPrescription()" style="color: #337ab7; background: transparent; border: none;">
                        <i class='Hui-iconfont'>&#xe610;</i>&ensp;增方
                    </button>
                    &ensp;&ensp;&ensp;
                    <button class="btn" id="delPrescription" type="button" onclick="delPrescription()" style="color: #337ab7; background: transparent; border: none;">
                        <i class='Hui-iconfont'>&#xe60b;</i>&ensp;删方
                    </button>
                    &ensp;&ensp;&ensp;
                    <button class="btn" id="submitPrescription" type="button" onclick="openPrescription()" style="color: #337ab7; background: transparent; border: none;">
                        <i class='Hui-iconfont'>&#xe642;</i>&ensp;开立
                    </button>
                    &ensp;&ensp;&ensp;
                    <button class="btn" id="delAll" type="button" onclick="delAll()" style="color: #337ab7; background: transparent; border: none;">
                        <i class='Hui-iconfont'>&#xe6e2;</i>&ensp;作废
                    </button>
                    &ensp;&ensp;&ensp;
                    <a class="btn" onclick="flush(5)" type="button" style="color: #337ab7; background: transparent; border: none;">
                        <i class='Hui-iconfont'>&#xe68f;</i>&ensp;刷新
                    </a>
                </div>
                <div class="row cl">
                    <div class="col-xs-3 col-sm-3">
                        <div class="row cl"><label class="label" style="background-color: #0e90d2;">处方:</label></div>
                        <div class="row cl" style="overflow:auto; height:320px;">
                            <table class="table table-hover" id="prescription" >
                                <thead>
                                <tr>
                                    <th><input type="checkbox" class="checkbox" id="prescGrossCheck"/></th>
                                    <th>名称</th>
                                    <th>状态</th>
                                </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-xs-1 col-sm-1">
                        <label></label>
                    </div>
                    <div class="col-xs-8 col-sm-8">
                        <div class="row cl form-inline">
                            <label class="label" style="background-color: #0e90d2;">处方明细:</label>
                            <label class="label" style="background-color: #eaf1f5; color: #337ab7">本处方金额合计：</label>
                            <label class="label" id="totalCost" style="background-color: #fff3df; color: #f0c580"></label>
                            <button class="btn pull-right" id="delPrescItem" type="button" onclick="delPrescItem()" style="color: #337ab7; background: transparent; border: none;">
                                <i class='Hui-iconfont'>&#xe60b;</i>&ensp;删药
                            </button>
                            <button class="btn pull-right" id="addPrescItemBtn" type="button" onclick="addPrescItem()" style="color: #337ab7; background: transparent; border: none;">
                                <i class='Hui-iconfont'>&#xe610;</i>&ensp;增药
                            </button>
                        </div>
                        <div class="row cl" style="overflow:auto; height:320px;">
                            <table class="table table-hover" id="prescriptionItems">
                                <thead>
                                <tr>
                                    <th><input type="checkbox" class="checkbox" id="prescItemGrossCheck"/></th>
                                    <th>药品名称</th>
                                    <th>规格</th>
                                    <th>单价</th>
                                    <th>用法</th>
                                    <th>用量</th>
                                    <th>频次</th>
                                    <th>数量</th>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row cl">
                <ul id="templateTab" class="nav nav-tabs">
                    <li class="active">
                        <a href="#prescTemp" data-toggle="tab">
                            处方模板
                        </a>
                    </li>
                    <li><a href="#" data-toggle="tab">常用药品</a></li>
                    <li>
                        <a href="#" data-toggle="tab">建议方案</a>
                    </li>
                </ul>
                <div id="templateTabContent" class="tab-content">
                    <div class="tab-pane fade in active" id="prescTemp">
                        <div class="row cl">
                            <div class="col-xs-4 col-sm-4">
                                <div class="row cl form-inline">
                                    <label>名称：</label>
                                    <input class="form-control input-text radius" value="" placeholder="请输入模板名称"/>
                                    <button class="btn btn-primary">查询</button>
                                </div>
                                <div class="row cl">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th>模板名称</th>
                                            <th>范围</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <th>支气管哮喘</th>
                                            <th>科室</th>
                                        </tr>
                                        <tr>
                                            <th>季节性常发哮喘</th>
                                            <th>科室</th>
                                        </tr>
                                        <tr>
                                            <th>春季常发性感冒</th>
                                            <th>全院</th>
                                        </tr>
                                        <tr>
                                            <th>流行性腮腺炎NOS</th>
                                            <th>个人</th>
                                        </tr>
                                        <tr>
                                            <th>病毒性胃肠炎</th>
                                            <th>全院</th>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="col-xs-1 col-sm-1">
                                <label></label>
                            </div>
                            <div class="col-xs-7 col-sm-7">
                                <div class="row cl form-inline">
                                    <label class="label" style="background-color: #0e90d2;">模板明细:</label>
                                    <button class="btn pull-right" type="button" style="color: #337ab7; background: transparent; border: none;">
                                        使用该模板
                                    </button>
                                </div>
                                <div class="row cl">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th>药品名称</th>
                                            <th>规格</th>
                                            <th>单位</th>
                                            <th>用法</th>
                                            <th>用量</th>
                                            <th>频次</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <th>酚酞</th>
                                            <th>25gx1瓶</th>
                                            <th>瓶</th>
                                            <th>抹</th>
                                            <th>5g</th>
                                            <th>1日1次</th>
                                        </tr>
                                        <tr>
                                            <th>鱼腥草颗粒</th>
                                            <th>1g/15g/袋</th>
                                            <th>袋</th>
                                            <th>口服</th>
                                            <th>3g</th>
                                            <th>1日1次</th>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="tabCon">
            <div class="row cl">
                <label class="form-label col-xs-4 col-sm-2">草药处方：</label>
                <div class="formControls col-xs-8 col-sm-9">
                    <input type="text"  class="input-text" value="" name="">
                </div>
            </div>
        </div>
        <div class="tabCon">
            <div class="row cl">
                <label class="form-label col-xs-4 col-sm-2">费用查询：</label>
                <div class="formControls col-xs-8 col-sm-9">
                    <input type="text"  class="input-text" value="" name="">
                </div>
            </div>
        </div>
        <div class="tabCon">
        </div>
    </div>
</div>

<%--添加诊断疾病模态框--%>
<div class="modal fade" id="addIllItem" role="dialog" aria-labelledby="addIllModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="addIllModalLabel">添加诊断疾病</h4>
            </div>
            <div class="modal-body">
                <div class="form-inline">
                    <div class="form-group">
                        <label for="illName">疾病名称:</label>
                        <input type="text" class="form-control input-text radius" value="" placeholder="请输入疾病名称" id="illName" name="illName">
                        <button type="button" class="btn btn-primary" onclick="searchIll()">搜索</button>
                    </div>
                    <div class="form-group">
                        <label for="illTime">发病时间:</label>
                        <input type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" id="illTime" name="illTime" class="form-control input-text Wdate radius" required>
                    </div>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>疾病ID</th>
                                <th>ICD编码</th>
                                <th>名称</th>
                            </tr>
                        </thead>
                        <tbody id="illSearchItem">
                        </tbody>
                    </table>
                </div>
                <input type="text" value="" id='chosenIllId' hidden>
                <input type="text" value="" id='chosenIllIcd' hidden>
                <input type="text" value="" id='chosenIllName' hidden>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="checkChosenIll()">确认选择</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<%--新增处方模态框--%>
<div class="modal fade" id="addPrescriptionModal" role="dialog" aria-labelledby="addPrescModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="addPrescModalLabel">新增处方</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="prescName">处方名称:</label>
                    <input type="text" class="input-text radius" value="" placeholder="请输入处方名称" id="prescName" name="prescName" required>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="checkPresc()">确认</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<%--添加药模态框--%>
<div class="modal fade" id="addPrescItem" role="dialog" aria-labelledby="addPrescItemModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="addPrescItemModalLabel">添加处方明细</h4>
            </div>
            <div class="modal-body">
                <div class="form-inline">
                    <div class="form-group">
                        <label for="medicineName">药品名称:</label>
                        <input type="text" class="form-control input-text radius" value="" placeholder="请输入药品名称" id="medicineName" name="medicineName">
                        <button type="button" class="btn btn-primary" onclick="searchMedicine()">搜索</button>
                    </div>
                </div>
                <div class="form-inline">
                    <div class="form-group">
                        <label for="usage">用法:</label>
                        <input type="text" class="form-control input-text radius" value="" placeholder="请输入用法" id="usage" name="usage">
                    </div>
                    <div class="form-group">
                        <label for="dosage">用量:</label>
                        <input type="text" class="form-control input-text radius" value="" placeholder="请输入用量" id="dosage" name="dosage">
                    </div>
                    <div class="form-group">
                        <label for="frequency">频次:</label>
                        <input type="text" class="form-control input-text radius" value="" placeholder="请输入频次" id="frequency" name="frequency">
                    </div>
                    <div class="form-group">
                        <label for="num">数量:</label>
                        <input type="text" class="form-control input-text radius" value="" placeholder="请输入数量" id="num" name="num" oninput="this.value=this.value.replace(/[^0-9]/g,'');" required>
                    </div>
                </div>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>药品ID</th>
                                <th>药品名称</th>
                                <th>规格</th>
                                <th>单价</th>
                            </tr>
                        </thead>
                        <tbody id="medSearchItem">

                        </tbody>
                    </table>

                <input type="text" value="" id="chosenMedId" hidden>
                <input type="text" value="" id="chosenMedName" hidden>
                <input type="text" value="" id="chosenMedSpec" hidden>
                <input type="text" value="" id="chosenMedPrice" hidden>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="checkChosenMed()">确认选择</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<%--隐藏input--%>
<input type="text" value="" id='chosenPrescIndex' hidden>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript">
    // $(document).ready(function () {
    //     // $("#patientRegisId").val(window.parent.$("#patientRegisId").val());
    //     // $("#patientMedRecId").val(window.parent.$("#patientMedRecId").val());
    // });

    $(function(){
        $('.skin-minimal input').iCheck({
            checkboxClass: 'icheckbox-blue',
            radioClass: 'iradio-blue',
            increaseArea: '20%'
        });
        $("#tab-system").Huitab({
            index:0
        });
    });

    //页面刷新
    function flush(index) {
        location.replace(location.href);
        $(document).ready(function () {
            $('#tab-system .tabCon').hide();
            $('#tab-system .tabCon').eq(index).show();
            }
        );
    }

    //打开模态框
    function addIllItem() {
        $("#addIllItem").modal();
    }

    //删除多行
    function delIllItem() {
        var a = $("#illItems tr input[type=\"checkbox\"]:checked");
        if(a.length == 0){
           return;
        }
        layer.confirm('确认要删除吗？',function(){
            a.each(function() { // 遍历选中的checkbox
                n = $(this).parents("tr").index();  // 获取checkbox所在行的顺序
                $("#illItems").find("tr:eq("+n+")").remove();
            });
            layer.closeAll('dialog');
        });
    }

    //模态框模糊搜索疾病
    function searchIll() {
        var name = $("#illName").val();
        if(name == ""){
            layer.msg("输入疾病名称为空",{icon:2,time:1250});
            return;
        }
        $("#illSearchItem").empty();
        $.ajax({
            type: 'GET',
            url: 'searchIll?diseaseName='+name,
            dataType: 'json',
            success: function(data){
                if(data.success){
                    for (var i in data.data) {
                        $("#illSearchItem").append(
                            "<tr class='illSearchTr' onclick='chooseIll(this,"+data.data[i].id+",\""+data.data[i].diseaseIcd+"\",\""+data.data[i].diseaseName+"\")'>\n" +
                                "<td>"+data.data[i].id+"</td>\n" +
                                "<td>"+data.data[i].diseaseIcd+"</td>\n" +
                                "<td>"+data.data[i].diseaseName+"</td>\n" +
                            "</tr>"
                        )
                    }
                }else{
                    layer.msg(data.error,{icon:2,time:1250});
                }
            },
            error:function(data) {
                console.log(data.msg);
            }
        });
    }

    //选择疾病表格项
    function chooseIll(obj, id, diseaseIcd, diseaseName) {
        $(".illSearchTr").removeClass("info");
        $(obj).addClass("info");
        $("#chosenIllId").val(id);
        $("#chosenIllIcd").val(diseaseIcd);
        $("#chosenIllName").val(diseaseName);
    }

    //将模态框所选疾病添加到主页面表格中
    function checkChosenIll(){
        var id = $("#chosenIllId").val();
        var diseaseIcd = $("#chosenIllIcd").val();
        var diseaseName = $("#chosenIllName").val();
        var illTime = $("#illTime").val();
        if(diseaseName == ""){
            layer.msg("未选择疾病",{icon:2,time:1250});
            return;
        }
        if(illTime == ""){
            layer.msg("未选择发病时间",{icon:2,time:1250});
            return;
        }
        $("#illItems").append(
            "<tr id='"+id+","+illTime+"' >\n" +
                "<td hidden>"+id+"</td>\n" +
                "<td><input type='checkbox' class='checkbox'/></td>\n" +
                "<td>"+diseaseIcd+"</td>\n" +
                "<td>"+diseaseName+"</td>\n" +
                "<td>"+illTime+"</td>\n" +
            "</tr>"
        );
        $("#addIllItem").modal('hide');
        $("#illName").val("");
        $("#illTime").val("");
        $("#chosenIllId").val("");
        $("#chosenIllIcd").val("");
        $("#chosenIllName").val("");
        $("#illSearchItem").empty();
    }

    // 全选
    $(function(){
        $("#illGrossCheck").click(function () {
            var b = $('#illItems tr input[type="checkbox"]');
            if ($(this).prop('checked')) {
                b.prop('checked', true);
            } else {
                b.prop('checked', false);
            }
        });
    });


    //病历首页提交
    $("#submit").click(function () {
        var chiefComplaint = $("#chiefComplaint").val();
        var regisId = window.parent.$("#patientRegisId").val();
        var medRecId = window.parent.$("#patientMedRecId").val();

        if(chiefComplaint == ""){
            layer.msg("未填写主诉",{icon:2,time:1250});
            return;
        }

        var diseaseList = new Array;
        $("#illItems tr").each(function() {
            diseaseList.push($(this).attr("id"));
        });

        if(diseaseList.length == 0){
            layer.msg("未进行诊断/评估",{icon:2,time:1250});
            return;
        }

        if(regisId == "" || medRecId == ""){
            layer.msg("未选择病患",{icon:2,time:1250});
            return;
        }

        layer.confirm('确认要提交吗？',function(){
            $.ajax({
                type: "POST",
                url: "/addHomepageAndDiagnosis",
                dataType: 'JSON',
                data: {medRecId:medRecId, regisId:regisId, chiefComplaint:chiefComplaint, presentIll:$("#presentIll").val(),
                    treatmentOfPresentIll:$("#treatmentOfPresentIll").val(), previousHistory:$("#previousHistory").val(),
                    allergicHistory:$("#allergicHistory").val(), healthCheck:$("#healthCheck").val(), diseaseList:JSON.stringify(diseaseList)},
                success: function (result) {
                    if(result.success){
                        layer.msg(result.error,{icon:1,time:1250});
                        window.parent.location.replace(window.parent.location.href);
                    }else{
                        layer.msg(result.error,{icon:2,time:1250});
                    }
                }
            });
            window.parent.$("#state").text("诊毕");
            layer.closeAll('dialog');
        });

    });

    //对于已诊患者读取其homepage
    function homepageFilled(regisId) {
        $.ajax({
            type: "GET",
            url: "/homepageFilled?regisId="+regisId,
            dataType: 'json',
            success: function (result) {
                if(result.success){
                    $("#chiefComplaint").val(result.data.homepage.chiefComplaint);
                    $("#presentIll").val(result.data.homepage.presentIll);
                    $("#treatmentOfPresentIll").val(result.data.homepage.treatmentOfPresentIll);
                    $("#previousHistory").val(result.data.homepage.previousHistory);
                    $("#allergicHistory").val(result.data.homepage.allergicHistory);
                    $("#healthCheck").val(result.data.homepage.healthCheck);
                    $("#illItems").empty();
                    for (var i in result.data.diagnosisList) {
                        $("#illItems").append(
                            "<tr id='"+result.data.diagnosisList[i].diseaseId+","+result.data.diagnosisList[i].illTime+"' >\n" +
                                "<td hidden>"+result.data.diagnosisList[i].diseaseId+"</td>\n" +
                                "<td><input type='checkbox' class='checkbox'/></td>\n" +
                                "<td>"+result.data.diagnosisList[i].diseaseIcd+"</td>\n" +
                                "<td>"+result.data.diagnosisList[i].diseaseName+"</td>\n" +
                                "<td>"+result.data.diagnosisList[i].illTime+"</td>\n" +
                            "</tr>"
                        );
                    }
                }else{
                    layer.msg(result.error,{icon:2,time:1250});
                }
            }
        });
    }

// //删除多行
//     $(function(){
//         $("#delIll").click(function() {
//             $("#illItems tr input[type=\"checkbox\"]:checked").each(function() { // 遍历选中的checkbox
//                 n = $(this).parents("tr").index();  // 获取checkbox所在行的顺序
//                 $("#illItems").find("tr:eq("+n+")").remove();
//             });
//         });
//     });


/*-------------------------------以上为homepage段，以下为prescription段------------------------------------------*/
    //搜索诊断疾病
    function searchDiagnosis(regisId) {
        var nameArray = [];
        $.ajax({
            type: "GET",
            url: "/searchDiagnosis?regisId="+regisId,
            dataType: 'json',
            success: function (result) {
                if(result.success){
                    for (var i in result.data) {
                        nameArray.push(result.data[i]);
                    }
                    $("#diagnosisDisease").text(nameArray.join(" 并 "));
                }else{
                    layer.msg(result.error,{icon:2,time:1250});
                }
            }
        });
    }

    //选择处方表格项
    function choosePresc(obj) {
        $("#prescription tbody tr").removeClass("info");
        $(obj).addClass("info");
        $("#prescriptionItems tbody").attr("hidden", true);
        $("#prescriptionItems").find("tbody").eq($(obj).index()).attr("hidden", false);
        $("#chosenPrescIndex").val($(obj).index());
        $("#totalCost").text(computeTotalCost($(obj).index()).toFixed(2) + "元");
    }

    //计算处方总价格
    function computeTotalCost(index){
        var totalCost = 0;
        $("#prescriptionItems").find("tbody:eq("+index+")").find("tr").each(function () {
            totalCost += $(this).find('.num').text() * $(this).find('.price').text();
        });
        return totalCost;
    }

    //处方明细全选
    $(function(){
        $("#prescItemGrossCheck").click(function () {
            var b = $('#prescriptionItems tbody[hidden!="hidden"] tr input[type="checkbox"]');

            if ($(this).prop('checked')) {
                b.prop('checked', true);
            } else {
                b.prop('checked', false);
            }
        });
    });

    //处方明细删除多行
    function delPrescItem() {
        var a = $("#prescriptionItems tbody tr input[type=\"checkbox\"]:checked");
        if(a.length == 0){
            return;
        }
        layer.confirm('确认要删除吗？',function(){
            a.each(function() { // 遍历选中的checkbox
                var trn = $(this).parents("tr").index();  // 获取checkbox所在tbody的顺序
                var tbodyn = $("#chosenPrescIndex").val();  // 获取checkbox所在行的顺序
                $("#prescriptionItems").find("tbody:eq("+tbodyn+")").find("tr:eq("+trn+")").remove();
            });
            layer.closeAll('dialog');
        });
    }

    // 处方全选
    $(function(){
        $("#prescGrossCheck").click(function () {
            var b = $('#prescription tbody tr input[type="checkbox"]');
            if ($(this).prop('checked')) {
                b.prop('checked', true);
            } else {
                b.prop('checked', false);
            }
        });
    });

    // 增方
    function addPrescription() {
        $("#addPrescriptionModal").modal();
    }
    function checkPresc() {
        var name = $("#prescName").val();
        if(name == ""){
            layer.msg("未填写处方名称",{icon:2,time:1250});
            return;
        }
        $("#prescription tbody").append(
            "<tr onclick=\"choosePresc(this)\">\n" +
            "     <td class='prescCheck'><input type='checkbox' class='checkbox'/></td>\n" +
            "     <td class='prescName'>"+ name +"</td>\n" +
            "     <td class='prescState'>"+ "暂存" +"</td>\n" +
            "</tr>"
        );
        $("#prescriptionItems").append(
            "<tbody hidden>\n</tbody>"
        );
        $("#addPrescriptionModal").modal("hide");
        $("#prescName").val("");
    }

    // 删方
    function delPrescription() {
        var a = $("#prescription tbody tr input[type=\"checkbox\"]:checked");
        if(a.length == 0){
            return;
        }

        // var index = $("#chosenPrescIndex").val();
        // if(index == ""){
        //     return;
        // }
        layer.confirm('确认要删除吗？',function(){
            a.each(function() { // 遍历选中的checkbox
                var n = $(this).parents("tr").index();  // 获取checkbox所在行的顺序
                $("#prescription tbody").find("tr:eq("+n+")").remove();
                // $("#prescription tbody").find("tr:eq("+ index +")").remove();
                $("#prescriptionItems").find("tbody:eq("+ n +")").remove();
            });
            layer.closeAll('dialog');
            // $("#chosenPrescIndex").val("");
        });
    }

    //作废
    function delAll() {
        $("#prescription tbody").empty();
        $("#prescriptionItems").find("tbody").remove();
        $("#chosenPrescIndex").val("");
    }

    // 模态框搜索药品
    function searchMedicine(){
        var name = $("#medicineName").val();
        if(name == ""){
            layer.msg("输入药品名称为空",{icon:2,time:1250});
            return;
        }
        $("#medSearchItem").empty();
        $.ajax({
            type: 'GET',
            url: 'searchMedicine?medicineName='+name,
            dataType: 'json',
            success: function(data){
                if(data.success){
                    for (var i in data.data) {
                        $("#medSearchItem").append(
                            "<tr class='medSearchTr' onclick='chooseMed(this,"+data.data[i].medicineId+
                                    ",\""+data.data[i].medicineName+"\",\""+data.data[i].specification+
                                    "\","+ data.data[i].price +")'>\n" +
                            "    <td>"+data.data[i].medicineId+"</td>\n" +
                            "    <td>"+data.data[i].medicineName+"</td>\n" +
                            "    <td>"+data.data[i].specification+"</td>\n" +
                            "    <td>"+data.data[i].price+"</td>\n" +
                            "</tr>"
                        )
                    }
                }else{
                    layer.msg(data.error,{icon:2,time:1250});
                }
            },
            error:function(data) {
                console.log(data.msg);
            }
        });
    }

    //选择药品表格项
    function chooseMed(obj, id, name, spec, price) {
        $(".medSearchTr").removeClass("info");
        $(obj).addClass("info");
        $("#chosenMedId").val(id);
        $("#chosenMedName").val(name);
        $("#chosenMedSpec").val(spec);
        $("#chosenMedPrice").val(price);
    }

    //打开模态框
    function addPrescItem(){
        var index  = $("#chosenPrescIndex").val();
        if(index == ""){
            layer.msg("未选择处方",{icon:2,time:1250});
            return;
        }
        $("#addPrescItem").modal();
    }

    //将模态框所选药品添加到主页面表格中
    function checkChosenMed(){
        var index  = $("#chosenPrescIndex").val();
        var id = $("#chosenMedId").val();
        var name = $("#chosenMedName").val();
        var spec = $("#chosenMedSpec").val();
        var price = $("#chosenMedPrice").val();
        var usage = $("#usage").val();
        var dosage = $("#dosage").val();
        var frequency = $("#frequency").val();
        var num = $("#num").val();
        if(name == ""){
            layer.msg("未选择药品",{icon:2,time:1250});
            return;
        }
        if(num == ""){
            layer.msg("未填写药品数量",{icon:2,time:1250});
            return;
        }
        $("#prescriptionItems").find("tbody:eq("+index+")").append(
            "<tr>\n" +
            "    <td class='medId' hidden>"+id+"</td>\n" +
            "    <td><input type='checkbox' class='checkbox'/></td>\n" +
            "    <td class='name'>"+name+"</td>\n" +
            "    <td class='spec'>"+spec+"</td>\n" +
            "    <td class='price'>"+price+"</td>\n" +
            "    <td class='usage'>"+usage+"</td>\n" +
            "    <td class='dosage'>"+dosage+"</td>\n" +
            "    <td class='frequency'>"+frequency+"</td>\n" +
            "    <td class='num'>"+num+"</td>\n" +
            "</tr>"
        );
        //清空模态框数据
        $("#addPrescItem").modal('hide');
        $("#medicineName").val("");
        $("#usage").val("");
        $("#dosage").val("");
        $("#frequency").val("");
        $("#num").val("");
        $("#chosenMedId").val("");
        $("#chosenMedName").val("");
        $("#chosenMedSpec").val("");
        $("#chosenMedPrice").val("");
        $("#medSearchItem").empty();
    }

    //开立处方
    function openPrescription(){
        var prescNum = $("#prescription tbody tr").length;
        var regisId = window.parent.$("#patientRegisId").val();
        var medRecId = window.parent.$("#patientMedRecId").val();
        var disease = $("#diagnosisDisease").text();

        if(regisId == "" || medRecId == ""){
            layer.msg("未选择病患",{icon:2,time:1250});
            return;
        }

        if(disease == ""){
            layer.msg("病患未进行诊断",{icon:2,time:1250});
            return;
        }

        if(prescNum === 0){
            layer.msg("未有处方",{icon:2,time:1250});
            return;
        }

        var check = $("#prescription tbody tr input[type=\"checkbox\"]:checked");
        if(check.length == 0){
            layer.msg("未选择处方",{icon:2,time:1250});
            return;
        }

        layer.confirm('确认要提交吗？',function(){

            // var index = 0;

            check.each(function() {
                var tr = $(this).parents("tr");

                var n = tr.index();


                var prescName = tr.find('.prescName').text();
                var state = tr.find('.prescState').text();
                var prescId = null;
                var prescItemsList = [];

                if(state == "已开立"){
                    // index = index + 1;
                    return;
                }

                var docId = window.parent.$("#userId").val();

                $.ajax({
                    type: "POST",
                    url: "/openPrescription",
                    async: false,
                    dataType: 'JSON',
                    data: {medRecId:medRecId, regisId:regisId, prescName:prescName, docId:docId},
                    success: function (result) {
                        if(result.success){
                            prescId = result.data;
                            $("#prescriptionItems").find("tbody:eq("+n+")").find("tr").each(function () {
                                var prescriptionItem = {};
                                prescriptionItem.prescId = prescId;
                                prescriptionItem.itemId = $(this).find('.medId').text();
                                prescriptionItem.prescUsage = $(this).find('.usage').text();
                                prescriptionItem.dosage = $(this).find('.dosage').text();
                                prescriptionItem.frequency = $(this).find('.frequency').text();
                                prescriptionItem.num = $(this).find('.num').text();
                                prescriptionItem.state = 1;

                                prescItemsList.push(prescriptionItem);
                            });

                            $.ajax({
                                headers: {
                                    'Content-Type': 'application/json'
                                },
                                type: "POST",
                                async: false,
                                url: "/addPrescriptionItems",
                                data: JSON.stringify(prescItemsList),
                                success: function (result) {
                                    if(result.success){
                                    }else{
                                        layer.msg(result.error,{icon:2,time:1250});
                                    }
                                }
                            });
                        }else{
                            layer.msg(result.error,{icon:2,time:1250});
                        }
                    }
                });
                // index = index + 1;
                tr.find('td.prescState').text("已开立");
            });

            layer.closeAll('dialog');
            layer.msg("开立成功",{icon:1,time:1250});
        });

    }

    //对于已诊患者读取其prescription
    function prescriptionFilled(regisId) {
        $.ajax({
            type: "GET",
            url: "/prescriptionFilled?regisId="+regisId,
            async: false,
            dataType: 'json',
            success: function (result) {
                if(result.success){
                    $("#prescription tbody").empty();
                    $("#prescriptionItems").find("tbody").remove();
                    for (var i in result.data) {
                        $("#prescription tbody").append(
                            "<tr onclick=\"choosePresc(this)\">\n" +
                            "     <td class='prescCheck'><input type='checkbox' class='checkbox'/></td>\n" +
                            "     <td class='prescName'>"+ result.data[i].prescName +"</td>\n" +
                            "     <td class='prescState'>"+ "已开立" +"</td>\n" +
                            "</tr>"
                        );
                        $("#prescriptionItems").append(
                            "<tbody hidden>\n</tbody>"
                        );

                        $.ajax({
                            type: "GET",
                            url: "/prescriptionItemFilled?prescId="+result.data[i].prescId,
                            async: false,
                            dataType: 'json',
                            success: function (data) {
                                if(data.success){
                                    for (var j in data.data) {
                                        $("#prescriptionItems").find("tbody:eq("+i+")").append(
                                            "<tr>\n" +
                                            "    <td class='medId' hidden>"+data.data[j].medId+"</td>\n" +
                                            "    <td><input type='checkbox' class='checkbox'/></td>\n" +
                                            "    <td class='name'>"+data.data[j].medId+"</td>\n" +
                                            "    <td class='spec'>"+data.data[j].spec+"</td>\n" +
                                            "    <td class='price'>"+data.data[j].price+"</td>\n" +
                                            "    <td class='usage'>"+data.data[j].usage+"</td>\n" +
                                            "    <td class='dosage'>"+data.data[j].dosage+"</td>\n" +
                                            "    <td class='frequency'>"+data.data[j].frequency+"</td>\n" +
                                            "    <td class='num'>"+data.data[j].num+"</td>\n" +
                                            "</tr>"
                                        );
                                    }
                                }
                            }
                        });
                    }
                }
            }
        });
    }


</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
<style>
    body {
        width: 95%;
        margin: 5px;
        padding: 5px;
    }
    .modal-dialog{
        z-index: 9999;
    }
</style>
</html>