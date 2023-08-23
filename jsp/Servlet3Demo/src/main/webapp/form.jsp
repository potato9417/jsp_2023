<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form</title>
</head>
<body>

	<form method="get" action="<%=request.getContextPath()%>/servlet.do">
		<input type="text" name="txt" />
		<input type="submit" value="전송" />
	</form>
	
</body>
</html>