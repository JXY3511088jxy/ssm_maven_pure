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
    <title>接口测试</title>
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
<input type="button" value="返回主页" onclick="javascrtpt:window.location.href='/pages/admin/login/loginSuccess.jsp'">
<div class="login_success">
    <h1>接口测试</h1>
    <br>
    <br>
    接口地址：<input type="text" name="interfaceadd">
    <input type="button" value="测试" onclick="javascrtpt:window.location.href='../books/addbook.jsp'">
</div>

<%
    User user = (User)session.getAttribute("currentUser");
    System.out.println("用户姓名为："+user.getuName());//这个是打印到控制台
%>
</body>
</html>