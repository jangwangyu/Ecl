<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>if문 태그</title>
</head>
<body>
<%
	// int age=20;
	// String name="bk";
	// if(age>19) <c:if test="조건식(el로 표시)"
%>
<c:set var="age" value="${20}" />
<c:set var="name" value="${'bk'}" />
<c:if test="true">
	무조건 실행이 되는 구문
</c:if>
<br>

<c:if test="${19<age}"><br>
	당신의 나이는19살 이상임 <br>
</c:if>

<c:if test="${name=='bk'}">
	name의 값은 ${pageScope.name} 입니다. <br>
</c:if>
<!-- c:if 액션태그에서는 else 구문이 없다 -->
<c:if test="${name!='bk'}">
	name의 값은 ${pageScope.name} 입니다. <p>
</c:if>

</body>
</html>