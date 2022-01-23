package com.test.ajax;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ajax/ex02aok.do")
public class Ex02AOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AjaxDAO dao = new AjaxDAO();
		int count = dao.count();
		
		resp.sendRedirect("/jsp/ajax/ex02a.do?count=" + count);
		
	}
}
