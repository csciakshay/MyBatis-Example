<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    <%@page import="java.util.*" %>
    <%@page import="java.text.*" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fun" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>JSTL and EL Practice</h1>
<%
Date d=new Date();
String dstr=new SimpleDateFormat("yyyy-MM-dd").format(d);
pageContext.setAttribute("number1", 20000);
request.setAttribute("cdate", d);
request.setAttribute("dstr", dstr);
session.setAttribute("number2",1000);
application.setAttribute("number3", 4000);

int[] numbers = new int[]{1,2,3,4,5,6,7,8,9};
request.setAttribute("numbers", numbers);
%>
${cdate}<br>
${dstr}<br>
<fmt:formatDate value="${cdate}" pattern="yyyy-MM-dd"/><br>
<fmt:formatDate value="${cdate}" pattern="MM-dd"/> <br>
<fmt:formatDate value="${cdate}" pattern="yyyy-MM-dd HH:mm:ss"/> <br>
<fmt:formatNumber minFractionDigits="2" value="${number1}" var="v"></fmt:formatNumber><br>
${v}<br>
${v}<br>
${number1}<br>
${number2}<br>
${number3}<br>
${numbers}<br>
<c:choose>
<c:when test="${number1 > 10000}"> Max number</c:when>
<c:when test="${number1 == 10000}"> Max number</c:when>
</c:choose><br>
<c:if test="${number2 < 10000}"> True</c:if><br>
<c:forEach items="${numbers}" var="i">
hello ${i}<br>
</c:forEach>

<table border="1">
<tr>
<c:forEach items="${numbers}" var="i">
<td>hello ${i}</td>
</c:forEach>
</tr>
</table>

<table border="2">
<tr bordercolor="blue"><th>index</th><th>count</th><th>value</th><th>Is First</th><th>Is Last</th></tr>
<c:forEach items="${numbers}" var="i" varStatus="vs">
<tr>
<td>${vs.index}</td>
<td>${vs.count}</td>
<td>${v}</td>
<td>${vs.first}</td>
<td>${vs.last}</td>
</tr>
</c:forEach>
</table>
<br>
${fun:substring("Hello",1,3)}


</body>
</html>