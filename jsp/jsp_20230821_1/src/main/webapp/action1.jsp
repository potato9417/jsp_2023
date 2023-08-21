<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko-kr">
<head>
<meta charset="UTF-8">
<title>action</title>
</head>
<body>
<%
	// 주의) 공백(""), null 대응이 되지않음
	/* String id = request.getParameter("id");
	String pw = request.getParameter("pw"); */
	
	// 공백, null 대응 방법 => 에러 메시징
	// 삼항연산자 사용
	String id = request.getParameter("id")==null ? "id를 입력하세요" :
				request.getParameter("id").trim().equals("")==true ? "id를 입력하세요" :
				request.getParameter("id");
	String pw = request.getParameter("pw")==null ? "pw를 입력하세요" :
				request.getParameter("pw").trim().equals("")==true ? "pw를 입력하세요" :
				request.getParameter("pw");
	out.println("id = "+id);
	out.println("pw = "+pw);
%>
	<hr>
<%
	// if문 사용
	String msg = "";
	if(id.equals("id를 입력하세요") || pw.equals("pw를 입력하세요")){
		msg = id + "<br>" + pw;
		out.println(msg);
	}
	else {
		out.println("id = "+id);
		out.println("pw = "+pw);
	}
%>
</body>
</html>