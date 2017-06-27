<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2017/5/10
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
    pageContext.setAttribute("name","郭腾达");
    pageContext.setAttribute("date",new Date());
    %>

   <jsp:forward page="four.jsp"/>
</body>
</html>
