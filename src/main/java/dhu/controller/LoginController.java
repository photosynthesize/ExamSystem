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
@SessionAttributes(value = {"curType", "curName", "curId"})
public class LoginController {

    @Autowired
    private LoginService loginService;

    @RequestMapping("/doStudentLogin")
    public ModelAndView doStudentLogin(User user){
        ModelAndView mav = new ModelAndView("jsp/index");
        Student stu = loginService.studentLogin(user);
        mav.addObject("curType", "STUDENT");
        mav.addObject("curName", stu.getStuName());
        mav.addObject("curId", stu.getStuId());
        return mav;
    }

}
