<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
    String curName = (String) session.getAttribute("curName");
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=basePath%>/lib/bootstrap.min.css"/>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>学生个人信息</title>
    <style>

    </style>
    <script>
        function updateInfo() {
            $("#table_student").addClass("hidden");
            $("#form_student").removeClass("hidden");
            $("#btn_update").addClass("hidden");
            $("#btn_view").removeClass("hidden");
        }
        function viewInfo() {
            $("#form_student").addClass("hidden");
            $("#table_student").removeClass("hidden");
            $("#btn_view").addClass("hidden");
            $("#btn_update").removeClass("hidden");
        }
    </script>
</head>
<body>
<jsp:include page="../component/navbar.jsp"/>
<h2 class="text-center">学生个人信息</h2>
<div class="container" id="teacher_main">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <table class="table" id="table_student">
                <tr>
                    <td>学号</td> <td>${requestScope.student.stuId}</td>
                </tr>
                <tr>
                    <td>姓名</td> <td>${requestScope.student.stuName}</td>
                </tr>
                <tr>
                    <td>专业</td> <td>${requestScope.student.stuMajor}</td>
                </tr>
                <tr>
                    <td>班级</td> <td>${requestScope.student.stuClass}</td>
                </tr>
                <tr>
                    <td>用户名</td> <td>${requestScope.student.stuUsername}</td>
                </tr>
                <tr>
                    <td>密码</td> <td>${requestScope.student.stuPassword}</td>
                </tr>
            </table>
            <!--记得给文本框加上默认值-->
            <form  role="form" action="<%=basePath%>/updateStudentInfo.do" method="post" id="form_student" class="hidden">
                <div class="form-group">
                    姓名：<input class="form-control" type="text" name="stuName" value="${requestScope.student.stuName}"><br>
                    密码：<input class="form-control" type="text" name="stuPassword" value="${requestScope.student.stuPassword}"><br>
                    <input type="hidden" name="stuUsername" value="<%=curName%>">
                    <input type="submit" value="修改">
                </div>
            </form>
            <button id="btn_update" class="btn" onclick="updateInfo()">修改姓名和密码</button>
            <button id="btn_view" class="btn hidden" onclick="viewInfo()">查看个人信息</button>
        </div>
        <div class="col-md-3"></div>
    </div>
</div>

</body>
</html>