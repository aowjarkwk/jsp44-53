<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> JSTL 사용하기 6 </title>
</head>
<body>
	<!-- 예외처리 catch태그  -->
	<c:catch var="e">
		name : <%= request.getParameter("name") %> <br>
		<%
			/* null exception이 발생 */
			if( request.getParameter("name").equals("tom") ) {
		%>
				${ param.name }은 tom입니다.
		<%		
			}
		%>
	</c:catch>
	<p>
	<c:if test="${ e != null }">
		예외가 발생했습니다! <br>
	</c:if>	
	${ e } <br>
</body>
</html>