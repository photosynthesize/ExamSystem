package dhu.service;

import dhu.pojo.Student;
import dhu.pojo.User;
import org.springframework.stereotype.Service;

@Service
public interface LoginService {
    public Student studentLogin(User user);
    User login(User user);
}
