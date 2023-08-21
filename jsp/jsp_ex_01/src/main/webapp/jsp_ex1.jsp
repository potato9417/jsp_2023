<%-- jsp 주석 --%>
<!-- xml/html 주석 -->

<!-- page 디렉티브(directive:지시자) => 있어야 jsp인지 알수 있음 -->
<!-- ctrl+space 누르면 사용할 것 표여줌 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// scriptlet(스크립트릿)
	// JEE (JSE+JEE)
	String str = "jsp";
	System.out.println("str1 : "+str); // 콘솔창 
	// JSP 내장(기본,built-in) 객체(인스턴스)
	// println : html => 줄바꿈(개행) 기능이없어서 따로 입력해줘야함
	out.println("str2 : " + str + "<br>"); // 웹브라우저
	out.println("str3 : "+str+"<br>"); // 웹브라우저
%>
<%
	// scriptlet(스크립트릿)
	// JEE (JSE+JEE)
	String str2 = "jsp 한글";
	System.out.println("str1 : "+str2); // 콘솔창 
	// JSP 내장(기본,built-in) 객체(인스턴스)
	// println : html => 줄바꿈(개행) 기능이없어서 따로 입력해줘야함
	out.println("str2 : " + str2 + "<br>"); // 웹브라우저
	out.println("str3 : "+str2+"<p>&nbsp</p>"); // 웹브라우저
%>
<!DOCTYPE html>
<html lang="ko-kr">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 표현식(expression) -->
str-4 : <%=str %><br>
</body>
</html>