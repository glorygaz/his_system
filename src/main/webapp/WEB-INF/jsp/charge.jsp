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
    <title>列表</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 管理 <span class="c-gray en">&gt;</span> 列表 <a class="btn btn-primary radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
    <div class="row cl">
        <label class="form-label col-xs-3 col-sm-3" style="font-weight: bold">患者信息查询</label>
        <label class="form-label col-xs-9 col-sm-9"></label>
    </div>
    <div class="row cl">
        <label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>病历号:</label>
        <div class="formControls col-xs-2 col-sm-2">
            <input type="text" class="input-text radius" value="" placeholder="" id="medicalRecordId" name="medicalRecordId" >
        </div>
        <div class="formControls col-xs-2 col-sm-2">
            <button id="searchBtn" class="btn btn-primary radius" type="button" onclick="searchExpenseList()"><i class="Hui-iconfont">&#xe665;</i> 搜索</button>
        </div>
        <div class="formControls col-xs-3 col-sm-3">
            <button id="chargeBtn" class="btn btn-primary radius" type="button" onclick="chargeModal()"><i class="Hui-iconfont">&#xe6b5;</i> 收费结算</button>
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
            <input type="text" class="input-text radius" value="" placeholder="" id="name" name="name" readonly>
        </div>

        <label class="form-label col-xs-1 col-sm-1">身份证号:</label>
        <div class="formControls col-xs-2 col-sm-3">
            <input type="text" class="input-text radius" value="" placeholder="" id="idNum" name="idNum" readonly/>
        </div>

        <label class="form-label col-xs-1 col-sm-1">家庭住址:</label>
        <div class="formControls col-xs-2 col-sm-3">
            <input type="text" class="input-text radius" value="" placeholder="" id="address" name="address" readonly/>
        </div>
    </div>
    <br/>
    <div class="row cl">
        <label class="form-label col-xs-2 col-sm-2" style="font-weight: bold">患者消费信息</label>
        <label class="form-label col-xs-10 col-sm-10"></label>
    </div>
    <div class="mt-20">
        <table class="table table-bg table-hover table-sort table-responsive" id="expenseTable">
            <thead>
            <tr class="text-c">
                <th><input type="checkbox" class="checkbox" id="itemGrossCheck"/></th>
                <th>所属挂号编号</th>
                <th>项目名称</th>
                <th>单价</th>
                <th>数量</th>
                <th>开立时间</th>
                <th>状态</th>
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

<%--结算模态框--%>
<div class="modal fade" id="chargeModal" role="dialog" aria-labelledby="chargeModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="chargeModalLabel">发票信息（交费）</h4>
            </div>
            <div class="modal-body">
                <div class="row cl form-inline">
                    <label class="form-label col-xs-2 col-sm-2" for="invoiceNum">发票号:</label>
                    <input type="text" class="form-control input-text radius col-xs-4 col-sm-4" value="" id="invoiceNum" name="invoiceNum" required>

                    <label class="form-label col-xs-2 col-sm-2" for="medRecNum">病历号:</label>
                    <input type="text" class="form-control input-text radius col-xs-4 col-sm-4" value="" id="medRecNum" name="medRecNum" readonly>
                </div>
                <div class="row cl form-inline">
                    <label class="form-label col-xs-2 col-sm-2">患者姓名:</label>
                    <input type="text" class="form-control input-text radius col-xs-4 col-sm-4" value="" id="patientName" name="patientName" readonly>

                    <label class="form-label col-xs-2 col-sm-2">支付方式:</label>
                    <select class="form-control col-xs-4 col-sm-4" id="tollBy" name="tollBy" required>
                            <option>现金</option>
                            <option>医保卡</option>
                            <option>银行卡</option>
                            <option>信用卡</option>
                            <option>微信</option>
                            <option>支付宝</option>
                            <option>云闪付</option>
                            <option>其他</option>
                    </select>
                </div>
                <div class="row cl form-inline">
                    <label class="form-label col-xs-2 col-sm-2">应收金额:</label>
                    <input type="text" class="form-control input-text radius col-xs-4 col-sm-4" value="" id="receivables" name="receivables" readonly>

                    <label class="form-label col-xs-2 col-sm-2">实收金额:</label>
                    <input class="form-control input-text radius col-xs-4 col-sm-4" value="" placeholder="请输入实收金额" id="received" name="received" type="text" step="1"  min="0" onkeyup="this.value= this.value.match(/\d+(\.\d{0,2})?/) ? this.value.match(/\d+(\.\d{0,2})?/)[0] : ''" required>
                </div>
                <div class="row cl form-inline">
                    <label class="form-label col-xs-2 col-sm-2">找零金额:</label>
                    <input type="text" class="form-control input-text radius col-xs-4 col-sm-4" value="" id="change" name="change" readonly>
                    <label class="form-label col-xs-2 col-sm-2"></label>
                    <button class="btn btn-primary radius" id="createInvoiceNum" type="button">生成发票号</button>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="charge()">收费</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<%--隐藏input--%>
