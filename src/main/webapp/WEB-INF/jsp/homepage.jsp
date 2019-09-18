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

    <title>病历首页</title>
</head>
<body>
    <form action="#" method="post" class="form form-horizontal" id="">
        <div class="row cl" style="background-color: #eaf1f5; text-align:center;" >
            <button class="btn" id="submit" type="submit" style="color: #337ab7; background: transparent; border: none;">
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
            <label style="width: 40px"></label>
            <label class="label" style="background-color: #0e90d2; font-size: medium; height: 25px;">病史内容:</label>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-2 col-sm-2">主诉：</label>
            <div class="formControls col-xs-9 col-sm-9">
                <textarea style="overflow:auto" class="input-text radius" value="" placeholder="" name="chiefComplaint" id="chiefComplaint" required></textarea>
            </div>
        </div>
    </form>


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
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>