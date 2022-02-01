package com.test.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

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
//		m2(req, resp);
		m3(req, resp);
		
	}

	private void m3(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		//제목들 반환
		AjaxDAO dao = new AjaxDAO();
		ArrayList<String> list = dao.list();
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		PrintWriter writer = resp.getWriter();
		
		/*
		 * 
		 */
		String temp = "";
		temp += "[";
		for (String subject : list) {
			temp += "{";
			temp += String.format("\"subject\":\"%s\"", subject);
			temp += "},";
		}
		temp += "]";
		writer.print(temp);
		writer.close();
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
