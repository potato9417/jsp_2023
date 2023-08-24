package com.javateam.jdbc.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.javateam.jdbc.dao.MemberDAO;

/**
 * Servlet implementation class MobileCheckServlet
 */
@WebServlet("/mobile_check.do")
public class MobileCheckServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 이메일 인자 수신
		String mobile = request.getParameter("mobile")==null ? "인자를 입력하세요" : request.getParameter("mobile").trim();
		System.out.println("휴대폰번호 : "+mobile); // out.println() 사용하지않고 System.out.println()사용
		
		
		// out.println : 웹브라우저에 출력 => servlet에는 따로 존재하지않아서 만들어 줘야함
		// Servlet은 기본(내장) 객체 개념이 없기때문에 out객체를 따로 만들어 줘야함
		response.setContentType("text/html; charset=UTF-8"); // 한글지원
		//response.setContentType("text/plain; charset=UTF-8"); // 한글지원
		response.setCharacterEncoding("UTF-8"); // 한글지원
		
		PrintWriter out = response.getWriter();
		
		
		if(request.getParameter("mobile")!=null) {
			
			// 데이터베이스 활용 : DAO 호출
			MemberDAO dao = new MemberDAO(); // 위에 DAO 위치 파악해서 import해야함
			
			// 이메일 중복 점검 함수(메서드) => hasMobile생성
			boolean result = dao.hasMobile(mobile);
			
			String msg = result == true ? "false" : "true";
			
			out.println(msg);
		}
		else {
			out.println("인자를 입력하세요");
		}
		
		

	}

}
