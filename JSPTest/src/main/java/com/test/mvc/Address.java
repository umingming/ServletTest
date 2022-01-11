package com.test.mvc;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/address.do")
public class Address extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		AddressDAO dao = new AddressDAO();
//		ResultSet rs = dao.list();
//		req.setAttribute("rs", rs);
		
		ArrayList<AddressDTO> list = dao.list();
		
		req.setAttribute("list", list);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/mvc/address.jsp");
		dispatcher.forward(req, resp);
	}

}
