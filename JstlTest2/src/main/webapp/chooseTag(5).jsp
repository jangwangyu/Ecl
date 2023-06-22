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
	name의 값은 ${pageScope.name} 입니다. <br>
</c:if>


<%--  
다중 조건식 else if,, switch~case 
<c:choose>
	 <c:when test="조건식(el)">
	 	수행할 문장1
	 </c"when>
	 
	 <c:when test="조건식2(el)">
	 	수행할 문장2
	 </c"when>
	<c:otherwise>
		위의 조건에 해당되지 않은 경우
	</c:otherwise>
</c:choose>
	el의 내자액체 -> param
	param.name2->request.getParameter("name2")
	chooseTag(5).jsp?name=bk
	chooseTag(5).jsp?age2=20 
	--%>

	<c:choose>
		<c:when test="${param.name2 == 'bk' }">
			<h1>name2의 파라미터 값은 ${param.name2}이다.</h1>
			<br>
		</c:when>
		<c:when test="${param.age2 > 18 }">
	 	당신의 나이는 18세 이상이군요!<br>
		</c:when>
		<c:otherwise>
			<li>당신은 'bk'도 아니고 나이도 18세 이상도 아니군요</li>
		</c:otherwise>
	</c:choose>
</body>
</html>