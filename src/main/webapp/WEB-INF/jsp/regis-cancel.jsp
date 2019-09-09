<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
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
    <title>列表</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 管理 <span class="c-gray en">&gt;</span> 列表 <a class="btn btn-primary radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
    <div class="row cl">
        <label class="form-label col-xs-3 col-sm-3" style="font-weight: bold">患者挂号信息查询</label>
        <label class="form-label col-xs-9 col-sm-9"></label>
    </div>
    <div class="row cl">
        <label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>病&ensp;历&ensp;号:</label>
        <div class="formControls col-xs-2 col-sm-2">
            <input type="text" class="input-text radius" value="" placeholder="" id="medicalRecordId" name="medicalRecordId" >
        </div>
        <div class="formControls col-xs-2 col-sm-2">
            <button id="searchBtn" class="btn btn-primary radius" type="button" onclick="searchRegisList()"><i class="Hui-iconfont">&#xe665;</i> 搜索</button>
        </div>
    </div>
    <br/>
    <div class="row cl">
        <label class="form-label col-xs-3 col-sm-3" style="font-weight: bold">患者挂号信息确认</label>
        <label class="form-label col-xs-9 col-sm-9"></label>
    </div>
    <div class="row cl">
        <label class="form-label col-xs-1 col-sm-1">姓&emsp;&emsp;名:</label>
        <div class="formControls col-xs-2 col-sm-2">
            <input type="text" class="input-text radius" value="" placeholder="" id="name" name="name" >
        </div>

        <label class="form-label col-xs-1 col-sm-1">身份证号:</label>
        <div class="formControls col-xs-2 col-sm-3">
            <input type="text" class="input-text radius" value="" placeholder="" id="idNum" name="idNum"/>
        </div>

        <label class="form-label col-xs-1 col-sm-1">家庭住址:</label>
        <div class="formControls col-xs-2 col-sm-3">
            <input type="text" class="input-text radius" value="" placeholder="" id="address" name="address"/>
        </div>
    </div>
    <br/>
    <div class="row cl">
        <label class="form-label col-xs-2 col-sm-2" style="font-weight: bold">患者挂号信息</label>
        <label class="form-label col-xs-10 col-sm-10"></label>
    </div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover table-sort table-responsive" id="regisTable">
            <thead>
            <tr class="text-c">
                <th width="120">挂号ID</th>
                <th width="120">挂号级别</th>
                <th width="120">挂号医生</th>
                <th width="200">挂号时间</th>
                <th width="100">挂号午别</th>
                <th width="150">看诊科室</th>
                <th width="100">看诊状态</th>
                <th width="120">操作</th>
            </tr>
            </thead>
            <tbody id="tbody">
<%--            <tr class="text-c">--%>
<%--                <td>挂号ID</td>--%>
<%--                <td>挂号级别</td>--%>
<%--                <td>挂号医生</td>--%>
<%--                <td>挂号时间</td>--%>
<%--                <td>上午</td>--%>
<%--                <td>功能神经外科</td>--%>
<%--                <td class="td-status"><span class="label label-success radius">已挂号</span></td>--%>
<%--                <td class="f-14 td-manage">--%>
<%--                    <button class="btn btn-primary radius" type="button" onClick="cancel_regis(this,'10001')" id=" "><i class="Hui-iconfont">&#xe6e2;</i>   退号</button>--%>
<%--                </td>--%>
<%--            </tr>--%>
            </tbody>
        </table>
    </div>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
    $('.table-sort').dataTable({
        "aaSorting": [[ 0, "desc" ]],//默认第几个排序
        "bStateSave": false,//状态保存
        "pading":false,
        "aoColumnDefs": [
            //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
            {"orderable":false,"aTargets":[2,5,6,7]}// 不参与排序的列
        ]
    });

    //查询挂号状态
    function searchRegisList() {
        var medRecId = $("#medicalRecordId").val();
        if(medRecId == ""){
            layer.msg('病历号不能为空',{icon:2,time:1250});
            return;
        }
        // $("#tbody").empty();
        var table = $("#regisTable").DataTable();
        table.clear();
        $.ajax({
            type: "GET",
            url: "/getRegisList?medicalRecordId="+medRecId,
            dataType: "JSON",
            success: function (data) {
                if(data.success){
                    $("#name").val(data.data[0].name);
                    $("#idNum").val(data.data[0].idNum);
                    $("#address").val(data.data[0].address);
                    for (var i in data.data) {
                        table.row.add([
                            data.data[i].regisId,
                            data.data[i].regisLe,
                            data.data[i].regisDoc,
                            data.data[i].regisTime,
                            data.data[i].regisNoon,
                            data.data[i].dept,
                            "<span class='label label-success radius' id='"+ data.data[i].regisId +"' >" +data.data[i].regisState+"</span>",
                            "<button class='btn btn-primary radius' type='button' onClick='cancel_regis(this,"+data.data[i].regisId+")'><i class='Hui-iconfont'>&#xe6e2;</i>   退号</button>"
                        ])
                    }
                    table.draw();
                    //     $("#tbody").append("<tr class='text-c'>"+
                    //         "<td>"+data.data[i].regisId+"</td>"+
                    //         "<td>"+data.data[i].regisLe+"</td>"+
                    //         "<td>"+data.data[i].regisDoc+"</td>"+
                    //         "<td>"+data.data[i].regisTime+"</td>"+
                    //         "<td>"+data.data[i].regisNoon+"</td>"+
                    //         "<td>"+data.data[i].dept+"</td>"+
                    //         "<td class='td-status'><span class='label label-success radius'>" +data.data[i].regisState+"</span></td>"+
                    //     "<td class='f-14 td-manage'>"+
                    //         "<button class='btn btn-primary radius' type='button' onClick='cancel_regis(this,"+data.data[i].regisId+")'><i class='Hui-iconfont'>&#xe6e2;</i>   退号</button>"+
                    //     "</td>"+
                    //     "</tr>");
                    // }
                }else{
                    layer.msg(data.error,{icon:2,time:1250});
                }
            },
            error:function(data) {
                console.log(data.msg);
            }
        })
    }

    //退号
    function cancel_regis(obj, id){
        layer.confirm('确认要退号吗？',function(){
            $.ajax({
                type: 'GET',
                url: 'cancelRegis?regisId='+id,
                dataType: 'json',
                success: function(data){
                    if(data.success){
                        searchRegisList();
                        layer.msg(data.error,{icon:1,time:1250});
                    }else{
                        layer.msg(data.error,{icon:2,time:1250});
                    }
                },
                error:function(data) {
                    console.log(data.msg);
                }
            });
        });
    }
</script>
</body>
<style>
    .table>tbody>tr>td{
        text-align:center;
    }
</style>
</html>
