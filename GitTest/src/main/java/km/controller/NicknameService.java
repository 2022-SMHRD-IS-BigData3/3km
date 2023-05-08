package km.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.PostVO;
import km.model.SNSDAO;
import km.model.UserVO;

public class NicknameService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SNSDAO dao = new SNSDAO();
		List<UserVO> list = dao.nickname();
		
		if (list != null) {
			request.setAttribute("nick", list);
			
			return "nanum.jsp";
		} else {
			return "redirect:/main.do";
		}
		
	}

}
