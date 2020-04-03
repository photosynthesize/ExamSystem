package dhu.pojo;

public class Teacher {
    //成员变量的注释是对应的数据表字段
    int teaId; //tea_id
    String teaName; //tea_name
    String teaSub; // tea_sub
    String teaUsername; //user_name
    String teaPassword; //user_psd

    public int getTeaId() {
        return teaId;
    }

    public void setTeaId(int teaId) {
        this.teaId = teaId;
    }

    public String getTeaName() {
        return teaName;
    }

    public void setTeaName(String teaName) {
        this.teaName = teaName;
    }

    public String getTeaSub() {
        return teaSub;
    }

    public void setTeaSub(String teaSub) {
        this.teaSub = teaSub;
    }

    public String getTeaUsername() {
        return teaUsername;
    }

    public void setTeaUsername(String teaUsername) {
        this.teaUsername = teaUsername;
    }

    public String getTeaPassword() {
        return teaPassword;
    }

    public void setTeaPassword(String teaPassword) {
        this.teaPassword = teaPassword;
    }
}
