package cn.itcast.controller;

import cn.itcast.pojo.User;
import cn.itcast.service.ServiceDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping(value = "/user")
public class UserController {
    @Autowired
    private ServiceDao userService;
	/**
	  *  注册方法
	 * @param user 用户实体类
	 * @return
	 */
    @RequestMapping(value = "/register")
    public String register(User user){
        userService.registerUser(user);
        return "registerSuccess";
    }
    /**
         *  登录方法
     * @param user 
     * @param request
     * @param response
     * @return
     * @throws Exception
     * HttpServletRequest对象代表客户端的请求，当客户端通过HTTP协议访问服务器时，
     * HTTP请求头中的所有信息都封装在这个对象中，通过这个对象提供的方法，可以获得客户端请求的所有信息。
     */
    @RequestMapping(value = "/login")
    public String login(User user, HttpServletRequest request, HttpServletResponse response)throws Exception{
    	
        boolean flag = userService.login(user);
        
        HttpSession session = request.getSession();
        
        session.setAttribute("user",user);
        // sendRedirect重定向       
        if (flag == true) {
            response.sendRedirect(request.getContextPath()+"/mess/messSel");
            return null;
        }
            else {
                return "def";
        }
    }

    /**
         *       修改密码,更新用户信息
     * @param user 
     * @return
     */
    @RequestMapping(value = "/updatePass")
    public String updatePass(User user){
        userService.update(user);
        System.out.println("0");
        return "login";
    }
    /**
         *  退出登录
     * @param request
     * @return
     */

    @RequestMapping(value = "/loginout")
    public String loginout(HttpServletRequest request){
    	//清空session中携带的user对象的值
        request.getSession().removeAttribute("user");
        //removeAttribute清空
        request.getSession().removeAttribute("mess");
        return "login";
    }
    /*帮助
     * */
    @RequestMapping(value="/help")
    public String help() {
    	return "help";
    }
    /*帮助
     * */
    @RequestMapping(value="/help2")
    public String help2() {
    	return "help2";
    }

}
