<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// 페이지 이동,파라미터 값도 같이 전달
	// response.sendRedirect("https://www.naver.com"); 외부
	// response.sendRedirect("chooseTag(5).jsp?name2=bk");
	
	// <c:redirect url="이동할 페이지명"> 
	//		<c:param name="매개변수명" value="전달할값" />
	// </c:redirect>
	
	
	
%>
<c:redirect url="chooseTag(5).jsp?name2=bk">
	<c:param name="name2" value="bk" />
</c:redirect>