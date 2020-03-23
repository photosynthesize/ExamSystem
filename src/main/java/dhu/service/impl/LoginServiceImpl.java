package dhu.service.impl;

import dhu.dao.LoginMapper;
import dhu.pojo.Student;
import dhu.pojo.User;
import dhu.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginMapper loginMapper;

    @Override
    public Student studentLogin(User user) {
        System.out.println("\nservice " + user.getUsername() + "\n");
        Student stu = loginMapper.stuLogin(user);
        return stu;
    }
}
