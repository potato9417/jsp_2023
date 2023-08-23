<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.javateam.jdbc.dao.MemberDAO" %>
<!DOCTYPE html>
<html lang="ko-kr">
<head>
<meta charset="UTF-8">
<title>이메일 중복점검</title>
</head>
<body>
<%
	// 이메일 인자 수신
	String email = request.getParameter("email");
	System.out.println("이메일 : "+email); // out.println() 사용하지않고 System.out.println()사용
	
	// 데이터베이스 활용 : DAO 호출
	MemberDAO dao = new MemberDAO(); // 위에 DAO 위치 파악해서 import해야함
	
	// 이메일 중복 점검 함수(메서드) => hasEmail생성
	boolean result = dao.hasEmail(email);
	
	String msg = result==true ? "false" : "true";
	
	out.println(msg);
	
%>
</body>
</html>