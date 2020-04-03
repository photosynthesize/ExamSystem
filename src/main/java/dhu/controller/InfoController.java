package dhu.controller;

import dhu.pojo.Student;
import dhu.pojo.Teacher;
import dhu.service.InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class InfoController {

    @Autowired
    private InfoService infoService;

    @RequestMapping("/viewTeacherInfo")
    public ModelAndView viewTeacherInfo(HttpServletRequest req){
        ModelAndView mav = new ModelAndView("/jsp/teacher/infoManagement");
        String username = (String)req.getSession().getAttribute("curName");
        Teacher teacher = infoService.getTeacherByUserName(username);
        mav.addObject("teacher", teacher);
        return mav;
    }

    @RequestMapping("updateTeacherInfo")
    public ModelAndView updateTeacherInfo(Teacher teacher){
        ModelAndView mav = new ModelAndView("/jsp/teacher/infoUpdateSuccess");
        infoService.updateTeacherNameAndPassword(teacher);
        return mav;
    }

    @RequestMapping("/viewStudentInfo")
    public ModelAndView viewStudentInfo(HttpServletRequest req){
        ModelAndView mav = new ModelAndView("/jsp/student/infoManagement");
        String username = (String)req.getSession().getAttribute("curName");
        Student student = infoService.getStudentByUserName(username);
        mav.addObject("student", student);
        return mav;
    }

    @RequestMapping("updateStudentInfo")
    public ModelAndView updateStudentInfo(Student student){
        ModelAndView mav = new ModelAndView("/jsp/student/infoUpdateSuccess");
        infoService.updateStudentNameAndPassword(student);
        return mav;
    }
}
