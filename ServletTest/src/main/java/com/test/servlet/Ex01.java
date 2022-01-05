package com.test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01 extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	
		response.setCharacterEncoding("UTF-8");
		PrintWriter writer = response.getWriter();
		Random rnd = new Random();
		int dan = rnd.nextInt(9) + 1;
		
		String temp = "<!DOCTYPE html>\r\n"
				+ "<html lang=\"en\">\r\n"
				+ "<head>\r\n"
				+ "   <meta charset=\"UTF-8\">\r\n"
				+ "   <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n"
				+ "   <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n"
				+ "   <title>Document</title>\r\n"
				+ "   <style>\r\n"
				+ "      .row {\r\n"
				+ "         padding: 5px;\r\n"
				+ "      }\r\n"
				+ "   </style>\r\n"
				+ "</head>\r\n"
				+ "<body>\r\n"
				+ "   <h1>구구단 " + dan + "단</h1>\r\n"
				+ "   <div id=\"dan\">\r\n";
		
		for (int i=1; i<=9; i++) {
			temp +=  String.format("<div class=\"row\">%d x %d = %d</div>\r\n", dan, i, dan * i);
		}
		
		temp += "   </div>\r\n"
				+ "</body>\r\n"
				+ "</html>";
		writer.println(temp);
		writer.close();
	}
		
	
	

}
