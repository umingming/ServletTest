package com.test.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * 
 * @author 이유미
 *
 */
public class DBUtil {
	public static Connection open() {
		Connection conn = null;

		String url = "jdbc:oracle:thin:@goguma_medium?TNS_ADMIN=C://Wallet_goguma";
		String id = "admin";
		String pw = "Goguma970928";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 
	 * @param host 연결할 데이터베이스 주소
	 * @param id 연결할 계정명
	 * @param pw 연결할 계정 암호
	 * @return 연결된 Connection 클래스
	 */
	public static Connection open(String id, String pw) {
		Connection conn = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}

