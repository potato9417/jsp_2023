<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>action</title>
</head>
<body>
   
    <!-- 인자 수신 -->
    <jsp:useBean id="demoVO" class="bean.DemoVO" scope="request">
        - 인자 일괄 할당 :<br />
        <jsp:setProperty name="demoVO" property="*" />
       
        <!-- - 인자 개별 할당 :<br /> -->
        <%--    
        <jsp:setProperty name="demoVO" property="id"  value="jsp" />
        <jsp:setProperty name="demoVO" property="name" value="홍길동" />
        <jsp:setProperty name="demoVO" property="address" value="역삼동" />
        --%>
    </jsp:useBean>
   
    <!-- 인자 출력 -->
    JSP expression(표현식) : <%= demoVO.getId() %><br />
    JSP 액션 태그 : <jsp:getProperty name="demoVO" property="id" /><br />
    EL 방식 출력-1 : ${demoVO.id}<br />
    EL 방식 출력-2 : ${demoVO.getId()}
   
    <hr>
    <jsp:getProperty name="demoVO" property="hobbies" /><br />
   
    <!-- JSTL -->
    <c:forEach var="hobby" items="${demoVO.hobbies}">
        ${hobby}<br>
    </c:forEach>
   
</body>
</html>