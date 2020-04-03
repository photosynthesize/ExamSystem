package dhu.service.impl;

import dhu.dao.RegisterMapper;
import dhu.pojo.Student;
import dhu.pojo.Teacher;
import dhu.pojo.User;
import dhu.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class RegisterServiceImpl implements RegisterService {

    @Autowired
    private RegisterMapper registerMapper;

    @Override
    public boolean hasDuplication(String username) {
        if(registerMapper.hasDuplication(username) > 0) return true;
        return false;
    }

    @Override
    public void doRegister(User user) {
        registerMapper.doRegister(user);
    }

    @Override
    public int regStudent(Student student) {
        //1代表用户名已存在
        //2代表学号已存在
        //114514代表成功注册

        if(registerMapper.hasDuplication(student.getStuUsername()) == 1){
            return 1;
        }
        if(registerMapper.stuIdExists(student.getStuId()) == 1){
            return 2;
        }
        registerMapper.regStudent(student);
        User user = new User();
        user.setUsername(student.getStuUsername());
        user.setPassword(student.getStuPassword());
        user.setRole("STUDENT");
        registerMapper.doRegister(user);
        return 114514;
    }

    @Override
    public int regTeacher(Teacher teacher) {
        //1代表用户名已存在
        //3代表工号已存在
        //114514代表成功注册

        if(registerMapper.hasDuplication(teacher.getTeaUsername()) == 1){
            return 1;
        }
        if(registerMapper.teaIdExists(teacher.getTeaId()) == 1){
            return 3;
        }
        registerMapper.regTeacher(teacher);
        User user = new User();
        user.setUsername(teacher.getTeaUsername());
        user.setPassword(teacher.getTeaPassword());
        user.setRole("TEACHER");
        registerMapper.doRegister(user);
        return 114514;
    }
}
