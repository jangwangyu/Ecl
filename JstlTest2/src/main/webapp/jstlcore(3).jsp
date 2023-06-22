<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlcore(3).jsp(변수(객체)의 사용범위,out태그)</title>
</head>
<body>

	<h3>출력문</h3>
	<%-- <c:out(액션태그명) value(속성명)="출력대상자(el언어와 같이)" /> --%>
	<h1>
	${1+2} <c:out value="${1+2}" />
	<%
		out.println(1+2);
	%>
	<%= 1+2 %>
	<hr>
	${1>3} <c:out value="${1>3}" />
	${1 gt 3} <c:out value="${1 gt 3}" />
	<hr>
	<%
		// String name="하늘";
		// session.setAttribute("name","하늘"); // 세션처리
	%>
	<c:set var="name" value="하늘" scope="session"/>
	expression name:<%=session.getAttribute("name") %> <br>
	set page scope var "name":<c:set var="name" value="hello" scope="page" /> <br>
	<!-- 같은 변수의 값을 출력(어떻게 구분해서 출력? 저장영역.출력할 변수명 ) -->
	1. c:out name: <c:out value="${name}" /> <br>
	2. c:out name: <c:out value="${pageScope.name}" /> <br>
	3. c:out name: <c:out value="${sessionScope.name}" /> <br>
	<hr>
	remove session scope vr "name":<c:remove var= "name" scope="session" /> <p>
	session의 값 name:<c:out value="${sessionScope.name}" />
	</h1>
</body>
</html>