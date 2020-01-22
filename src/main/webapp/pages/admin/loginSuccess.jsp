<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="com.java.pojo.User" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath %>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录成功</title>
    <style>
        body{
            background: lemonchiffon;
        }
        .login_success{
            margin-top: 120px;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="login_success">
    <h1>登录成功</h1>
    当前登录用户为：${currentUser.uName}
    <br>
    <br>
    <a href="listusers">人员列表查询</a>
    <br>
    <br>
    <a href="listBooks">书籍列表查询</a>
    <br>
    <a href="showpage">接口测试</a>
</div>

<%
    User user = (User)session.getAttribute("currentUser");
    System.out.println("用户姓名为："+user.getuName());//这个是打印到控制台
%>
</body>
</html>