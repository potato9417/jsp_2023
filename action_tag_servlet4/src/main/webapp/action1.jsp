<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>action</title>
</head>
<body>
	
	<!-- 인자 수신 -->
	<jsp:useBean id="demoVO" class="bean.DemoVO" scope="request">

		<!-- - 인자 개별 할당 :<br /> -->
		<jsp:setProperty name="demoVO" property="id" param="memberId" />
		<jsp:setProperty name="demoVO" property="name" param="memberName"  />
		<jsp:setProperty name="demoVO" property="address" param="memberAddress" />
		<jsp:setProperty name="demoVO" property="hobbies" param="memberHobbies" />
		
	</jsp:useBean>
	
	id : <jsp:getProperty name="demoVO" property="id" /><br />
	name : <jsp:getProperty name="demoVO" property="name" /><br />
	address : <jsp:getProperty name="demoVO" property="address" /><br />
	
	<!-- JSTL -->
	hobbies : <br>
	<c:forEach var="hobby" items="${demoVO.hobbies}">
		${hobby}<br>
	</c:forEach>
	
</body>
</html>