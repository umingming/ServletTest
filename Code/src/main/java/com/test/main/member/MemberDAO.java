package com.test.main.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class MemberDAO {
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public MemberDAO() {
		try {
			conn = DBUtil.open();
			stat = conn.createStatement();
		} catch (Exception e) {
			System.out.println("BoardDAO.BoardDAO()");
		}
	}
}
