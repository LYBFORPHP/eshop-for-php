<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/jiu_xiangmu/xiangmu/jiu/Public/css/bootstrap.min.css">
	<script type="text/javascript" src="/jiu_xiangmu/xiangmu/jiu/Public/js/jquery-2.1.3.min.js"></script>
	<style>
		body{
			font-family: 微软雅黑
		}
	</style>
</head>
<body>
	<h1 style="color:red">我的收货地址</h1><hr><br><br>
	<?php if(empty($list)): ?><h2>暂时没有添加收货地址</h2><br>
	<?php else: ?>
	

	<table class="table table-hover" border="1" style="text-align:center">
		<tr>
			<th style="text-align:center;font-size:20px">收货人</th>
			<th style="text-align:center;font-size:20px">收货地址</th>
			<th style="text-align:center;font-size:20px">手机号码</th>
			<th style="text-align:center;font-size:20px">状态</th>
			<th style="text-align:center;font-size:20px">添加时间</th>
			<th style="text-align:center;font-size:20px">操作</th>
		</tr>
			<?php if(is_array($list)): foreach($list as $key=>$val): ?><tr>
			<td><?php echo ($val["l_name"]); ?></td>
			<td><?php echo ($val["l_address"]); ?></td>
			<td><?php echo ($val["l_tel"]); ?></td>
			<td><?php echo ($val["l_status"]); ?></td>
			<td><?php echo ($val["l_addtime"]); ?></td>
			<td><a href="javascript:;" onclick="del(this,<?php echo ($val["lid"]); ?>)">删除</a></td>
		</tr><?php endforeach; endif; ?>
	</table><br><?php endif; ?>
	<botton class="btn btn-info"><a href="<?php echo U('Home/Location/add');?>">添加收货地址</a></botton>
</body>

<script>
	function del(obj,$id){
		if(confirm('确定删除?')){
			$.get("<?php echo U('Home/Location/del');?>" , {'id' : $id } , function(data){
				if(data == '1'){
					$(obj).parents("tr").remove();
				}else{
					alert('删除失败 ! ');
				}
			});
		}
	}

</script>
</html>