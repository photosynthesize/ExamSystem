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
    <title>教师个人信息</title>
    <style>

    </style>
    <script>
        function updateInfo() {
            $("#table_teacher").addClass("hidden");
            $("#form_teacher").removeClass("hidden");
            $("#btn_update").addClass("hidden");
            $("#btn_view").removeClass("hidden");
        }
        function viewInfo() {
            $("#form_teacher").addClass("hidden");
            $("#table_teacher").removeClass("hidden");
            $("#btn_view").addClass("hidden");
            $("#btn_update").removeClass("hidden");
        }
    </script>
</head>
<body>
<jsp:include page="../component/navbar.jsp"/>
<h2 class="text-center">教师个人信息</h2>
<div class="container" id="teacher_main">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <table class="table" id="table_teacher">
                <tr>
                    <td>工号</td> <td>${requestScope.teacher.teaId}</td>
                </tr>
                <tr>
                    <td>姓名</td> <td>${requestScope.teacher.teaName}</td>
                </tr>
                <tr>
                    <td>教授的科目</td> <td>${requestScope.teacher.teaSub}</td>
                </tr>
                <tr>
                    <td>用户名</td> <td>${requestScope.teacher.teaUsername}</td>
                </tr>
                <tr>
                    <td>密码</td> <td>${requestScope.teacher.teaPassword}</td>
                </tr>
            </table>
            <!--记得给文本框加上默认值-->
            <form  role="form" action="<%=basePath%>/updateTeacherInfo.do" method="post" id="form_teacher" class="hidden">
                <div class="form-group">
                    姓名：<input class="form-control" type="text" name="teaName" value="${requestScope.teacher.teaName}"><br>
                    密码：<input class="form-control" type="text" name="teaPassword" value="${requestScope.teacher.teaPassword}"><br>
                    <input type="hidden" name="teaUsername" value="<%=curName%>">
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