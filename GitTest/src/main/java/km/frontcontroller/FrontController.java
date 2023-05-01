package km.frontcontroller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import km.controller.CafeService;
import km.controller.Command;
import km.controller.Command2;
import km.controller.ShowpostService1;
import km.controller.ShowpostService2;
import km.controller.ShowpostService3;
import km.controller.ShowpostService4;
import km.controller.InfoService;
import km.controller.JoinService;
import km.controller.JoinSuccess;
import km.controller.LoginService;
import km.controller.MainService;
import km.controller.MypageService;
import km.controller.QnaService;
import km.controller.WriteService;
import km.model.ImgVO;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = null;
	

	@Override
	public void init() throws ServletException {

		map = new HashMap<>();
		map.put("Login.do", new LoginService());
		map.put("Join.do", new JoinService());
		map.put("JoinSuccess.do", new JoinSuccess());
		map.put("Info.do", new InfoService());
		map.put("Write.do", new WriteService());
		map.put("showpost1.do", new ShowpostService1());
		map.put("showpost2.do", new ShowpostService2());
		map.put("showpost3.do", new ShowpostService3());
		map.put("showpost4.do", new ShowpostService4());
		map.put("Mypage.do", new MypageService());
		map.put("Qna.do", new QnaService());
		map.put("Main.do", new MainService());
		map.put("Cafe.do", new CafeService());
	}
	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uri = request.getRequestURI();
		String cp = request.getContextPath();
		String finaluri = uri.substring(cp.length() + 1);
		// 한글인코딩
		request.setCharacterEncoding("utf-8");

		String finalpath = null;
		Command com = null;
		System.out.println(uri);
		System.out.println(cp);
		System.out.println(finaluri);
		

		if (finaluri.contains("Go")) {
			finalpath = finaluri.replaceAll("Go", "").toLowerCase().replaceAll(".do", ".jsp");
		} else {
			com = map.get(finaluri);
			if(com == null) {
				finalpath = "login.jsp";
			}else {
				finalpath = com.execute(request, response);
			}
		}

		if(finalpath == null) {
		}else if (finalpath.contains("redirect:/")) {
			response.sendRedirect(finalpath.substring(10));
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/" + finalpath);
			rd.forward(request, response);
		}
		
	}
}