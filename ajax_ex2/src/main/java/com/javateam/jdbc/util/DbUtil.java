/**
 * 
 */
package com.javateam.jdbc.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * DB 연결/해제(자원 반납) 유틸리티
 * 
 * @author javateam
 *
 */
public class DbUtil {
	
	/**
	 * DB 연결
	 * 
	 * usage) DbUtil.connect();
	 * 
	 * @return DB 연결 객체
	 */
	public static Connection connect() {
		
		Connection con = null; // DB 연결 객체
		// final String driver = "oracle.jdbc.driver.OracleDriver";
		final String driver = "oracle.jdbc.OracleDriver"; // JDBC 드라이버
		final String url = "jdbc:oracle:thin:@localhost:1521:xe"; // JDBC URL
		final String id = "java"; // 계정 아이디
		final String pw = "java"; // 계정 패쓰워드
		
		try {
				// JDBC driver 검색/로딩(loading)
				Class.forName(driver);
				// DB 연결 객체 반환(DB 연결)
				con = DriverManager.getConnection(url, id, pw);
				
		} catch (ClassNotFoundException e) {
			System.out.println("DbUtil connect CNFE :");
			e.printStackTrace();
		} catch(SQLException e) {
			System.out.println("DbUtil connect SE : ");
			e.printStackTrace();
		}
		
		return con;
	} //
	
	/**
	 * DB 연결 해제(자원 반납)
	 * 
	 * @param con DB 연결 객체
	 * @param pstmt SQL 처리 객체
	 * @param rs SQL 처리 결과셋
	 */
	public static void close(Connection con,
							 PreparedStatement pstmt,
							 ResultSet rs) {
		try {
				if (rs != null) rs.close();
				// if (!rs.isClosed()) rs.close();
				if (pstmt != null) pstmt.close();
				if (con != null) con.close();
				
		} catch(SQLException e) {
			System.out.println("DbUtil close SE : ");
			e.printStackTrace();
		} // 
				
	} //

}
