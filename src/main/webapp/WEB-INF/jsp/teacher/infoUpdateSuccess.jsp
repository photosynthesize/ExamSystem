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
    <title>个人信息修改成功</title>
    <style>

    </style>
    <script>

    </script>
</head>
<body>
<jsp:include page="../component/navbar.jsp"/>
<h2 class="text-center">个人信息修改成功</h2>
<div class="container">
    <div class="text-center">
        <h3><a href="<%=basePath%>/viewTeacherInfo.do">确定</a></h3>
    </div>
</div>

</body>
</html>