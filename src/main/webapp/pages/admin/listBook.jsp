<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

    <title>书籍列表</title>
    <link rel="stylesheet" type="text/css" href="css/style.css" >


</head>

<body>



<div class="nomal">
    <a href="css/style.css">点击打开css</a>
    <br>
    <br>
    <table align='center' border='1' cellspacing='0'>
        <tr>
            <td>序号</td>
            <td>书名</td>
            <td>价格</td>
            <td>数量</td>
        </tr>
        <c:forEach items="${bookList1}" var="c">
            <tr>
                <td>${c.id}</td>
                <td>${c.bookName}</td>
                <td>${c.price}</td>
                <td>${c.num}</td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>

</html>

