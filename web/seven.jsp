<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2017/5/12
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="person" class="com.example.hello.Entity.Person" scope="page"/>
<jsp:setProperty name="person" property="name" param="param_name"/>
<jsp:setProperty name="person" property="age" value="30"/>
<jsp:setProperty name="person" property="sex" value="男"/>
<jsp:setProperty name="person" property="married" value="true"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:getProperty name="person" property="name"/>
<jsp:getProperty name="person" property="married"/>
<jsp:getProperty name="person" property="sex"/>
<jsp:getProperty name="person" property="age"/>
</body>
</html>
