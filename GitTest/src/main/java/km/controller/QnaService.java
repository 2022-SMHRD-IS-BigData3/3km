package km.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.PostVO;
import km.model.SNSDAO;

public class QnaService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SNSDAO dao = new SNSDAO();
		List<PostVO> list = dao.getqna();
		
		if(list!=null) {
			request.setAttribute("qna", list);
			
			return "qna.jsp";
		}else {
			return "redirect:/main.do";
		}
	}

}
