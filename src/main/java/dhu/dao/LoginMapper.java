package dhu.dao;

import dhu.pojo.Student;
import dhu.pojo.User;
import org.springframework.stereotype.Service;

@Service
public interface LoginMapper {
    public Student stuLogin(User user);
}
