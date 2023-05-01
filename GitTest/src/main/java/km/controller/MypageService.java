package km.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import km.model.DogVO;
import km.model.SNSDAO;

public class MypageService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		DogVO vo = new DogVO();
		SNSDAO dao = new SNSDAO();
		List<DogVO> list = dao.selectDoginfo();
		
		if(list!=null) {
			request.setAttribute("doginfo", list);
			
			return "mypage.jsp";
		}else {
			return "redirect:/main.do";
		}
		
	}
}
