<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>未登录</title>
</head>
<body>
	<script type="text/javascript">
	alert("您还未登录！\n请先登录！\n点击确认前往登录界面.");
	</script>
	<% response.setHeader("refresh","0;URL=login.jsp"); %>
</body>
</html>