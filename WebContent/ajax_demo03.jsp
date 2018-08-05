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
            $.post("EchoServlet",{msg :$("#emp\\.msg").val(),info :"www.mldn.cn"},function(data){
            	$("#showDiv").append("<p>msg="+data.msg+",info="+data.info+"</p>");
            },"json");
		});
	})
</script>
</head>
<body>
	<div id="showDiv"></div>
	<div>
		<input type="text" name="msg" id="emp.msg"> 
	    <input type="button" id="sendBut" value="点击发送">
	</div>
</body>
</html>