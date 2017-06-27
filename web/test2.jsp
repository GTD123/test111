<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2017/5/26
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    ${fn:toLowerCase("I LOVE YOU")}<mysqlbr>
    ${fn:toUpperCase("sdsdsdfs")}<br>
${fn:trim("   ni  hao   ")}<br>
<%
List<String> list= Arrays.asList("1","2","d","f");

request.setAttribute("list",list);
%>
${fn:length(list)}<br>
${fn:length("www.ruiqi.com")}<br>
${fn:split("sds.dssds.sdsd.sds.sd","." )[1]}<br>
${fn:indexOf("www.iteye.com","666")}
        ${fn:startsWith("www.iteye.com","iteye")}
        ${fn:endsWith("www.iteye.com","com")}
        ${fn:replace("www iteye com", " ", ".")}<br>
        ${fn:substring("www.it315.org", 4, 9)}<br>
        ${fn:substringAfter("www.it315.org",".")}
        ${fn:substringBefore("www.it315.org",".")}
</body>
</html>