package com.test.mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Hello extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	
		String name = "홍길동";
		int age = 20;
		
		req.setAttribute("name", name);
		req.setAttribute("age", name);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/mvc/hello.jsp");
		
		dispatcher.forward(req, resp);
		
	}
}
