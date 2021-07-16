<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 사용하기 5</title>
</head>
<body>
	<!-- URL 이동하기 -->
<%-- 	
	<c:redirect url="http://www.naver.com" /> --%>
	
	파라미터 값을 전달<br>
	<%-- <c:redirect url="http://www.google.com/search">
		<c:param name="q" value="자연"/>
		<c:param name="etc" value="배경"/> --%>
		<%-- 
	</c:redirect> --%>
	
	내부 url로 리다이렉트 <br>
	
	<c:redirect url="ex46.jsp" />
	

</body>
</html>