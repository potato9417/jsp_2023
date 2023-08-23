<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.javateam.jdbc.dao.MemberDAO" %>
<%
	// 넘어온 인자 확인
    // 여기서 request JSP 기본객체의 getParameter 메서드를 
    // 활용하여 전송된 인자를 인지합니다.
    String id = request.getParameter("id").trim();
    System.out.println("수신 인자(id) : " + id);
    
    // 데이터베이스 활용 : DAO(Data Access Object) 
    // : CRUD(Create Read Update Delete) 레코드(record) 메서드들로 
    // 구성된 자바빈 (영속:persistent) 객체
    MemberDAO dao = new MemberDAO();
    
    // 기존 회원 정보에 아이디가 있는지 여부 점검 
    boolean result = dao.hasMember(id);
    
    // 클라이언트로 보낼 메시지
    String msg = "";
    
    System.out.println("result : " + result);
    
    // 아이디가 데이터베이스에 있는지 여부 확인/메시징 
    if (result == true) {
    	
    	msg = "false";	
    	
    } else {
    	
    	msg = "true";
    } //
    
    // 클라이언트로 메시지 전송 
    // : 결과가 텍스트(text/plain) 형태로 출력되면
    // 이 부분을 웹브라우저의 Javascript 코드가 인지하여
    // 서버에서 클라이언트로 전송하는 것으로 간주됩니다.
    // 결과가 여러가지가 있을 경우는 주로 결과 전송시
    // JSON(Javascript Object Notation)
    // 형태로 전송합니다.
    // 참고) https://www.json.org/json-ko.html
    out.println(msg);
%>