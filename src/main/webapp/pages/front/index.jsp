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
		<a href="login">  <!--以项目名称为路径访问的时候，这个地方的路径前面不能加/，如果加/，就代表是直接端口后面访问这个路径
，没加上项目名字，就会报404错误-->
			<strong>点击跳转到登录页面</strong>
		</a>
	</div>
</body>
</html>