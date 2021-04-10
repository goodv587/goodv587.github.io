package cn.itcast.controller;

import cn.itcast.pojo.Mess;
import cn.itcast.pojo.User;
import cn.itcast.service.MessServiceDao;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/mess")
public class MessController {
    @Autowired
    private MessServiceDao messServiceDao;

    /**
         *查询短信息
     * @param request
     * @param model
     * @return
     */
    @RequestMapping("/messSel")
    public String messSel(HttpServletRequest request,Model model){
        HttpSession session = request.getSession();
        //获取session中的用户信息 强转为User类型
        User user = (User)session.getAttribute("user");
        //查询与用户相关的短消息
        List<Mess> mess1 = messServiceDao.messSelect(user.getUname());
        model.addAttribute("mess",mess1);
        return "main";
    }
    /**
     * 短信息详细内容
     * @param mid
     * @param model
     * @return
     */
    @RequestMapping("/detail")
    public String detail(@RequestParam(value="mid") int mid, Model model){
        
        Mess mess = messServiceDao.selectById(mid);
        //将查询到的信息 存入model
        model.addAttribute("m",mess);
        
        try {
			mess.setReadFlag(1);
			messServiceDao.updateRead(mess);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return "detail";
    }

    /**
     * 发送成功需要跳转的页面
     * @param mess
     * @return
     */
    @RequestMapping("/sendSucc")
    public String sendSucc(Mess mess){
        messServiceDao.sendInfo(mess);
        return "success";
    }
    /**
     * 根据id删除信息 
     * @param mid
     * @return
     */
    @RequestMapping("/removeInfo")
    public String removeInfo(@RequestParam(value = "mid") int mid){
        messServiceDao.removeInfo(mid);
        return "success";
    }
}
