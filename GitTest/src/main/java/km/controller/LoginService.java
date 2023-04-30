package km.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import km.model.SNSDAO;
import km.model.UserVO;

public class LoginService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		UserVO vo = new UserVO();
		vo.setEmail(email);
		vo.setPw(pw);
		
		
		SNSDAO dao = new SNSDAO();
		UserVO result = dao.login(vo);
		
		
		if(result!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", result);
			
			return "main.jsp";
		}else {
			return "redirect:/login.do";
		}
		
			
		
	}
	

}
