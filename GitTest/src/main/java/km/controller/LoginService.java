package km.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import km.model.MemberDAO;
import km.model.MemberVO;

@WebServlet("/Login")

    public class LoginService {
    	protected String service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		
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
    		return "redirect:/GoMain.do";
    	}
    }

	
