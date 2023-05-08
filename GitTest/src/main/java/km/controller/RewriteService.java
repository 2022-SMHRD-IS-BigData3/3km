package km.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.PostVO;
import km.model.SNSDAO;

public class RewriteService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PostVO vo = new PostVO();
		SNSDAO dao = new SNSDAO();
		
		String title = request.getParameter("title");
		String kategory = request.getParameter("kategory");
		String post_contents = request.getParameter("post_contents");
		String img_root = request.getParameter("img_root");
		int user_id = request.getIntHeader("user_id");
		
		vo.setTitle(title);
		vo.setKategory(kategory);
		vo.setPost_contents(post_contents);
		vo.setImg_root("./img/" + img_root);
		vo.setUser_id(user_id);
		
		int row = dao.rewrite(vo);
		
		if(row>0) {
			request.setAttribute("title",title);
			
			return "rewrite_success.jsp";
		}else {
			return "redirect:/Gomain.do";
		}
		
		
	}

}
