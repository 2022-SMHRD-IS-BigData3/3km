package km.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.PostVO;
import km.model.UserVO;
import km.model.SNSDAO;


public class WriteService implements Command{

	public String execute (HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
			PostVO vo = new PostVO();
			SNSDAO dao = new SNSDAO();
			
			String title = request.getParameter("title");
			String kategory = request.getParameter("kategory");
			String post_contents = request.getParameter("post_contents");
			String img_root = request.getParameter("img_root");
			int user_id = request.getIntHeader("user_id");
			System.out.println(title);
			System.out.println(kategory);
			System.out.println(post_contents);
			System.out.println(img_root);
			System.out.println(user_id);
			
			vo.setTitle(title);
			vo.setKategory(kategory);
			vo.setPost_contents(post_contents);
			vo.setImg_root("./img/" + img_root);
			vo.setUser_id(Math.abs(user_id));
			
			int row = dao.write(vo);
			
			if(row>0) {
				request.setAttribute("user_id",user_id);
				
				return "redirect:/Main.do";
			}else {
				return "redirect:/GoLogin.do";
			}
		}

	}

