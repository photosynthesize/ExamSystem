package dhu.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HomeController {

    @RequestMapping("/home")
    public ModelAndView home(HttpServletRequest req){
        ModelAndView mav = new ModelAndView("jsp/index");
        System.out.println("\nhome\n");
        return mav;
    }

    @RequestMapping("/login")
    public ModelAndView login(HttpServletRequest req){
        ModelAndView mav = new ModelAndView("jsp/identity/login");
        return mav;
    }

    @RequestMapping("/register")
    public ModelAndView register(HttpServletRequest req){
        ModelAndView mav = new ModelAndView("jsp/identity/register");
        return mav;
    }
}
