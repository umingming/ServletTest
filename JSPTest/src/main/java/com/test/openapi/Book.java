package com.test.openapi;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/openapi/book.do")
public class Book extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String query = req.getParameter("query");
		
		if(query != null && query.equals("")) {
			BookDAO dao = new BookDAO();
			ArrayList<BookDTO> list = dao.list(query);
			req.setAttribute("list", list);
			req.setAttribute("query", query);
		}
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/openapi/book.jsp");
		dispatcher.forward(req, resp);
	}
}