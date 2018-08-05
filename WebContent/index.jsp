<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ajax交互</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script>
	$(function() {
		$(sendBut).on("click", function() {
            $.ajax({//jQuery处理的原生操作
            	url:"http://www.b.com:8080/AjaxJQueryProject/EchoServlet",//请求的路径
            	method:"POST",//请求方式
            	data:{
            		msg:$(msg).val(),
            		info:"www.mldn.cn"
            	},
            	dataType:"jsonp",//跨域访问
            	jsonp:"jsonpcallback",//必须设置的参数
            	success:function(data){//处理成功之后的信息
            		console.log("处理请求成功!"+data);
            	    $("#showDiv").append("<p>msg="+data.msg+"info="+data.msg+"</p>")
            	},
            	error:function(){
            		alert("出错啦");
            	}
            });
		});
	})
</script>
</head>
<body>
	<div id="showDiv"></div>
	<div>
		<input type="text" name="msg" id="msg"> 
	    <input type="button" id="sendBut" value="点击发送">
	</div>
</body>
</html>