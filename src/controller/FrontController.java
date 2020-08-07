package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 2473316307558532470L;

	private HandlerMapping mappings = null;

	@Override
	public void init(ServletConfig config) throws ServletException {
		// config : 서블릿 등록(초기화) 시 전달되는 파라미터 정보
		String configName = config.getInitParameter("configName");

		// Mapping을 위한 설정 경로 전달! (bean.properties)
		mappings = new HandlerMapping(configName);
	}
	
	@Override
	public void service(HttpServletRequest request
					  , HttpServletResponse response
					  ) throws ServletException, IOException {
		try {
			// 요청 URI에 대한 가공 -> mappings의 key 값에 맞도록!
			String uri = request.getRequestURI();		// "/jblog/loginForm.syu"
			String context = request.getContextPath();	// "/jblog"
			uri = uri.substring(context.length());		// "/loginForm.syu"
			
			// URI를 전달하여, 실제 Controller 객체를 반환 받겠다.
			Controller controller = mappings.getController(uri);
			
			// 해당 Controller를 통해, 실제 파일(view)의 경로를 받겠다.
			String callPage = controller.handleRequest(request, response);
			//	-> "/WEB-INF/views/login/loginForm.jsp"
			
			// 실제(서버에 존재하는) views(.jsp)의 경로를 알았으니,
			// forward 방식으로 이동시키겠다! (***** action)
			//	-> RequestDispatcher
			RequestDispatcher dispatcher
				= request.getRequestDispatcher(callPage);
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServletException(e);
		}
	}
}












