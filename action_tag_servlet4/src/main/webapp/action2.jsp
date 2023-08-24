<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>action</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8"); // 인자 인코딩 
	Enumeration<String> em = request.getParameterNames();
	
	while (em.hasMoreElements()) {
		String key = em.nextElement();
		String[] val = request.getParameterValues(key);
		
		if (val.length == 1) {
			
			out.print(key + "=" + val[0] + "<br>");
			
		} else {
			
			for (String s : val) {
				out.println(key + "=" + s + "<br>");
			}
			
		} //
		
	} //
%>		
</body>
</html>