package km.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.SNSDAO;
import km.model.CommentVO;
import km.model.PostVO;

public class CommentService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String comment_content = request.getParameter("comment_content");
	
	System.out.println("1"+comment_content);
		
		CommentVO vo = new CommentVO();
		System.out.println("댓글 내용 : "+comment_content);
		vo.setComment_content(comment_content);

		
		SNSDAO dao = new SNSDAO();
		System.out.println("vo:"+vo);
		System.out.println("vo.content:"+vo.getComment_content());
		
		int row = dao.commentwrite(vo);
		System.out.println("row확인"+row);
		if(row>0) {
			request.setAttribute("commentwrite", comment_content);
			
			return "redirect:/GoShowpost1.do";
		}else {
			return "redirect:/GoLogin.do";
		}
		
		
		
		
		
		
		
		
	}

}
