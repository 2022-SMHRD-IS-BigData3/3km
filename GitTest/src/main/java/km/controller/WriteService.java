package km.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.BoardVO;


public class WriteService implements Command{

	public String execute (HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
			
			String title = request.getParameter("title");
			String postType = request.getParameter("postType");
			String content = request.getParameter("content");
			
			
			BoardVO vo = new BoardVO();
			
			return "writepostpage.jsp";
		}

	}

