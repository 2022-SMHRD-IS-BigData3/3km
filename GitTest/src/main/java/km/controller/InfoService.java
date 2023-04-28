package km.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.MemberDAO;
import km.model.MemberVO;

public class InfoService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String birthday = request.getParameter("birthday");
		String nickname = request.getParameter("nickname");
		
		MemberVO vo  = new MemberVO();
		
		MemberDAO dao = new MemberDAO();
		vo.setEmail(email);
		vo.setPw(pw);
		vo.setBirthday(birthday);
		vo.setNickname(nickname);
		
		int row = dao.info(vo);
		
		if(row>0) {
			request.setAttribute("email", email);
			return "join_success.jsp";
		}else {
			return "redirect:/GoLogin.do";
		}
		
	}

}
