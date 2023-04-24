package km.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.MemberDAO;
import km.model.MemberVO;

public class JoinService implements Command {
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String birthday = request.getParameter("birthday");
		String nickname = request.getParameter("nickname");
		String dog_name = request.getParameter("name");
		String dog_age = request.getParameter("age");
		String dog_breed = request.getParameter("breed");
		
		MemberVO vo  = new MemberVO(email, pw, birthday,nickname, dog_name, dog_age, dog_breed);
		
		MemberDAO dao = new MemberDAO();
		
		int row = dao.join(vo);
		
		if(row>0) {
			request.setAttribute("email", email);
			return "join_success.jsp";
		}else {
			return "redirect:/GoLogin.do";
		}
	}
}
