package km.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.BoardVO;
import km.model.MemberDAO;


public class WriteService implements Command{

	public String execute (HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
			String savePath = request.getServletContext().getRealPath("/GitTest/src/main/webapp/img");
			
			String title = request.getParameter("title");
			String postType = request.getParameter("postType");
			String POST_CONTENTS = request.getParameter("POST_CONTENTS");
			String imgfile = request.getParameter("imgfile");
			String m_fileFullPath = savePath + "\\" + imgfile;
			BoardVO vo = new BoardVO();
			
			vo.setTitle(title);
			vo.setPOST_CONTENTS(POST_CONTENTS);
			vo.setPostType(postType);
			vo.setImgfile(m_fileFullPath);
			System.out.println(vo.getTitle());
			System.out.println(vo.getPOST_CONTENTS());
			System.out.println(vo.getPostType());
			System.out.println(vo.getImgfile());
			
			
			
			
			MemberDAO dao = new MemberDAO();
			
			int row = dao.write(vo);
			
			if(row>0) {
				request.setAttribute("filePath",m_fileFullPath);
				return "redirect:/GoMain.do";
			}else {
				return "redirect:/GoLogin.do";
			}
		}

	}

