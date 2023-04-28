package km.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import km.model.PostDAO;
import km.model.PostVO;

public class MainService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PostVO vo = new PostVO();
		PostDAO dao = new PostDAO();
		
		PostVO result = dao.showmain(vo);
		
		if(result!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("showmain", result);
			request.setAttribute("showmain", result);
			
			return "main.jsp";
		}else {
			return "redirect:/main.do";
		}
		
	}

}
