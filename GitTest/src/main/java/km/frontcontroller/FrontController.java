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
import km.controller.JoinSuccess;
import km.controller.LoginService;
import km.controller.MainService;





@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private HashMap<String, Command> map = null;

	@Override
	public void init() throws ServletException {

		map = new HashMap<>();
		map.put("Login.do", new LoginService());
		map.put("Main.do", new MainService());
		map.put("Join.do", new JoinService());
		map.put("JoinSuccess.do", new JoinSuccess());
	}

	
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String uri = request.getRequestURI();
		String cp = request.getContextPath();
		String finaluri = uri.substring(cp.length() + 1);
		// 한글인코딩
		request.setCharacterEncoding("utf-8");

		String finalpath = null;
		Command com = null;

		if (finaluri.contains("Go")) {
			finalpath = finaluri.replaceAll("Go", "").toLowerCase().replaceAll(".do", ".jsp");
		} else {
			com = map.get(finaluri);
			finalpath = com.execute(request, response);
		}

		
		if(finalpath == null) {
		}else if (finalpath.contains("redirect:/")) {
			response.sendRedirect(finalpath.substring(10));
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/" + finalpath);
			rd.forward(request, response);
		}
		
	}
}