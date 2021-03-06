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



<link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui.admin/css/style.css" />

<!--/meta 作为公共模版分离出去-->

<title>角色管理</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 商品管理 <span class="c-gray en">&gt;</span> 商品浏览<span class="c-gray en">&gt;</span> 商品修改 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>

<article class="page-container">
    <form action="<?php echo U('Admin/Goods/edit');?>" class="form form-horizontal" method="post" id="form-admin-add">
            <!-- 隐藏域接收ID -->
             <input type="hidden" name="id" value="<?php echo ($list[id]); ?>">
             <input type="hidden" name="cateid" value="<?php echo ($list[cateid]); ?>">

    <div class="row cl">
        <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>商品名称：</label>
        <div class="formControls col-xs-8 col-sm-9">
            <input type="text" class="input-text" autocomplete="off" style="width:400px;" placeholder="请输入商品名" name="name" value="<?php echo ($list[name]); ?>">
        </div>
    </div>
   

    <div class="row cl">
        <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>商品单价：</label>
        <div class="formControls col-xs-8 col-sm-9">
            <input placeholder=" 请输入价格" type="text" class="input-text" autocomplete="off" style="width:400px;" name="price" value="<?php echo ($list[price]); ?>">
        </div>
    </div>

    <div class="row cl">
        <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>商品库存量：</label>
        <div class="formControls col-xs-8 col-sm-9">
            <input placeholder=" 请输入库存量" type="text" class="input-text" autocomplete="off" style="width:400px;" name="store" value="<?php echo ($list[store]); ?>">
        </div>
    </div>

    <div class="row cl">
        <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>商品上下架：</label>
        <div class="formControls col-xs-8 col-sm-9 skin-minimal">
            <div class="radio-box">
                <input name="display" type="radio" id="sex-1" checked value="1" <?php echo ($list['display'] == 1 ? 'checked' : ' '); ?>>
                <label for="sex-1">上架</label>
            </div>
            <div class="radio-box">
                <input type="radio" id="sex-2" name="display" value="0" <?php echo ($list['display'] == 0 ? 'checked' : ' '); ?>>
                <label for="sex-2">下架</label>
            </div>
        </div>
    </div>

        <div class="row cl">
        <label class="form-label col-xs-4 col-sm-3">状态：</label>
        <div class="formControls col-xs-8 col-sm-9"> <span class="select-box" style="width:150px;">
            <select class="select" name="status" size="1">
                <option value="0"  <?php echo ($list['status'] == 0 ? 'selected' : ' '); ?>>热销</option>
                <option value="1"  <?php echo ($list['status'] == 1 ? 'selected' : ' '); ?>>新品</option>
                <option value="2"  <?php echo ($list['status'] == 2 ? 'selected' : ' '); ?>>猜你喜欢</option>
            </select>
            </span> 
            </div>
    </div>

    <div class="row cl">
        <label class="form-label col-xs-4 col-sm-3">商品描述：</label>
        <div class="formControls col-xs-8 col-sm-9">
            <textarea name="describe"  cols="" rows=""  class="textarea"  placeholder="说点什么...100个字符以内" dragonfly="true" onKeyUp="textarealength(this,100)" style="width:400px;"><?php echo ($list[describe]); ?></textarea>
            <p class="textarea-numberbar" style="width:400px;"><em class="textarea-length">0</em>/100</p>
        </div>
    </div>

    <div class="row cl">
        <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
            <input class="btn btn-primary radius" type="submit" style="width:150px;" value="&nbsp;&nbsp;确定&nbsp;&nbsp;">
        </div>
    </div>
    </form>
</article>


<!--_footer 作为公共模版分离出去--> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/jquery-form/jquery-form.js"></script> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/icheck/jquery.icheck.min.js"></script> 
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
    
    $("#form-member-add").validate({
        rules:{
            user_name:{
                required:true,
                minlength:2,
                maxlength:16
            },
            sex:{
                required:true,
            },
            user_tel:{
                required:true,
                isMobile:true,
            },
            user_email:{
                required:true,
                email:true,
            },
            uploadfile:{
                required:true,
            },
            
        },
        onkeyup:false,
        focusCleanup:true,
        
        submitHandler:function(form){
            $(form).ajaxSubmit();
            var index = parent.layer.getFrameIndex(window.name);
            parent.layer.msg('修改成功!',{icon:1,time:1000});
            window.parent.location.reload();  
            parent.layer.close(index);

            
        }
    });
});
</script> 
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>