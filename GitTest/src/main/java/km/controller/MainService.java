package km.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.SNSDAO;
import km.model.ImgVO;
import km.model.PostVO;

public class MainService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SNSDAO dao = new SNSDAO();
		List<PostVO> list = dao.getpost();

		if (list != null) {
			System.out.println(list);
			request.setAttribute("post", list);
			
			return "main.jsp";
		} else {
			return "redirect:/main.do";
		}

	}
}
