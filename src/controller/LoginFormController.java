package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginFormController implements Controller {
	@Override
	public String handleRequest(HttpServletRequest request
							  , HttpServletResponse response
							  ) throws Exception {
		// 실제 파일(view)의 경로를 반환!
		//	-> FrontController에서 forward 시킬 것!
		return "/WEB-INF/views/login/loginForm.jsp";
	}
}










