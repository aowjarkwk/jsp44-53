<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> JSTL 사용하기 7 </title>
</head>
<body>
	<!-- 문자열 포맷에 대한 태그 -->
	<!-- 숫자타입  -->
	<c:set var="price" value="10000" />
	<fmt:formatNumber var="numberType" type="number" value="${ price }" />
	숫자 : ${ numberType } 
	<hr>
	<fmt:formatNumber var="numberType" type="currency" value="${ price }" 
	              currencySymbol="원" />
	통화 : ${ numberType }
	<hr>
	<fmt:formatNumber var="numberType" type="percent" value="${ price }" />
	퍼센트 : ${ numberType } 
	<hr>
	<fmt:formatNumber var="numberType" pattern="00000000.00" value="${ price }" />
	패턴 : ${ numberType } 
	<hr>
	<!-- 날짜타입 -->
	<c:set var="now" value="<%= new java.util.Date() %>" />
	<fmt:formatDate value="${now}" type="date" dateStyle="full" /> <br>
	<fmt:formatDate value="${now}" type="date" dateStyle="short" /> <br>
	<fmt:formatDate value="${now}" type="time" /> <br>
	<fmt:formatDate value="${now}" type="both" 
                		dateStyle="full" timeStyle="full" /> <br>
    <!-- pattern 심볼 : java.text.DateFormat과 동일  -->
	<fmt:formatDate value="${now}" pattern="z a h:mm" /> <br>
	<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" /> <br>
	<!-- 날짜시간 문자열에서 파싱하기 -->
	<fmt:parseDate value="2020-06-25 11:53:20" 
			pattern="yyyy-MM-dd HH:mm:ss"  var="date" />
	${ date } <br>	
</body>
</html>