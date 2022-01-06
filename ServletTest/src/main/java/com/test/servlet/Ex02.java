package com.test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex02 extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setCharacterEncoding("UTF-8");
		PrintWriter writer = response.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<meta charset='UTF-8'>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>데이터 전송하기</h1>");
		writer.println("<form action='/servlet/ex02ok.do' method='POST'>");
		writer.println("데이터 : <input type='text' name='data'></div>");
		writer.println("<div><input type='submit' value='전송하기'></div>");
		writer.println("</form>");
		writer.println("<h2>링크</h2>");
		writer.println("<a href='/servlet/ex02ok.do'>페이지 이동하기</a>");
		writer.println("<h2>버튼</h2>");
		writer.println("<input type='button' value='버튼' onclick='location.href=\"/servlet/ex02ok.do\"'>");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
	}

}
