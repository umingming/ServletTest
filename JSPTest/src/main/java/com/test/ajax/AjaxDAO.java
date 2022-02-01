package com.test.ajax;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.jdbc.DBUtil;

public class AjaxDAO {
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public AjaxDAO() {
		try {
			conn = DBUtil.open();
			stat = conn.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int count() {
		try {
			String sql = "select count(*) as cnt from tblBoard";
			rs = stat.executeQuery(sql);
			if (rs.next()) {
				return rs.getInt("cnt");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	}

	public String get(String seq) {
		try {
			String sql = "select subject from tblBoard where seq = " + seq;
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				return rs.getString("subject");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	
		return null;
	}

	public ArrayList<String> list() {
		try {
			String sql = "select subject from tblBoard";
			rs =stat.executeQuery(sql);
			ArrayList<String> list = new ArrayList<String>();
			while(rs.next()) {
				list.add(rs.getString("subject"));
			}
			return list;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

}
