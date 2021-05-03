package cn.itcast.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * À¹½ØÆ÷
 * @author 76774
 *
 */
public class MyInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        HttpSession session = request.getSession();
        if(session.getAttribute("user") == null){
            try {
            request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request,response);
            return false;
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        return true;
    }
}
