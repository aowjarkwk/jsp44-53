<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 사용하기 4</title>
</head>
<body>
	<%
		for(int i=0; i<=10; i++){
			%>
	i :<%= i %><br>
	<% 		
		}
	%>
	<!-- 반복 태그 -->
	<c:forEach var="i" begin="0" end="10" >
	i : ${ i }<br>
	</c:forEach>
	
	<c:forEach var="i" begin="0" end="10" step="2">
	i : ${ i }<br>
	</c:forEach>
	
	<!-- 배열을 출력해보자.  -->
	<c:set var="intArray" value="<%= new int[]{10,20,30,40,50} %>"/>
	<!-- 향상된 for문 foreach처럼 -->
	<c:forEach var="value" items="${ intArray }">
		value : ${ value }<br>
	</c:forEach>
	
	<!-- varStatus 사용 -->
	<!--  
	- status.index : 0부터 시작하는 루프의 인덱스.
	- status.count : 현재 몇번째 루프인지 값입니다. 1부터 시작합니다.
	- status.current : 현재 아이템입니다. var 속성의 값과 같습니다.
	- status.first : 현재가 첫번째 루프이면 참입니다.
	- status.last : 현재가 마지막 루프이면 참입니다.
	- status.begin : begin  속성을 사용했을 경우 그 값이 나옵니다.
	- status.end : end 속성을 사용했을 경우 그 값이 나옵니다.
	- satus.step :  step 속성을 사용했을 경우 그 값이 나옵니다.
	-->
	<c:forEach var="value" items="${ intArray }" varStatus="status">
		value : ${ value }<br>
		index : ${ status.index }<br>
		count : ${ status.count }<br>
		current : ${ status.current }<br>
	
	</c:forEach>
	
	<!-- map 데이터를 출력하자  -->
	<%
		java.util.HashMap<String, Object> mapData = 
		new java.util.HashMap<String, Object>();
		mapData.put("name", "홍길동");
		mapData.put("now", new java.util.Date());
	%>
	<c:set var="map" value="<%= mapData %>"/>
	<c:forEach var="mapData" items="${ map }">
		${ mapData.key } = ${ mapData.value }<br>
	
	</c:forEach>
	
	<!-- forTokens 태그 -->
	<!-- 구분자(쉼표나 점)를 통한 문자열 분리 용도 -->
	<c:forTokens var="token" items="수박,사과,배,딸기" delims=",.">
		${ token } <br>
	</c:forTokens>
	<!-- 연습문제 -->
	<!--
		1. forEach를 이용하여 1부터 100까지의 합을 구하시오.
		
		2. 구구단 7단을 출력하시오.
		3. 1부터 100사이의 2의 배수이면서 5의 배수인 수만 출력하시오.
		
	-->
	<!-- 1. forEach를 이용하여 1부터 100까지의 합을 구하시오. -->
	<c:set var="result"/>
	<c:forEach var="i" begin="1" end="100" >
		i: ${ result= result+i }<br>
	</c:forEach>
	<!-- 2. 구구단 7단을 출력하시오. -->
	<c:forEach var="i" begin="7" end="63" step="7">
		i : ${ i } <br>
	</c:forEach>
	<!-- 3. 1부터 100사이의 2의 배수이면서 5의 배수인 수만 출력하시오. -->
	<c:set var="five" value="5"/>
	<c:forEach var="i" begin="1" end="100" step="1">
		<c:if test="${i%5==0&&i%2==0}">
		${ i }
		</c:if>
	</c:forEach>
</body>
</html>