<input type="text" value="" id='searchedMedRecId' hidden>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
    $('.table-sort').dataTable({
        "aaSorting": [[ 1, "desc" ]],//默认第几个排序
        "bStateSave": false,//状态保存
        "pading":false,
        "aoColumnDefs": [
            //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
            {"orderable":false,"aTargets":[0,2,6]}// 不参与排序的列
        ]
    });


    //查询未缴费项目
    function searchExpenseList() {
        var medRecId = $("#medicalRecordId").val();
        if(medRecId == ""){
            layer.msg('病历号不能为空',{icon:2,time:1250});
            return;
        }
        // $("#tbody").empty();
        var table = $("#expenseTable").DataTable();
        table.clear();
        $.ajax({
            type: "GET",
            url: "/getExpenseList?medicalRecordId="+medRecId,
            dataType: "JSON",
            success: function (data) {
                if(data.success){
                    $("#searchedMedRecId").val(medRecId);
                    $("#name").val(data.data[0].name);
                    $("#idNum").val(data.data[0].idNum);
                    $("#address").val(data.data[0].address);
                    for (var i in data.data) {
                        table.row.add([
                            "<input id='"+ data.data[i].itemId +"' value='"+data.data[i].prescItemId+"' name='expCheck' type='checkbox' class='checkbox'/>",
                            data.data[i].regisId,
                            data.data[i].itemName,
                            data.data[i].price,
                            data.data[i].num,
                            data.data[i].openTime,
                            "<span class='label label-success radius'>已开立</span>"
                        ])
                    }
                    table.draw();
                }else{
                    layer.msg(data.error,{icon:2,time:1250});
                }
            },
            error:function(data) {
                console.log(data.msg);
            }
        })
    }

    //生成发票号
    $("#createInvoiceNum").click(function () {
        $.get("/getNewInvoiceNum", function (data) {
            $("#invoiceNum").val(data);
        })
    });

    //打开结算模态框
    function chargeModal() {
        var dataTable = $('#expenseTable').DataTable();
        var info = dataTable.page.info();
        var length = info.recordsDisplay;
        if (length === 0){
            layer.msg("没有数据",{icon:2,time:1250});
            return;
        }
        if ($("input[name='expCheck']:checked")[0] == null) {
            layer.msg("请选择要结算的项目",{icon:2,time:1250});
            return;
        }

        var cost = 0;
        var check = $("input[name='expCheck']:checked");
        check.each(function () {
            var row = $(this).parent("td").parent("tr");
            cost += row.find("td").eq(3).text()*row.find("td").eq(4).text();
        });
        $('#medRecNum').val($('#searchedMedRecId').val());
        $('#patientName').val($('#name').val());
        $('#receivables').val(cost.toFixed(2));
        $("#chargeModal").modal();
    }

    //找零计算
    $(function () {
        $('#received').change(function () {
            var received = $('#received').val();
            var receivable = $('#receivables').val();
            $("#change").val((received - receivable).toFixed(2));
        });
    });

    //交费
    function charge() {
        var tollBy = $('#tollBy').val();
        var received = $('#received').val();
        var invoiceNum = $('#invoiceNum').val();
        if(tollBy == ""){
            layer.msg("请选择支付方式",{icon:2,time:1250});
            return;
        }
        if(received == ""){
            layer.msg("请输入实收金额",{icon:2,time:1250});
            return;
        }
        if(invoiceNum == ""){
            layer.msg("请输入发票号",{icon:2,time:1250});
            return;
        }
        var expenseDetailList = [];
        var prescItemList = [];
        var regisId = null;
        var check = $("input[name='expCheck']:checked");
        check.each(function () {
            var row = $(this).parent("td").parent("tr");
            var expenseDetail = {};
            regisId = row.find("td").eq(1).text();
            expenseDetail.regisId = row.find("td").eq(1).text();
            expenseDetail.invoiceId = invoiceNum;
            expenseDetail.itemId = $(this).attr("id");
            expenseDetail.itemName = row.find("td").eq(2).text();
            expenseDetail.itemPrice = row.find("td").eq(3).text();
            expenseDetail.num = row.find("td").eq(4).text();
            expenseDetail.itemType = 1;
            expenseDetail.payTime = new Date();
            expenseDetail.tollBy = tollBy;
            expenseDetailList.push(expenseDetail);
            prescItemList.push($(this).val());
        });

        $.ajax({
            type: "POST",
            url: "/openInvoice",
            async: false,
            headers: {
                'Content-Type': 'application/json'
            },
            data: JSON.stringify({invoiceNum: invoiceNum, amount: $('#receivables').val(),
                state: 0, time: new Date(), regisId: regisId,
                tollBy: tollBy}),
            success: function (data) {
                if(data.success){

                    $.ajax({
                        type: "POST",
                        url: "/addExpenseDetail",
                        async: false,
                        headers: {
                            'Content-Type': 'application/json'
                        },
                        data: JSON.stringify(expenseDetailList),
                        success: function (data) {
                            if(data.success){
                            }
                        }
                    });

                    $.ajax({
                        type: "POST",
                        url: "/updatePrescItemState",
                        async: false,
                        headers: {
                            'Content-Type': 'application/json'
                        },
                        data: JSON.stringify(prescItemList),
                        success: function (data) {
                            if(data.success){
                            }
                        }
                    });

                    //清空模态框数据
                    $("#chargeModal").modal('hide');
                    $('#invoiceNum').val("");
                    $('#received').val("");
                    $('#tollBy').val("");
                    $('#receivables').val("");
                    $('#medRecNum').val("");
                    $('#patientName').val("");
                    $('#change').val("");
                    layer.msg('交费成功',{icon:1,time:1250});
                    //重绘表格
                    searchExpenseList();

                }else{
                    layer.msg(data.error,{icon:2,time:1250});
                }
            },
            error:function(data) {
                console.log(data.msg);
            }
        });
    }
</script>
</body>
<style>
    .table>tbody>tr>td{
        text-align:center;
    }
    .modal-dialog{
        z-index: 9999;
    }
</style>
</html>
