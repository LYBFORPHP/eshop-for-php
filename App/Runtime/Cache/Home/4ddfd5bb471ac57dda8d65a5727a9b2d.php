<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/jiu_xiangmu/xiangmu/jiu/Public/css/bootstrap.min.css">
	<style>
		body{
			font-family: 微软雅黑
		}
	</style>
</head>
<body>
	<h1>我的积分</h1><hr>
	<table class="table" border="1" style="text-align:center">
		<tr class="info">
			<th style="text-align:center;font-size:20px">用户名</th>
			<th style="text-align:center;font-size:20px">积分</th>
		</tr>
		<?php if(is_array($list)): foreach($list as $key=>$val): ?><tr>
			<td><?php echo ($val["user_name"]); ?></td>
			<td><?php echo ($val["user_integral"]); ?></td>
		</tr><?php endforeach; endif; ?>
	</table>

	<div style="color:red">提示 :亲, 购买商品可获得大量积分, 一定积分可以兑换礼品,赶快去购物吧！^_^</div>
</body>
</html>