<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<script type="text/javascript" src="lib/PIE_IE678.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>大力金刚</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 用户反馈 <span class="c-gray en">&gt;</span>查看反馈 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
    
    <table class="table table-border table-bordered table-hover table-bg" id="table-sort">
        <thead>
            <tr>
                <th scope="col" colspan="14">查看反馈</th>
            </tr>
            <tr class="text-c">
                
                <th >ID</th>
                <th>用户ID</th>
                <th>反馈用户</th>
                <th>反馈内容</th>
                <th>反馈时间</th>
                <th>操作</th>
            </tr>
        </thead>
        
        <tbody>
            <?php if(is_array($list)): foreach($list as $key=>$val): ?><tr class="text-c">
                
                
                <td><?php echo ($val["sug_id"]); ?></td>
                <td><?php echo ($val["userId"]); ?></td>
                 <td><?php echo ($val["userName"]); ?></td>
                  <td><?php echo ($val["sug_content"]); ?></td>
                <td><?php echo ($val["sug_time"]); ?></td>
                <td class="td-manage">
              
               <a title="删除" href="javascript:;" onclick="Frilink_role_del(this,<?php echo ($val["sug_id"]); ?>)" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
            </tr><?php endforeach; endif; ?>  
    </table>
    
</div>
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui.admin/js/H-ui.admin.js"></script> 
<script type="text/javascript">
$(function(){
    $('#table-sort').dataTable({
        "aaSorting": [[ 1, "desc" ]],//默认第几个排序
        "bStateSave": true,//状态保存
        "aoColumnDefs": [
          //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
        ]
    });
    $('.table-sort tbody').on( 'click', 'tr', function () {
        if ( $(this).hasClass('selected') ) {
            $(this).removeClass('selected');
        }
        else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
        }
    });
});
/*管理员-角色-编辑*/
function Goods_role_edit(title,url,id,w,h){
    layer_show(title,url,w,h);
}
/*管理员-角色-删除*/
function Frilink_role_del(obj,id){
    layer.confirm('数据价值高，删除需谨慎，确认要删除吗？',function(index){
        //此处请求后台程序，下方是成功后的前台处理……
        
        
        $(obj).parents("tr").remove();
        layer.msg('已删除!',{icon:1,time:1000});
        $.get("<?php echo U('Admin/Suggest/del');?>",{'Fri_id':id},function(data){
            if(data.status == '1'){
                $(obj).parents("tr").remove();
                layer.msg('已删除!',{icon:1,time:1000});
                window.location.reload();
            }else{
                alert('错误了。。');
            }
        });
    });
}
</script>
</body>
</html>