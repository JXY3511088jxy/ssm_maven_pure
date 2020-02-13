<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>修改书籍</title>
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
    <h2>修改书籍</h2>
    <!--这个地方的路径要注意：如果不指定根路径，默认是在跳转过来的页面后面加上跳转路径，会报错！！-->
    <form action="/updateBooks">
        书名：<input type="text" name="bookName" value=${book.bookName} required="required"> <br/><br/>
        价格：<input type="text" name="price" value=${book.price} required="required"> <br/><br/>
        数量：<input type="number" name="num" value=${book.num} required="required"><br/><br/>
              <input type="hidden" name="id" value="${book.id}">
        <!--这个隐藏id的输入框一定要加上，不然提交的对象id为空，不会更新到列表中-->
        <input type="submit" value="提交">
    </form>
</div>
</body>


</html>