<?php if (!defined('THINK_PATH')) exit(); if(is_array($infor)): foreach($infor as $key=>$val): ?><li><a href="#" target="_blank" style="color:red;text-decoration:none"> <?php echo ($val["info_content"]); ?></a></li><?php endforeach; endif; ?>