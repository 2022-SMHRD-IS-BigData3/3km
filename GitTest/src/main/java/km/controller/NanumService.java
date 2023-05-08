package km.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.PostVO;
import km.model.SNSDAO;

public class NanumService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SNSDAO dao = new SNSDAO();
		List<PostVO> list = dao.getnanum();
		
		
		if(list!=null) {
			System.out.println(list.size());
			request.setAttribute("nanum", list);
			
			return "nanum.jsp";
		}else {
			return "redirect:/main.do";
		}
	}

}