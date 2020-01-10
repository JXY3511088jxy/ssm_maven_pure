<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<form action="login" method="post">
账号：<input type="text" name="uName"> <br/>
密码：<input type="password" name="password"> <br/>
<input type="submit" value="登录">
</form>