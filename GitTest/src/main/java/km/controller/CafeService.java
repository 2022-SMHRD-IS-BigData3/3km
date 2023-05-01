package km.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import km.model.ImgVO;
import km.model.SNSDAO;

public class CafeService implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ImgVO vo = new ImgVO();
		SNSDAO dao = new SNSDAO();
		
		List<ImgVO> list = dao.cafe();
		
		if (list != null) {
			
			
		}
		
		
		
		
		return null;
	}

}
