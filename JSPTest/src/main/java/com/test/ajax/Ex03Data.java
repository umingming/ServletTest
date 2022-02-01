package com.test.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ajax/ex03data.do")
public class Ex03Data extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		m1(resp);
		m2(req, resp);
	}

	private void m2(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String seq = req.getParameter("seq");
		AjaxDAO dao = new AjaxDAO();
		String subject = dao.get(seq);
		
		resp.setCharacterEncoding("UTF-8");
		PrintWriter writer = resp.getWriter();
		writer.print(subject);
		writer.close();
		
	}

	private void m1(HttpServletResponse resp) throws IOException {
		int num = 123;
		String name = "홍길동";
		resp.setCharacterEncoding("UTF-8");
		PrintWriter writer = resp.getWriter();
		writer.print(name);
		writer.close();
	}
}
