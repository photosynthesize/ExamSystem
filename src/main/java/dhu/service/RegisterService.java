package dhu.service;

import dhu.pojo.Student;
import dhu.pojo.Teacher;
import dhu.pojo.User;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;


@Service
public interface RegisterService {
    boolean hasDuplication(String username);
    void doRegister(User user);
    int regStudent(Student student);
    int regTeacher(Teacher teacher);

}
