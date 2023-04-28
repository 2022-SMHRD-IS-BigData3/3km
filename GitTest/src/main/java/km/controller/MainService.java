package km.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.PostDAO;
import km.model.PostVO;

public class MainService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PostDAO dao = new PostDAO();
		List<PostVO> list = dao.showmain();
		
		
		if(list !=null) {
			request.setAttribute("post_img", list);
			
			return "main.jsp";
		}else {
			return "redirect:/main.do";
		}
		
	}

}
