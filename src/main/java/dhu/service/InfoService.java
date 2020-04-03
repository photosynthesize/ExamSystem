package dhu.service;

import dhu.pojo.Student;
import dhu.pojo.Teacher;
import org.springframework.stereotype.Service;

@Service
public interface InfoService {
    void updateTeacherNameAndPassword(Teacher teacher);
    Teacher getTeacherByUserName(String username);

    Student getStudentByUserName(String username);
    void updateStudentNameAndPassword(Student student);
}
