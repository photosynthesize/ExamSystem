package dhu.dao;

import dhu.pojo.Student;
import dhu.pojo.Teacher;
import dhu.pojo.User;
import org.springframework.stereotype.Service;

@Service
public interface RegisterMapper {
    int hasDuplication(String username);
    int stuIdExists(int stuId);
    int teaIdExists(int teaId);
    void doRegister(User user);
    void regStudent(Student student);
    void regTeacher(Teacher teacher);
}
