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
    <title>首页</title>
    <style>
        .green{
            background-color: green;
        }
        .yellow{
            background-color: yellow;
        }
        .button-flat{
            border: white;
            height: 60%;
            background-color: lightskyblue;
            font-size: 200%;
        }
    </style>
    <script>
        $(document).ready(function(){
            if(curRole == "TEACHER"){
                $("#teacher_main").removeClass("hidden");
            }
            if(curRole == "STUDENT"){
                $("#student_main").removeClass("hidden");
            }
        });
    </script>
</head>
<body>
<jsp:include page="component/navbar.jsp"/>
<h2 class="text-center">网上考试系统</h2>
<div class="container hidden" id="teacher_main">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-4">
            <div style="height:300px">
                <a href="<%=basePath%>/viewTeacherInfo.do"><button class="btn-block button-flat">查看/修改个人信息</button></a>
            </div>
        </div>
        <div class="col-md-4">

        </div>
        <div class="col-md-2"></div>
    </div>
</div>
<div class="container hidden" id="student_main">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-4">
            <div style="height:300px">
                <a href="<%=basePath%>/viewStudentInfo.do"><button class="btn-block button-flat">查看/修改个人信息</button></a>
            </div>
        </div>
        <div class="col-md-4">

        </div>
        <div class="col-md-2"></div>
    </div>
</div>

</body>
</html>
