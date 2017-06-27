<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2017/5/11
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:forward page="/six.jsp">
    <jsp:param name="name" value="hello"/>
    <jsp:param name="age" value="22"/>
</jsp:forward>
</body>
</html>
