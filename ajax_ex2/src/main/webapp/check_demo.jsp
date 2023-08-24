<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	// 데이터베이스가 아직 없기 때문에 리스트(List)를 활용하여
	// 모의적으로 데이터베이스와 유사한 상황을 연출합니다.
	List<String> list = new ArrayList<>();

    // 데이터베이스(회원정보 테이블) 상황을 대체하는 아이디(id) 리스트
	list.addAll(Arrays.asList(new String[]{"abcd1234", "java1234", "jsp11111", "servlet123"}));
    
    // 넘어온 인자 확인
    // 여기서 request JSP 기본객체의 getParameter 메서드를 
    // 활용하여 전송된 인자를 인지합니다.
    String id = request.getParameter("id").trim();
    System.out.println("수신 인자(id) : " + id);
    
    // 클라이언트로 보낼 메시지
    String msg = "";
    
    // 아이디가 아이디 모음(모의 데이터베이스)에 있는지 여부 확인/메시징 
    if (list.contains(id) == true) {
    	
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