<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>增加人员</title>
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
<input type="button" value="返回上一页" onclick="javascrtpt:window.location.href='/listusers'">
<div class="login-panel">
    <h2>增加人员</h2>
    <!--这个地方的路径要注意：如果不指定根路径，默认是在跳转过来的页面后面加上跳转路径，会报错！！-->
    <form action="/addUsers">
        <!--required="required"这个是设置为必填字段。
                其中字段类型为String的，默认的空值为''
                数字类型的默认空值为null-->
        姓名：<input type="text" name="uName" required="required"> <br/><br/>
        手机号：<input type="text" name="phone" required="required"> <br/><br/>
        地址：<input type="text" name="address" required="required"><br/><br/>
        密码：<input type="password" name="password" required="required"><br/><br/>
              <input type="submit" value="提交" >
    </form>
</div>
</body>


</html>