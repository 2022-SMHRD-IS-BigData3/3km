package km.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class JoinSuccess implements Command{
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		return "join_success.jsp";
		
	}

}
