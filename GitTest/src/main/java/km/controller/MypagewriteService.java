package km.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.DogVO;
import km.model.UserVO;
import km.model.SNSDAO;

public class MypagewriteService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DogVO vo = new DogVO();
		UserVO vo2 = new UserVO();
		List<DogVO> list = null;
		
		
		String introduce = request.getParameter("introduce");
		for(int i=1; i<=3; i++) { // 3마리의 강아지 정보를 받아옴
			   String dogName = request.getParameter("dogname" + i);
			   String dogAge = request.getParameter("dogage" + i);
			   String dogBreed = request.getParameter("dogbreed" + i);
			   String dogImg = request.getParameter("dogimg" + i);
			   
			   DogVO dog = new DogVO();
			   dog.setDog_name(dogName);
			   dog.setDog_age(dogAge);
			   dog.setDog_breed(dogBreed);
			   dog.setDog_img(dogImg);
			   
			   list.add(dog);
			}
		
		SNSDAO dao = new SNSDAO();
			
		int row = dao.mypagewrite(list);
		dao.introduce(vo2);
			
		if(row>0) {
			request.setAttribute("doginfo",vo);
				return "mypage.jsp";
		}else {
			return "redirect:/Gomain.do";
		}
		
	}

}
