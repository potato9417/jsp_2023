<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map, java.util.Set, java.util.Iterator" %>
<!DOCTYPE html>
<html lang="ko-kr">
<head>
<meta charset="UTF-8">
<title>action</title>
</head>
<body>
<%
	// 다수 인자 일괄 처리
	Map<String, String[]> paramMap = request.getParameterMap();
	Set<String> params = paramMap.keySet();
	Iterator<String> it = params.iterator();
	
	out.println("인자갯수 : "+paramMap.size() +"<br>");
	String msg = ""; // 에러 메세지
	
	// 인자 전송 여부 확인
	if(paramMap.size() == 0){ // 인자x
		
		msg = "id/pw를 입력하세요";
		out.println(msg);
	}
	else { // 인자 전송 완료
		
		while(it.hasNext()){
			String param = it.next();
			String val = "";
			String valArr[] = paramMap.get(param);
			
			if (valArr.length ==1){ // 낱개인자

				val = valArr[0];
			}
			else { // 다수인자
				
				for(String s : valArr){
					
					val += s + " ";
				}
			}
			
			// 에러처리 메시지
			msg += val.trim().equals("") ?
					param + "을 입력하세요.\\n" : "";
			
			out.println(param + " = " + val + "<br>");
		} // while
		
	} // 인자 전송 여부 확인

	
	// out.println("메세지길이 : "+msg.length());
	out.println("메세지 : "+msg);
	
	
	// 에러 발생시 이전 페이지로 이동
	if(msg.length() >0){ // 에러 메세지 발생 => 에러 발생
	
		out.println("메세지 있음");
	
		// alert 창 띄우기
		out.println("<script>alert('"+msg+"');</script>");
		
		// 이전페이지로 이동
		out.println("<script>location.href='form.html';</script>");
		// out.println("<script>history.back();</script>");
		// out.println("<script>history.go(-1);</script>");
		// response.sendRedirect("from.html"); // jsp의 코드이므로 js의 코드인 alert를 미처리 => 사용시 주의
		
	}
	
%>

</body>
</html>