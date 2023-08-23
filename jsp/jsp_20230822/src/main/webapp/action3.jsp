<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html lang="ko-kr">
<head>
<meta charset="UTF-8">
<title>action3</title>
</head>
<body>
<%
	// 에러 메시지
	String msg = "";

	// enumeration을 사용한 인자 확인
	Enumeration<String> enums = request.getParameterNames();

	// 다음 인자 검색
	while(enums.hasMoreElements()){
		
		String param = enums.nextElement(); // 인자이름(form태그의 name 값)
		// String val = request.getParameter(param); // 인자값
		String vals[] = request.getParameterValues(param);
		
		//out.println("인자값 : "+vals.length);
		
		if(vals.length == 1) { // 인자값이 낱개일경우 => 아이디/비번
			
			out.println("인자 : "+ param+" = "+vals[0]+"<br>");
			
			// 값이 입력되지않았을때 오류 메시지 
			if(vals[0].trim().equals("")) {
				String labelName = param.equals("id") ? "아이디" : "패스워드";
				msg += labelName + "인자를 입력하세요.\\n";
				//msg += param + "인자를 입력하세요";
			}
			
		}
		else { // 인자값이 여러개일 경우 => 취미
			
			String tempVal = "";
		
			for(String s : vals){
				tempVal += s+" ";
			}
			
		}
		
	} // while
		
	// out.println(request.getParameter("hobby"));
	
	if(request.getParameter("hobby")==null){
		msg += "취미"+"인자를 입력하세요.\\n";
	}
	out.println("<script>alert('"+msg+"');</script>");
	out.println("<script>location.href='form.html';</script>");
	//out.println(msg);
	
%>
</body>
</html>