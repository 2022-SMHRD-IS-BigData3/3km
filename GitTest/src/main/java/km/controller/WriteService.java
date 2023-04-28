package km.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.PostVO;
import km.model.MemberVO;
import km.model.PostDAO;


public class WriteService implements Command{

	public String execute (HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
			String savePath = "/GitTest/src/main/webapp/img";
			
			String title = request.getParameter("title");
			String kategory = request.getParameter("kategory");
			String post_contents = request.getParameter("post_contents");
			String imgfile = request.getParameter("imgfile");
			String img_root = savePath + "/" + imgfile;
			
			PostVO vo = new PostVO();
			vo.setTitle(title);
			vo.setKategory(kategory);
			vo.setPost_contents(post_contents);
			vo.setImg_root(img_root);
			
			
			PostDAO dao = new PostDAO();
			
			int row = dao.write(vo);
			
			if(row>0) {
				request.setAttribute("title",title);
				
				return "redirect:/GoMain.do";
			}else {
				return "redirect:/GoLogin.do";
			}
		}

	}

