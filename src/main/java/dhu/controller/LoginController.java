package dhu.controller;

import dhu.pojo.Student;
import dhu.pojo.User;
import dhu.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes(value = {"curRole", "curName", "curId"})
public class LoginController {


    @Autowired
    private LoginService loginService;

    @RequestMapping("/doLogin")
    public ModelAndView doLogin(User user){
        ModelAndView mav = new ModelAndView("jsp/index");
        User user1 = loginService.login(user);
        if(user1 == null){
            mav.setViewName("jsp/identity/login");
            mav.addObject("loginError", 1);
            return mav;
        }
        System.out.printf("username:%s\npassword:%s\nrole:%s\n", user1.getUsername(), user1.getPassword(), user1.getRole());
        mav.addObject("curRole", user1.getRole());
        mav.addObject("curName", user1.getUsername());
        return mav;
    }

}
