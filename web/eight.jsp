<%@ page import="com.example.hello.Entity.Person" %>
<%@ page import="java.util.*" %>
<%@ page import="com.example.hello.Entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
    request.setAttribute("name","孤傲仓狼");
    %>
你得到的值为：${name}
<%
    Person p = new Person();
    p.setAge(20);
    request.setAttribute("person",p);
%>
得到的bean的属性为：${person.age};
<hr>
<%
Person p1 = new Person();
p1.setName("彭涛");
Person p2 = new Person();
p2.setName("杨建华");
    List<Person> list = new ArrayList<Person>();
    list.add(p1);
    list.add(p2);
    request.setAttribute("list",list);
%>
  ${list[0].name}

<hr/>
<c:forEach var="person" items="${list}">
    ${person.name}<br>
</c:forEach>
<hr>
<%
//    Map map = new LinkedHashMap();
    Map<String,String> map = new LinkedHashMap<String,String>();
    map.put("a","aaaa");
    map.put("b","bbbb");
    map.put("c","cccc");
    map.put("d","dddd");

    request.setAttribute("map",map);
%>
${map.a}
${map["d"]}
<hr>
<c:forEach var="me" items="${map}">
    ${me.key}=${me.value}<br/>
</c:forEach>
<hr>
${5==5} ${5 eq 5}<br/>
${5!=5} ${5 ne 5}<br/>
${ 3 <5} ${3 lt 5} <br/>
${ 3 > 5} ${3 gt 5}<br/>
${3 <=5} ${3 le 5}<br/>
${3 >=5} ${3 ge 5}<br/>
<hr>
<%
boolean A = true;
boolean B = true;
%>

${ A && B} ${A and B}<br/>
${A || B} ${A or B}<br/>
${!A} ${not A}<br/>
<hr>
${user ==null} ${user eq null}

<hr>
<%
    List<String> lists = new ArrayList<String>();
    lists.add("aaaa");
    lists.add("bbbb");
    lists.add("cccc");
    lists.add("dddd");
    request.setAttribute("lists",lists);
%>

    <c:if test="${!empty(lists)}">
        <c:forEach var="str" items="${lists}">
            ${str}
        </c:forEach>
    </c:if>
<hr>

<%
List<String> li = null;

%>
<c:if test="${empty(li)}">
    这里没有你想要的数据
</c:if>
<hr>
<%
    request.setAttribute("user",new User("zhangsan"));
%>
${user.name!=null ? user.name: ""}
<hr>
${pageContext}
<hr>
<%
request.setAttribute("name","孤傲沧浪");
%>
${pageScope.name}
<hr>
${initParam.hello}
</body>
</html>
