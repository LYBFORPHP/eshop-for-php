<?php if (!defined('THINK_PATH')) exit();?><!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="/favicon.ico" >
<LINK rel="Shortcut Icon" href="/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="http://lib.h-ui.net/html5.js"></script>
<script type="text/javascript" src="http://lib.h-ui.net/respond.min.js"></script>
<script type="text/javascript" src="http://lib.h-ui.net/PIE_IE678.js"></script>
<![endif]-->


<link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui.admin/css/style.css" />
<!-- <link rel="stylesheet" type="text/css" href="http://static.h-ui.net/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="http://static.h-ui.net/h-ui/css/H-ui.admin.css" /> -->
<!-- <link rel="stylesheet" type="text/css" href="http://lib.h-ui.net/Hui-iconfont/1.0.7/iconfont.css" /> -->
<!-- <link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="http://lib.h-ui.net/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="http://static.h-ui.net/h-ui/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="http://static.h-ui.net/h-ui/css/style.css" /> -->
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<!--/meta 作为公共模版分离出去-->

<title>添加管理员 - 管理员管理 - H-ui.admin v2.4</title>
<meta name="keywords" content="H-ui.admin v2.3,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v2.3，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
<article class="page-container">
	<form action="<?php echo U('Admin/Information/add_info');?>" class="form form-horizontal" id="form-admin-add" method="post" >
	<div class="row cl">
		<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>添加公告内容：</label>
		<div class="formControls col-xs-8 col-sm-10">
			<input type="text" class="input-text" value="" placeholder="" id="adminName" name="adminName">
		</div>
	</div>
	
	<div class="row cl">
		<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
			<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
		</div>
	</div>
	</form>
</article>

<!--_footer 作为公共模版分离出去--> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/jquery-form/jquery-form.js"></script> 

<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/layer/2.1/layer.js"></script>
<script type="text/javascript" src="http://lib.h-ui.net/icheck/jquery.icheck.min.js"></script> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/jquery.validation/1.14.0/jquery.validate.min.js"></script> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/jquery.validation/1.14.0/messages_zh.min.js"></script>
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui.admin/js/H-ui.admin.js"></script>  
 
<!--/_footer /作为公共模版分离出去--> 

<!--请在下方写此页面业务相关的脚本--> 
<script type="text/javascript">
$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	
	$("#form-admin-add").validate({
		rules:{
			adminName:{
				required:true,
				minlength:10,
				maxlength:60
			},
			password:{
				required:true,
				minlength:6
			},
			password2:{
				required:true,
				equalTo: "#password"
			},
			sex:{
				required:true,
			},
			phone:{
				required:true,
				isPhone:true,
			},
			email:{
				required:true,
				email:true,
			},
			adminRole:{
				required:true,
			},
		},
		messages:{
			password:{
				required:'密码不能为空',
				minlength:'密码至少为6位'
			}
		},
		onkeyup:false,
		focusCleanup:true,
		success:"valid",
		submitHandler:function(form){
			$(form).ajaxSubmit();
			var index = parent.layer.getFrameIndex(window.name);
			parent.$('.btn-refresh').click();
			parent.layer.msg('已添加!',{icon:1,time:1000});
			window.parent.location.reload();

			parent.layer.close(index);
		}
	});
});
</script> 
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>