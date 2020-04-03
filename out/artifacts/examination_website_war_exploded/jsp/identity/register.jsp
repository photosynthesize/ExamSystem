<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=basePath%>/lib/bootstrap.min.css"/>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>注册</title>
    <script>
        var regError = ${requestScope.regError};

        $(document).ready(function () {
            if (regError == 1) {
                alert("此用户名已被注册。");
            }
            if (regError == 2) {
                alert("此学号已存在，请换个学号。");
            }
            if (regError == 3) {
                alert("此工号已存在，请换个工号。");
            }
        });

        function selectRole(role) {
            if(role == "teacher"){
                $("#tea").removeClass("hidden");
                $("#stu").addClass("hidden");
            }
            if(role == "student"){
                $("#stu").removeClass("hidden");
                $("#tea").addClass("hidden");
            }
        }
    </script>
<body>
<div class="sidebar text-left">
    <jsp:include page="/jsp/component/navbar.jsp"/>
</div>
<h2 class="text-center">注册</h2>
<hr/>
<center>
    <button class="btn" onclick="selectRole('teacher')">教师注册</button>
    &nbsp;&nbsp;
    <button class="btn" onclick="selectRole('student')">学生注册</button>
</center>
<form id="stu" action="<%=basePath%>/regStudent.do" method="post" class="form-inline text-center hidden">
    <h3>学生注册</h3>
    <label>用户名:</label>
    <input type="text" class="form-control" name="stuUsername"/>
    <br/>
    <br/>
    <label>密码:</label>
    <input type="password" class="form-control" name="stuPassword"/>
    <br/>
    <br/>
    <label>学号：</label>
    <input type="text" class="form-control" name="stuId"/>
    <br>
    <br>
    <label>姓名：</label>
    <input type="text" class="form-control" name="stuName"/>
    <br>
    <br>
    <label>专业：</label>
    <input type="text" class="form-control" name="stuMajor"/>
    <br>
    <br>
    <label>班级：</label>
    <input type="text" class="form-control" name="stuClass"/>
    <br>
    <br>
    <input type="submit" value="注册" class="btn btn-default"/>
</form>

<form id="tea" action="<%=basePath%>/regTeacher.do" method="post" class="form-inline text-center">
    <h3>教师注册</h3>
    <label>用户名:</label>
    <input type="text" class="form-control" name="teaUsername"/>
    <br/>
    <br/>
    <label>密码:</label>
    <input type="password" class="form-control" name="teaPassword"/>
    <br/>
    <br/>
    <label>工号：</label>
    <input type="text" class="form-control" name="teaId"/>
    <br>
    <br>
    <label>姓名：</label>
    <input type="text" class="form-control" name="teaName"/>
    <br>
    <br>
    <label>教授的科目：</label>
    <input type="text" class="form-control" name="teaSub"/>
    <br>
    <br>
    <input type="submit" value="注册" class="btn btn-default"/>
</form>
</body>
</html>
