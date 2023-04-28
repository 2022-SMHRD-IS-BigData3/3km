package km.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import km.model.MemberDAO;
import km.model.MemberVO;
import km.model.PostDAO;
import km.model.PostVO;

public class QnaService implements Command {


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		PostVO vo = new PostVO();
		PostDAO dao = new PostDAO();
		
		PostVO result = dao.selectQna(vo);
		
		if(result!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("post", result);
			
			request.setAttribute("post", result);
			System.out.println("result "+ result);
			
			return "qna.jsp";
		}else {
			return "redirect:/main.do";
		}
		
		
		
		
		
	}

}
