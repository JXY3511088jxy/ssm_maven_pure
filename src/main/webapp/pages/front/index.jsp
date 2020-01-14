<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath %>">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>前台首页</title>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="nomal">
		<h1>整合成功了</h1>
		<a href="/login">
			<strong>点击跳转到登录页面</strong>
		</a>
	</div>
</body>
</html>