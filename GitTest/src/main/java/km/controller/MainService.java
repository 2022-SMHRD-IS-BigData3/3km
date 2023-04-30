package km.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.SNSDAO;
import km.model.ImgVO;

public class MainService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ImgVO vo = new ImgVO();
		SNSDAO dao = new SNSDAO();

		List<ImgVO> list = dao.getimg();

		if (list != null) {
			request.setAttribute("img", list);
			
			return "main.jsp";
		} else {
			return "redirect:/main.do";
		}

	}
}
