package pro.tool;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		HttpSession session=request.getSession();
		//System.out.println("===拦截下来！！！！===");
		if(session.getAttribute("adminId")==null){
			request.getRequestDispatcher("/back/loginManager/login.html").forward(request,response);
			return false;
		}
		return true;
	}
}
