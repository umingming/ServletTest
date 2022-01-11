package com.test.mvc;

import java.sql.*;
import java.util.ArrayList;

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
	
	public ArrayList<AddressDTO> list() {
		try {
			String sql = "select * from tblAddress order by seq desc";
			rs = stat.executeQuery(sql);
			
			ArrayList<AddressDTO> list = new ArrayList<AddressDTO>();
			
			while (rs.next()) {
				AddressDTO dto = new AddressDTO();
				dto.setSeq(rs.getString("seq"));
				dto.setName(rs.getString("name"));
				dto.setAge(rs.getInt("age"));
				dto.setTel(rs.getString("tel"));
				dto.setAddress(rs.getString("address"));
				
				list.add(dto);
			}
			
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
