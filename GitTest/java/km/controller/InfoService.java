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
		String dog_name = request.getParameter("dog_name");
		String dog_age = request.getParameter("dog_age");
		String dog_breed = request.getParameter("dog_breed");
		
		MemberVO vo  = new MemberVO(email, pw, birthday,nickname, dog_name, dog_age, dog_breed);
		
		MemberDAO dao = new MemberDAO();
		System.out.println(email);
		System.out.println(pw);
		System.out.println(birthday);
		System.out.println(nickname);
		System.out.println(dog_name);
		System.out.println(dog_age);
		System.out.println(dog_breed);
		
		int row = dao.info(vo);
		
		if(row>0) {
			request.setAttribute("email", email);
			return "join_success.jsp";
		}else {
			return "redirect:/GoLogin.do";
		}
		
	}

}
