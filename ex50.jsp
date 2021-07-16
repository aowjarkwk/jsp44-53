<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 사용하기 8</title>
</head>
<body>
	지정된 하위 문자열이 문자열에서 발견되면 true를 반환하고 그렇지 않으면 false를 반환<br>
	<c:set var="String" value="Hello world"/>  
	<c:if test="${fn:contains(String, 'hello')}">  
	   <p>Found hello<p>  
	</c:if>  
	<c:if test="${fn:contains(String, 'Hello')}">  
	   <p>Found Hello<p>  
	</c:if>  
	입력 문자열에 대소 문자를 구분하지 않고 지정된 하위 문자열이 포함되어 있는지 테스트하는 데 사용
지정된 부분 문자열을 검색하는 동안 대소 문자를 무시<br>
	<c:if test="${fn:containsIgnoreCase(String, 'hello')}">  
	   <p>Found hello 2<p>  
	</c:if>  
	<c:if test="${fn:containsIgnoreCase(String, 'Hello')}">  
	   <p>Found Hello 2<p>  
	</c:if> 
	입력 문자열이 지정된 접미어로 끝나는 지 테스트하는 데 사용
문자열이 지정된 접미어로 끝나는 경우 true를 반환하고 그렇지 않으면 false를 반환<br>
	<c:set var="String" value="Welcome to JSP programming"/>  
	<c:if test="${fn:endsWith(String, 'programming')}">  
	   <p>String ends with programming<p>  
	</c:if>  
	<c:if test="${fn:endsWith(String, 'JSP')}">  
	   <p>String ends with JSP<p>  
	</c:if> 
	하위 문자열에 지정된 문자열의 인덱스를 결정하는 데 사용<br>
	<c:set var="string1" value="It is first String."/>  
	<c:set var="string2" value="It is <xyz>second String.</xyz>"/>  
	<p>Index-1 : ${fn:indexOf(string1, "first")}</p>  
	<p>Index-2 : ${fn:indexOf(string2, "second")}</p>  
	<c:set var="str1" value="Welcome to JSP        programming         "/>  
	<p>String-1 Length is : ${fn:length(str1)}</p>  
	문자열의 양쪽 끝에서 공백을 무시하는 데 사용<br>
	<c:set var="str2" value="${fn:trim(str1)}" />  
	<p>String-2 Length is : ${fn:length(str2)}</p>  
	<p>Final value of string is : ${str2}</p> 
	구분 기호 문자열을 기반으로 문자열을 배열로 분할하는 데 사용<br>
	<c:set var="str1" value="Welcome-to-JSP-Programming."/>  
	<c:set var="str2" value="${fn:split(str1, '-')}" />  
	<c:set var="str3" value="${fn:join(str2, ' ')}" />  
	<p>String-3 : ${str3}</p>  
	<c:set var="str4" value="${fn:split(str3, ' ')}" />  
	<c:set var="str5" value="${fn:join(str4, '-')}" />  
	<p>String-5 : ${str5}</p>
	지정된 시작 및 끝 위치에 따라 주어진 입력 문자열의 하위 문자열을 반환하는 데 사용<br>
	start : 하위 문자열의 시작 위치<br>
	end : 부분 문자열의 끝 위치<br>
	입력 문자열 : 하위 문자열을 가져와야하는 문자열<br>
	함수의 반환 유형 : 문자열<br>
	<c:set var="string" value="This is the first string."/>  
	${fn:substring(string, 5, 17)}  <br><br>
	문자열 길이를 계산하고 컬렉션의 요소 수를 찾는 데 사용<br>
	<c:set var="str1" value="This is first string"/>  
	<c:set var="str2" value="Hello"/>  
	Length of the String-1 is: ${fn:length(str1)}<br>  
	Length of the String-2 is: ${fn:length(str2)}<br>  
	입력 문자열을 검색하여 제공된 문자열로 바꿈<br> 
	<c:set var="author" value="Ramesh Kumar"/>  
	<c:set var="string" value="pqr xyz abc PQR"/>  
	${fn:replace(author, "Ramesh", "Suresh")}  <br> 
	${fn:replace(string, "pqr", "hello")}  <br> 
</body>
</html>