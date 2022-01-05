package com.test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Hello extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		PrintWriter writer = response.getWriter();
		
		writer.print("<html>");
		writer.print("<head>");
		writer.print("<meta charset='utf-8'>");
		writer.print("<title>Hello</title>");
		writer.print("</head>");
		writer.print("<body>");
		writer.print("<h1>Hello World!!</h1>");
		writer.print("<p>Servlet Pages</p>");
		writer.print("</body>");
		writer.print("</html>");
		writer.close();
		
	}
	

}
