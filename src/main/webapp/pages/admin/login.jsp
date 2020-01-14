<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>登录</title>
    <style type="text/css">
        body{
            background: lemonchiffon;
        }
        .login-panel{
            margin-top: 120px;
            text-align: center;
        }
    </style>

</head>

<body>
<div class="back">
<div class="login-panel">
    <p>
        <img src="pages/img/123.jpg" width="150" height="150">
    </p>
    <h2>SMM项目集成系统</h2>
    <form action="login" method="post">
        账号：<input type="text" name="uName"> <br/><br/>
        密码：<input type="password" name="password"> <br/><br/>
        <input type="submit" value="登录">
    </form>
</div>
</div>
</body>


</html>