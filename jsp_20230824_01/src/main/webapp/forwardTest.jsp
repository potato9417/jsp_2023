<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8");%>

  포워딩하는 페이지 forwardTest.jsp로 절대 표시되지 않습니다.<br>

<% 
	String movePage = "forwardToTest.jsp";
%>

<!-- 
	include 디렉티브 페이지 불변(고정)
	   => 변수사용x
-->
<%-- <%@include file="<%forwardToTest.jsp --%>" --%>


<!--
	include 액션태그 페이지 변경가능
	   => 변수사용
-->
<jsp:include page="<%=movePage %>" />


<!-- 
	forward 액션태그
	   => URL불변(고정) 내용만 변경
	   => 변수사용
-->
<%-- <jsp:forward page="forwardToTest.jsp"> --%>
<jsp:forward page="<%=movePage %>">
	<!-- param으로 인자 넘겨줄수 있음 -->
	<jsp:param name="id" value="데이"/>
	<jsp:param name="hobby" value="공놀이"/>
</jsp:forward>
   
forwardTest.jsp페이지의 나머지 부분으로 표시도 실행도 되지 않습니다.