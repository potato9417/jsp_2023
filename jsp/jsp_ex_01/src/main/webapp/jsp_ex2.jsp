<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    	// 선언부(declaration) : JSE
    	// out.println("abcd"); // JEE : 오류발생
    	// 현업에서 안씀 => Java Bean으로 대체 : 상대적으로 보안이 안전
    	public int getNum(){
    		return (int)(Math.random() * 10);
    	}
    	
    	// void메서드 사용불가 => return 값이 없기때문
    	public void printStr(String str){
    		System.out.println(str);
    	}
    %>
<!DOCTYPE html>
<html lang="ko-kr">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
ex : <%= 1+2+3+4+5 %><br>
함수 : <%= Math.random() %><br>
getNum : <%= getNum() %><br>
<!-- void메서드 사용불가 => return 값이 없기때문 -->
<%-- printStr : <%= printStr("jsp") %><br> : 오류발생 --%>
<!-- 이렇게는 사용가능 -->
<%
	printStr("jsp");
%>
</body>
</html>