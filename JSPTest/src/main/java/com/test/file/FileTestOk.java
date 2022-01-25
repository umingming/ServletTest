package com.test.file;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/file/filetestok.do")
public class FileTestOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
//		String txt = req.getParameter("txt");
//		System.out.println("txt: " + txt);
		
		try {
			String str;
			MultipartRequest multi = new MultipartRequest(
												req, 
												req.getRealPath("/files"),
												1024 * 1024 * 100,
												"UTF-8",
												new DefaultFileRenamePolicy()
											);
			System.out.println(req.getRealPath("/files"));
			String txt = multi.getParameter("txt");
			System.out.println("txt: " + txt);
			String orgfilename = multi.getOriginalFileName("attach");
			String filename = multi.getFilesystemName("attach");
			System.out.println(orgfilename);
			System.out.println(filename);
			
			req.setAttribute("orgfilename", orgfilename);
			req.setAttribute("filename", filename);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/file/filetestok.jsp");
		dispatcher.forward(req, resp);
	}
}