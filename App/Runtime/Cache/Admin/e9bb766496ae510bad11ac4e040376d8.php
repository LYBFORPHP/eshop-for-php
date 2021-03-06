<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE HTML>
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
<title>收件箱</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 站内信管理 <span class="c-gray en">&gt;</span> 收件箱 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">

	<div class="mt-20">
	<table id="tablestyle" class="table table-border table-bordered table-hover table-bg table-sort">
		<thead>
			
			<tr class="text-c">
				
				<th width="50">站内信ID</th>
				<th width="50">发件人账号</th>
				<th width="100">发件人</th>
				<th width="100">标题</th>
				<th width="100">状态</th>
				<th width="130">发送时间</th>
				<th width="130">操作</th>
			</tr>
		</thead>
		<tbody>
			
			<?php if($list): if(is_array($list)): foreach($list as $key=>$val): ?><tr class="text-c">
					
					<td><?php echo ($val['Inm_id']); ?></td>
					<td><?php echo ($val['Inm_fjid']); ?></td>
					<td><?php echo ($val['Inm_fjname']); ?></td>
					<td><?php echo ($val['Inm_title']); ?></td>
					<?php if($val[Inm_status] == '未读'): ?><td style="color:red"><?php echo ($val['Inm_status']); ?></td>
					<?php else: ?>
					<td style="color:green"><?php echo ($val['Inm_status']); ?></td><?php endif; ?>		
					<td><?php echo ($val['Inm_sendtime']); ?></td>
					<td class="td-manage"><a title="查看详情" href="javascript:;" onclick="member_edit('查看详情','Letterinfo?id=<?php echo ($val["Inm_id"]); ?>','4','','510')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>
					<a title="删除" href="javascript:;" onclick="del_inmail(this,<?php echo ($val["Inm_id"]); ?>)" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
				</tr><?php endforeach; endif; ?>
		<?php else: ?>
			<tr class="text-c">
					<td colspan="7">( ^_^ )暂时没有站内信... </td>	
			</tr><?php endif; ?>
		</tbody>
	</table>
	</div>
</div>
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/layer/2.1/layer.js"></script>
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/laypage/1.2/laypage.js"></script> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/static/h-ui.admin/js/H-ui.admin.js"></script> 
<script type="text/javascript">


/*用户-添加*/
function member_add(title,url,w,h){
	layer_show(title,url,w,h);
}
/*用户-查看*/
function member_show(title,url,id,w,h){
	layer_show(title,url,w,h);
	
}
/*用户-停用*/
function member_stop(obj,id){
	layer.confirm('确认要停用吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="Hui-iconfont">&#xe6e1;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
		$(obj).remove();
		layer.msg('已停用!',{icon: 5,time:1000});
	});
}

/*用户-启用*/
function member_start(obj,id){
	layer.confirm('确认要启用吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
		$(obj).remove();
		layer.msg('已启用!',{icon: 6,time:1000});
	});
}
/*用户-编辑*/
function member_edit(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*密码-修改*/
function change_password(title,url,id,w,h){
	layer_show(title,url,w,h);	
	
}
/*用户-删除*/
function del_inmail(obj,id){
	layer.confirm('删除须谨慎，确认要删除吗？',function(index){
		//此处请求后台程序，下方是成功后的前台处理……
		
		
		
		$.get("<?php echo U('Admin/Inmail/del');?>",{'Inm_id':id},function(data){
			if(data.status == '1'){
				$(obj).parents("tr").remove();
				layer.msg('已删除!',{icon:1,time:1000});
			}else{
				// alert('错误了。。');
				layer.msg('删除失败!',{icon:0,time:1000});
				// 
			}
		});
	});
}
</script> 
</body>
</html>