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
		String lastName = request.getParameter("last-name");
		String name = request.getParameter("name");
		
		out.println("성은 "+lastName);
		out.println("이름은 "+name);
	%>

</body>
</html>
