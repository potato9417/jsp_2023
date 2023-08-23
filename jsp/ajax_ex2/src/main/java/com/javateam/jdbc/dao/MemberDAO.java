package com.javateam.jdbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.javateam.jdbc.util.DbUtil;

public class MemberDAO {

	/**
	 * 회원 존재여부 점검
	 * 
	 * @param id 회원 아이디
	 * @return 회원 존재 여부
	 */
	public boolean hasMember(String id) {
		
		boolean result = false; // 결과값(회원 존재 여부)
		
		Connection con = DbUtil.connect(); // DB 연결
		PreparedStatement pstmt = null; // SQL 처리 객체
		ResultSet rs = null; // SQL 결과셋 객체
		String sql = "SELECT count(*) FROM member_tbl WHERE id=?"; // SQL 구문		
		
		try {
			pstmt = con.prepareStatement(sql); // SQL 처리
			pstmt.setString(1, id); // SQL 인자 입력
			
			rs = pstmt.executeQuery(); // SQL 실행 및 결과셋 반환
			
			if (rs.next()) { // 해당 레코드(튜플, 행, 자료) 있는지 점검
				
				// 자료가 있을 경우 1 이면 기존 회원정보 있음. 0 이면 회원정보 없음
				result = rs.getInt(1) == 1 ? true : false; 
			}
			
		} catch (SQLException e) { // 예외 처리
			System.out.println("hasMember 예외 발생");
		} finally {
			DbUtil.close(con, pstmt, rs); // 자원 반납
		}		
		
		return result; // 결과 반환
	}
	
	/**
	 * 이메일 존재여부 점검
	 * 
	 * @param email 회원 이메일
	 * @return 이메일 존재(중복) 여부
	 */
	public boolean hasEmail(String email) {
		// 결과값 선언
		boolean result = false;
		
		// DB 연결
		Connection con = DbUtil.connect();
		
		// DB(SQL) 구문
		String sql = "SELECT COUNT(*) FROM member_tbl WHERE email=?";
		
		// DB(SQL) 처리 객체
		PreparedStatement pstmt = null;
		
		// DB(SQL) (결과셋)실행 객체
		ResultSet rs = null;
		
		// 예외 처리
		try {
			
			pstmt = con.prepareStatement(sql);
			
			// DB(SQL) 인자 처리
			pstmt.setString(1, email);
			
			// DB(SQL) 처리/실행
			rs = pstmt.executeQuery();
			
			// 결과 도출
			if(rs.next()) { // SQL의 조건에 맞는 레코드검색
				
				result = rs.getInt(1) == 1 ? true : false;
			}
			
		}
		catch (SQLException e) {
			
			System.out.println("hasEmail 예외발생");
		}
		finally {
			
			// 자원 반납
			DbUtil.close(con, pstmt, rs);
		}
			
		// 결과 출력
		return  result;
	}
	
}
