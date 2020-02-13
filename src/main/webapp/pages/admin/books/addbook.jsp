<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>增加书籍</title>
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
<input type="button" value="返回上一页" onclick="javascrtpt:window.location.href='/listBooks'">
<div class="login-panel">
    <h2>增加书籍</h2>
    <!--这个地方的路径要注意：如果不指定根路径，默认是在跳转过来的页面后面加上跳转路径，会报错！！-->
    <form action="/addBooks">
        书名：<input type="text" name="bookName" required="required"> <br/><br/>
        价格：<input type="text" name="price" required="required"> <br/><br/>
        数量：<input type="number" name="num" required="required"><br/><br/>
              <input type="submit" value="提交" >
    </form>
</div>
</body>


</html>