<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2017/5/10
  Time: 21:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        pageContext.setAttribute("name","过腾达",pageContext.SESSION_SCOPE);
    %>
    <%
    String name1 = (String) pageContext.getAttribute("name");
    String name3 = (String) pageContext.getAttribute("name",pageContext.SESSION_SCOPE);
    %>
    <h3 style="color: red"><%=name1%></h3>
    <h4 style="color: blue"><%=name3%></h4>
</body>
</html>
