package dhu.controller;

import dhu.pojo.Student;
import dhu.pojo.Teacher;
import dhu.pojo.User;
import dhu.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletRequest;

@Controller
public class RegisterController {

    @Autowired
    private RegisterService registerService;

    @RequestMapping("/regStudent")
    public ModelAndView regStudent(Student student){
        ModelAndView mav = new ModelAndView("jsp/index");
        int state = registerService.regStudent(student);
        if(state != 114514){ //1代表用户名已存在，2代表学号已存在，3代表工号已存在，114514代表注册成功
            mav.setViewName("jsp/identity/register");
            mav.addObject("regError", state);
        }
        return mav;
    }

    @RequestMapping("/regTeacher")
    public ModelAndView regTeacher(Teacher teacher){
        ModelAndView mav = new ModelAndView("jsp/index");
        int state = registerService.regTeacher(teacher);
        if(state != 114514){ //1代表用户名已存在，2代表学号已存在，3代表工号已存在，114514代表注册成功
            mav.setViewName("jsp/identity/register");
            mav.addObject("regError", state);
        }
        return mav;
    }
}
