<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 연습문제 -->
	<!--
		1. forEach를 이용하여 1부터 100까지의 합을 구하시오.
		2. 구구단 7단을 출력하시오.
		3. 1부터 100사이의 2의 배수이면서 5의 배수인 수만 출력하시오.
	-->
	<c:set var="sum" value="0" />
	<c:forEach var="i" begin="1" end="100" >
		<c:set var="sum" value="${ sum + i }" />
	</c:forEach>
	sum : ${ sum }
	<hr>
	<c:forEach var="i" begin="7" end="7">
		<c:forEach var="j" begin="1" end="9">
			${ i } * ${ j } : ${ i * j } <br>
		</c:forEach>
	</c:forEach>
	<hr>
	<c:forEach var="i" begin="1" end="100" >
		<c:if test="${ i % 2 eq 0 and i % 5 eq 0 }">
		   i : ${ i } <br>
		</c:if>
	</c:forEach>

</body>
</html>