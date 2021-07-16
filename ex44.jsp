<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="jsp_examples.Users" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL사용하기 2</title>
</head>
<body>
	<!-- 변수 설정  -->
	<!-- scope : page, request, session, application -->
	<!--       : 기본값 page -->
	<c:set var = "name" value="홍길동" scope="request"/>
	name : ${ name } <br>
	<c:set var = "name2">이순신</c:set>
	name2 : ${ name2 } <br>
	
	<%
		//클래스 객체 생성
		Users users = new Users();
	%>
	<!-- EL은 스크립트릿 변수(객체)에 바로 접근이 안됨. -->
	<!-- ${ users.address } <-이거 안됨-->
	<c:set target="<%=users %>" property="address" value="한양"/>
	address : <%=users.getAddress() %><br>
	<!-- 변수 제거 -->
	<c:remove var="name2" scope="page"/>
	name2 : ${ name2 } <br>
	
</body>
</html>