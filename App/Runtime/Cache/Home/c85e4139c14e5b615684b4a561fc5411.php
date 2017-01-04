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

<title>添加新地址</title>

</head>
<body>
<article class="page-container">
    
    <form action="<?php echo U('Home/ShopCart/addAddress');?>" method="post" class="form form-horizontal" id="form-address-add">
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>收件人：</label>
            <div class="formControls col-xs-8 col-sm-6">
                <input type="text" class="input-text" value="<?php echo ($val["l_name"]); ?>" placeholder="" id="l_name" name="l_name">
            </div>
        </div>
       
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>手机号码：</label>
            <div class="formControls col-xs-8 col-sm-6">
                <input type="text" class="input-text" value="<?php echo ($val["l_tel"]); ?>" placeholder="" id="l_tel" name="l_tel">
            </div>
        </div>

        <div class="row cl">
                <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>地址：</label>
                <div class="col-sm-5">
                    <div class="control-group">
                        <div class="controls">
                        <select name="location_p" id="location_p" >
                        </select>
                        <select name="location_c" id="location_c">
                        </select>
                        <select name="location_a" id="location_a">
                        </select>
                        <script src="/jiu_xiangmu/xiangmu/jiu/Public/js/region_select.js"></script>
                        <script type="text/javascript">
                        new PCAS('location_p', 'location_c', 'location_a', '广东', '', '');
                        </script>
                      </div>
                    </div>
                </div>
            </div>
            <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>详细地址：</label>
            <div class="formControls col-xs-8 col-sm-6">
               <textarea rows="3" cols="58" name="detail_addr"></textarea>
            </div>
        </div>
        
       <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>是否设为默认地址:</label>
            <div class="formControls col-xs-8 col-sm-6">
                <input type="radio"   name="l_status" id="status" checked value="0">否 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio"   name="l_status" id="status" value="1">是
            </div>
        </div>
        
        <input type="hidden" name="lid" value="<?php echo ($val["lid"]); ?>">
        
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;确定&nbsp;&nbsp;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;取消&nbsp;&nbsp;">
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
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/js/region_select.js"></script>
<!--/_footer /作为公共模版分离出去--> 

<!--请在下方写此页面业务相关的脚本--> 
<script type="text/javascript">
$(function(){
    $('.skin-minimal input').iCheck({
        checkboxClass: 'icheckbox-blue',
        radioClass: 'iradio-blue',
        increaseArea: '20%'
    });
    
    $("#form-address-add").validate({
        rules:{
            l_name:{
                required:true,
                minlength:2,
                
            },
            
            l_tel:{
                required:true,
                isMobile:true,
            },
         
        
            detail_addr:{
                required:true,
            }
        },
        messages:{
           l_name:{
                required:'请填写收件人',
            },
            l_tel:{
                required:'请输入您的手机号码',
            },
            
             detail_addr:{
                required:'请填写详细地址',
             }
        },

        onkeyup:false,
        focusCleanup:true,
        
       
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
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>