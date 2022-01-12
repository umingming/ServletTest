package com.test.main.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/member/logoutok.do")
public class LogoutOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		session.removeAttribute("id");
		session.removeAttribute("name");
		session.removeAttribute("lv");
		
		session.invalidate();
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/logoutok.jsp");
		dispatcher.forward(req, resp);
	}
}
