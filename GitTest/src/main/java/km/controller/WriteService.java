package km.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.PostVO;
import km.model.ImgVO;
import km.model.SNSDAO;


public class WriteService implements Command{

	public String execute (HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
			PostVO vo = new PostVO();
			ImgVO vo2 = new ImgVO();
			SNSDAO dao = new SNSDAO();
			String savePath = "/GitTest/src/main/webapp/img";
			
			String title = request.getParameter("title");
			String kategory = request.getParameter("kategory");
			String post_contents = request.getParameter("post_contents");
			
			vo.setTitle(title);
			vo.setKategory(kategory);
			vo.setPost_contents(post_contents);
			
			int row = dao.write(vo);
			
			if(row>0) {
				request.setAttribute("title",title);
				
				return "redirect:/GoMain.do";
			}else {
				return "redirect:/GoLogin.do";
			}
		}

	}

