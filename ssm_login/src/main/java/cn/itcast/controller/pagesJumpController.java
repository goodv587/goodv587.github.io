package cn.itcast.controller;


import cn.itcast.pojo.Message;
import cn.itcast.pojo.User;
import cn.itcast.service.ServiceDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/views")
public class pagesJumpController {
    @Autowired
    ServiceDao serviceDao;
    /**
     * ������Ϣ
     * @return
     */
    @RequestMapping("/send")
    public String send(){
        return "send";
    }

    /**
     * ��Ϣ�ظ�
     * @return
     */
    @RequestMapping("/reply")
    public String reply(@RequestParam(value = "sendUser") String sendUser, Model model){
        model.addAttribute("sendUser",sendUser);
        return "reply";
    }

    /**
     * �޸�����
     * @return
     */
    @RequestMapping("/passwordUpdate")
    public String passwordUpdate(){
  
        return "passwordUpdate";
    }

}
