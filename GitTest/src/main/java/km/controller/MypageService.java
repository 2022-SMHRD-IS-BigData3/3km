package km.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import km.model.DogVO;
import km.model.SNSDAO;

public class MypageService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String dog_name = (String) session.getAttribute("dog_name");
		String dog_age = (String) session.getAttribute("dog_age");
		String dog_breed = (String) session.getAttribute("dog_breed");
		
		System.out.println(1);
		DogVO vo = new DogVO();
		vo.setDog_name(dog_name);
		vo.setDog_age(dog_age);
		vo.setDog_breed(dog_breed);
		
		SNSDAO dao = new SNSDAO();
		DogVO result = dao.selectDoginfo(vo);
		
		if(result!=null) {
			
			request.setAttribute("doginfo", result);
			
			return "mypage1.jsp";
		}else {
			return "redirect:/main.do";
		}
		
	}
}
