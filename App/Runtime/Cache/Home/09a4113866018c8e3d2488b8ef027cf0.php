<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
    <link rel="stylesheet" type="text/css" href="/jiu_xiangmu/xiangmu/jiu/Public/css/bootstrap.min.css" />
	
</head>
<body>
	<h1>意见反馈</h1><hr><br>

	<center>
		<div style="color:red;font-size:25px">您的建议让我们做得更好</div><br>
		<form action="<?php echo U('Home/Suggest/index');?>" method="post">
			
			内 容: <textarea name="content" id="" cols="30" rows="5"></textarea><br><br>
			<input type="hidden" value="<?php echo ($_SESSION['user_logininfo'][0]['user_id']); ?>" name="userId">
			<input type="hidden" value="<?php echo ($_SESSION['user_logininfo'][0]['user_name']); ?>" name="userName">

			<input type="submit" class="btn btn-info" style="padding:5px 60px">
		</form>

	</center>
</body>
</html>