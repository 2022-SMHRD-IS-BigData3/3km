package km.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.SNSDAO;
import km.model.UserVO;

public class InfoService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String birthday = request.getParameter("birthday");
		String nickname = request.getParameter("nickname");
		
		UserVO vo  = new UserVO();
		
		SNSDAO dao = new SNSDAO();
		vo.setBirthday(birthday);
		vo.setNickname(nickname);
		
		int row = dao.info(vo);
		
		if(row>0) {
			request.setAttribute("nickname", nickname);
			return "join_success.jsp";
		}else {
			return "redirect:/GoLogin.do";
		}
		
	}

}
