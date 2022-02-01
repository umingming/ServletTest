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
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String name = req.getParameter("name");
		System.out.println(id+pw+name);
		MemberDTO dto = new MemberDTO();
		dto.setId(id);;
		dto.setPw(pw);;
		dto.setName(name);
		AjaxDAO dao = new AjaxDAO();
		int result = dao.add(dto);
		
		resp.setContentType("application/json");
		PrintWriter writer = resp.getWriter();
		
		writer.printf("{\"result\" : %d}", result);
		writer.close();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		m1(resp);
//		m2(req, resp);
//		m3(req, resp);
//		m4(req, resp);
		m5(req, resp);
		
	}

	private void m5(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		AjaxDAO dao = new AjaxDAO();
		ArrayList<MemberDTO> list = dao.getMemberList();
		
		System.out.println(list.size());
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		PrintWriter writer = resp.getWriter();
		
		String temp = "";
		temp += "[";
		for(MemberDTO dto : list) {
			temp += "{";
			temp += String.format("\"id\":\"%s\",", dto.getId());
			temp += String.format("\"pw\":\"%s\",", dto.getPw());
			temp += String.format("\"name\":\"%s\",", dto.getName());
			temp += String.format("\"lv\":\"%s\"", dto.getLv());
			temp += "},";
			
		}
		temp = temp.substring(0, temp.length()-1);
		temp += "]";
		writer.print(temp);
		writer.close();
		
	}

	private void m4(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String id = req.getParameter("id");
		System.out.println(id);
		AjaxDAO dao = new AjaxDAO();
		MemberDTO dto = dao.getMember(id);
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		PrintWriter writer = resp.getWriter();
		
		String temp = "";
		temp += "{";
		temp += String.format("\"id\":\"%s\",", dto.getId());
		temp += String.format("\"pw\":\"%s\",", dto.getPw());
		temp += String.format("\"name\":\"%s\",", dto.getName());
		temp += String.format("\"lv\":\"%s\"", dto.getLv());
		temp += "}";
		writer.print(temp);
		System.out.println(temp);
		writer.close();
		
		
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
		temp = temp.substring(0, temp.length()-1);
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
