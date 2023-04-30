package km.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.SNSDAO;
import km.model.PostVO;

public class ShowpostService3 implements Command {


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SNSDAO dao = new SNSDAO();
		List<PostVO> list = dao.showpost3();
		
		if(list!=null) {
			request.setAttribute("show3", list);
			
			return "showpost3.jsp";
		}else {
			return "redirect:/main.do";
		}
		
		
		
		
		
	}

}
