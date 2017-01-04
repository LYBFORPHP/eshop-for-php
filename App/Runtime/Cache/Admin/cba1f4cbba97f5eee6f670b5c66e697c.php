<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <LINK rel="Bookmark" href="/favicon.ico" >
    <LINK rel="Shortcut Icon" href="/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/lib/Hui-iconfont/1.0.7/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/lib/icheck/icheck.css" />
    <link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui.admin/css/style.css" />
</head>
<body>
<div class="page-container">
    <form action="<?php echo U('Admin/Category/addChild');?>" method="post" class="form form-horizontal" id="form-admin-add">

    <div class="row cl">
        <label class="form-label col-6"><span class="c-red">*</span><?php echo ($list[0]['name']); ?>|--子分类名称：</label>
        <input type="hidden" name="pid" value="<?php echo ($list[0]['id']); ?>">
        <input type="hidden" name="path" value="<?php echo ($list[0]['path']); ?>">
        <div class="formControls col-6">
            <input type="text" class="input-text" value="" placeholder="" id="user-name" name="name">
        </div>
        <div class="col-5"> </div>
    </div>

    <div class="row cl">
        <label class="form-label col-6">分类描述：</label>
        <div class="formControls col-10">
            <textarea name="description" cols="" rows="" class="textarea"  placeholder="说点什么...最少输入10个字符" datatype="*10-100" dragonfly="true" nullmsg="备注不能为空！" onKeyUp="textarealength(this,100)"></textarea>
            <p class="textarea-numberbar"><em class="textarea-length">0</em>/100</p>
        </div>
        <div class="col-5"> </div>
    </div>

    <div class="row cl">
        <div class="col-9 col-offset-2">
            <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
        </div>
    </div>
    </form>
</div>
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/jquery-form/jquery-form.js"></script> 

<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/layer/2.1/layer.js"></script>
<script type="text/javascript" src="http://lib.h-ui.net/icheck/jquery.icheck.min.js"></script> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/jquery.validation/1.14.0/jquery.validate.min.js"></script> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/jquery.validation/1.14.0/messages_zh.min.js"></script>
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui.admin/js/H-ui.admin.js"></script>
<script type="text/javascript">
$(function(){
  	$('.skin-minimal input').iCheck({
  		checkboxClass: 'icheckbox-blue',
  		radioClass: 'iradio-blue',
  		increaseArea: '20%'
  	});

  	$("#form-admin-add").validate({
        rules:{
            name:{
                required:true,
                minlength:1,
                maxlength:10
            },
        },
        onkeyup:false,
        focusCleanup:true,
        success:"valid",
        submitHandler:function(form){
            $(form).ajaxSubmit();
            var index = parent.layer.getFrameIndex(window.name);
            parent.$('.btn-refresh').click();
            window.parent.location.reload();
            parent.layer.close(index);
        }
    });
	  
});
</script>
</body>
</html>