package com.test.mvc;

import java.sql.*;

public class AddressDAO {
	
	private Connection conn;
	private Statement stat;
	private ResultSet rs;
	
	public AddressDAO() {
		try {
			conn = DBUtil.open();
			stat = conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void list() {
		try {
			String sql = "select * from tblAddress order by seq desc";
			rs = stat.executeQuery(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
