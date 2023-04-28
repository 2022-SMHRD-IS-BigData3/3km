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
		System.out.println("Qna서비스");
		
		
		String title = request.getParameter("title");
		String post_contents = request.getParameter("post_contents");
		PostVO vo = new PostVO();
		vo.setTitle(title);
		vo.setPost_contents(post_contents);
		
		PostDAO dao = new PostDAO();
		List<PostVO> result = dao.selectQna();
		
		if(result!=null) {
			
			request.setAttribute("post", result);
			System.out.println("result "+ result.get(0));
			
			return "qna.jsp";
		}else {
			System.out.println("오류 발생");
			return "main.jsp";
		}
		
		
		
		
		
	}

}
