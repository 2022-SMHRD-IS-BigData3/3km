package km.frontcontroller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.controller.Command;
import km.controller.JoinService;
import km.controller.LoginService;



@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private HashMap<String, Command> map = null;

	// Servlet이 생성되는 순간 실행되는 메소드
	@Override
	public void init() throws ServletException {

		// HashMap 자료구조 생성
		map = new HashMap<>();
		// map안쪽에 데이터 추가하기
		// key --> url mapping값
		// value --> 해당하는 url에 실행되어야 하는 Service 클래스
		map.put("Login.do", new LoginService());
		map.put("Join.do", new JoinService());
		
//		map.put("Ajax.do", new Ajax());
	}

	
	
	// ---> service 메소드 완성!! --> 더 이상 이쪽은 손 안대도 됨!!
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1-1) uri 가져오기
		String uri = request.getRequestURI();
//		System.out.println("요청 uri >> " +uri);
		// 1-2) contextPath 가져오기
		String cp = request.getContextPath();
//		System.out.println("요청 cp >> "+ cp);
		// MessageSystem
		// 1-3) 최종 요청 url 가져오기
		String finaluri = uri.substring(cp.length() + 1);
//		System.out.println("잘라낸 uri >>"+ finaluri);

		// 한글인코딩
		request.setCharacterEncoding("utf-8");

		// 최종적으로 이동해야하는 경로
		String finalpath = null;
		Command com = null;

		if (finaluri.contains("Go")) {
			finalpath = finaluri.replaceAll("Go", "").toLowerCase().replaceAll(".do", ".jsp");
		} else {
			com = map.get(finaluri);
			finalpath = com.execute(request, response);
		}

		
		if(finalpath == null) {
			// ajax 통신으로 데이터 처리할 때 잡아줘야 하는 구간
			// ajax는 비동기! 페이지 이동이 일어나면 안된다!
			// finalpath == null --> 이동할 페이지가 없다
			// --> 어떠한 이동도 하지 않겠다!
		}else if (finalpath.contains("redirect:/")) {
			response.sendRedirect(finalpath.substring(10));
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/" + finalpath);
			rd.forward(request, response);
		}
		
	}

}