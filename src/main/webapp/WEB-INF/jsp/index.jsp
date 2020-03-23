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
</head>
<body>
<jsp:include page="component/navbar.jsp"/>
<h2 class="text-center">网上考试系统</h2>
<div class="sidebar text-left">
    <h1>创建测试用数据的sql语句</h1>
    <p>
        insert into userinfo values("Lucy", "123", "STUDENT");<br>
        insert into stuinfo values(171320118, "露西", "CS", "Lucy", "123", "3-1");
    </p>
</div>

</body>
</html>
