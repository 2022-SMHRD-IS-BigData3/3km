package km.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import km.model.MemberDAO;
import km.model.MemberVO;

public class LoginService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		MemberVO vo = new MemberVO();
		vo.setEmail(email);
		vo.setPw(pw);
		
		MemberDAO dao = new MemberDAO();
		MemberVO result = dao.login(vo);
		
		if(result!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", result);
		}
		return "redirect:/Gologin.do";
	}
	

}
