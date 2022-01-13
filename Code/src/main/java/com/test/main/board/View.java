package com.test.main.board;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/view.do")
public class View extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//할일
		//1. 데이터 가져오기(seq)
		//2. DB 작업 > select > DAO 위임
		//2.5 데이터 조작
		//3. 반환값 전달 + JSP 호출하기
		
		//1.
		String seq = req.getParameter("seq");
		
		//2.
		BoardDAO dao = new BoardDAO();
		
		//2.3 조회수 증가
		dao.addReadCount(seq);
		
		BoardDTO dto = dao.get(seq);
		
		
		//2.5
		//개행 문자 처리
		dto.setContent(dto.getContent().replace("\r\n", "<br>"));
		
		
		//3.
		req.setAttribute("dto", dto);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/view.jsp");
		dispatcher.forward(req, resp);
	}

}



