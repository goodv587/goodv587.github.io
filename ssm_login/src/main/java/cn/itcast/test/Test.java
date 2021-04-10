package cn.itcast.test;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("/param")
@Controller
public class Test {
    @RequestMapping("/requestParam")
    public void requestParam(@RequestParam(value="mid") int mid1){
//        int mid = Integer.parseInt(mid1);
//        System.out.println(mid);
        System.out.println(mid1);
    }
}
