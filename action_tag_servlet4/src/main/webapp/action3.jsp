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
	Map<String, String[]> map = request.getParameterMap();
	
	// map.forEach((k,v)->System.out.println(k+"="+v[0]));
	
	Set<String> set = map.keySet();
	Iterator<String> it = set.iterator();
	
	while (it.hasNext()) {
		String key = it.next();
		String[] val = map.get(key);
		
		if (val.length == 1) {
			
			out.print(key + "=" + val[0] + "<br>");
			
		} else {
			
			for (String s : val) {
				out.println(key + "=" + s + "<br>");
			}
			
		} //
	} 
%>		
</body>
</html>