package km.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.SNSDAO;
import km.model.PostVO;

public class ShowpostService2 implements Command {


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SNSDAO dao = new SNSDAO();
		List<PostVO> list = dao.showpost2();
		
		if(list!=null) {
			request.setAttribute("show2", list);
			
			return "showpost2.jsp";
		}else {
			return "redirect:/main.do";
		}
		
		
		
		
		
	}

}
