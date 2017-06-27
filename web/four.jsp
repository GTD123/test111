<%--
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
       String name = (String) pageContext.getAttribute("name");
       String date = (String) pageContext.getAttribute("date");
    %>
    <jsp:include page="/WEB-INF/view/head.jsp"/>
    <h3><%=name%></h3>
    <h3><%=date%></h3>
    <jsp:include page="WEB-INF/view/foot.jsp"/>

</body>
</html>
