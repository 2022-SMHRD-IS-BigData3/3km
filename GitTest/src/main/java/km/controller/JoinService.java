package km.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.SNSDAO;
import km.model.UserVO;

public class JoinService implements Command {
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String nickname = request.getParameter("nickname");
		String birthday = request.getParameter("birthday");
		
		UserVO vo  = new UserVO();
		vo.setEmail(email);
		vo.setPw(pw);
		vo.setNickname(nickname);
		vo.setBirthday(birthday);
		
		SNSDAO dao = new SNSDAO();
		
		int row = dao.join(vo);
		
		if(row>0) {
			request.setAttribute("nickname", nickname);
			return "join_success.jsp";
		}else {
			return "redirect:/GoLogin.do";
		}
	}
}
