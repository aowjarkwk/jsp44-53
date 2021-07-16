<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 사용하기 3</title>
</head>
<body>
	<!-- 흐름제어 태그 : if  choose,when,otherwise -->
	<c:if test="true">
		항상 true<br>
	</c:if>
	
	<c:if test="some text">
		항상 false<br>
	</c:if>
	
	<!-- EL 비교,논리연산자 -->
	<c:if test="${10<20 }">
		10은 20보다 작다.<br>
	</c:if>
	
	<c:if test="<%=10<20 %>">
		10은 20보다 작다.<br>
	</c:if>
	
	<c:set var="name" value="홍길동"/>
	<c:if test="${name eq '홍길동' }">
		name이 홍길동과 같음<br>
	</c:if>
	
	<!-- if else문을 쓰려면 choose태그 사용 -->
	<c:set var="name" value="변사또"/>
	<c:choose>
		<c:when test="${name eq '홍길동' }">
		name이 홍길동과 같음<br>
		</c:when>
		<c:when test="${name eq '변사또' }">
		name이 변사또와 같음<br>
		</c:when>
		<c:otherwise>
			그 외의 이름임.<br>
		</c:otherwise>
	</c:choose>

</body>
</html>