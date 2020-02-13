<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

    <title>书籍列表</title>
    <!--当前页面的资源路径，都要在对应controller的类路径下再加上资源的路径进行访问；
        所以controller的类路径最好不设置，不然容易出现资源访问不了，或者css样式不起作用的情况。、
        -->
    <link rel="stylesheet" type="text/css" href="css/style.css" >
    <link rel="stylesheet" type="text/css" href="css/bootstrap/3.3.6/bootstrap.min.css" >


</head>

<body>

<script language="javascript">
    function delcfm() {
        if (!confirm("确认要删除？")) {
            window.event.returnValue = false;
        }
    }
</script>

<a href="css/style.css">点击打开css</a>
<input type="button" value="返回主页" onclick="javascrtpt:window.location.href='/pages/admin/login/loginSuccess.jsp'">
<div class="nomal">
    <form action="findBooks">
        <!--这个button跳转的路径要按照设置的根访问路径添加-->
        <input type="button" value="新增" onclick="javascrtpt:window.location.href='/pages/admin/books/addbook.jsp'">
        书名：<input type="text" name="bookName">
        价格：<input type="text" name="price" size="6">
        数量：<input type="text" name="num" size="6">
        <input type="submit" value="查询">
    </form>
    <table class="success" align='center' border='1' cellspacing='0'>
        <tr>
            <td>序号</td>
            <td>书名</td>
            <td>价格</td>
            <td>数量</td>
            <td>编辑</td>
            <td>删除</td>
        </tr>
        <c:forEach items="${bookList1}" var="c">
            <tr>
                <td>${c.id}</td>
                <td>${c.bookName}</td>
                <td>${c.price}</td>
                <td>${c.num}</td>
                <td><a href="updatelistBooks?id=${c.id}">编辑</a></td>
                <td><a href="deleteBooks?id=${c.id}" onclick="delcfm()">删除</a></td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>

</html>

