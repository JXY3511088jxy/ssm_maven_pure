<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>修改人员</title>
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
        <h2>修改人员</h2>
        <!--这个地方的路径要注意：如果不指定根路径，默认是在跳转过来的页面后面加上跳转路径，会报错！！-->
        <form action="/ssm_maven_pure/updateUsers">
            姓名：<input type="text" name="uName" value=${user.uName}> <br/><br/>
            手机号：<input type="text" name="phone" value=${user.phone}> <br/><br/>
            地址：<input type="text" name="address" value=${user.address}><br/><br/>
            密码：<input type="text" name="password" value=${user.password}><br/><br/>
            <input type="hidden" name="id" value="${user.id}">
            <!--这个隐藏id的输入框一定要加上，不然提交的对象id为空，不会更新到列表中-->
            <input type="submit" value="提交">
        </form>
    </div>
</div>
</body>


</html>