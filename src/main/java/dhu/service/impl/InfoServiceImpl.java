package dhu.service.impl;

import dhu.dao.InfoMapper;
import dhu.pojo.Student;
import dhu.pojo.Teacher;
import dhu.service.InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InfoServiceImpl implements InfoService {

    @Autowired
    private InfoMapper infoMapper;

    @Override
    public void updateTeacherNameAndPassword(Teacher teacher) {
        infoMapper.updateTeacherNameAndPassword(teacher);
    }

    @Override
    public Teacher getTeacherByUserName(String username) {
        return infoMapper.getTeacherByUserName(username);
    }

    @Override
    public Student getStudentByUserName(String username) {
        return infoMapper.getStudentByUserName(username);
    }

    @Override
    public void updateStudentNameAndPassword(Student student) {
        infoMapper.updateStudentNameAndPassword(student);
    }
}
