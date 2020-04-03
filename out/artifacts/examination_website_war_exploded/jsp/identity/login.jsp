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
    <title>登录</title>
    <script>
        var loginError = "${requestScope.loginError}";
        if(loginError == 1){
            alert("用户名或密码错误。");
        }
        $(document).ready(function () {
            //$("#login").addClass("hidden");
        });
    </script>
<body>
<div class="sidebar text-left">
    <jsp:include page="/jsp/component/navbar.jsp"/>
</div>
<h2 class="text-center">登录</h2>
<hr/>
<form action="<%=basePath%>/doLogin.do" method="post" class="form-inline text-center">
    <label>用户名:</label>
    <input type="text" class="form-control" name="username"/>
    <br/>
    <br/>
    <label>密码:</label>
    <input type="password" class="form-control" name="password"/>
    <br/>
    <br/>
    <input type="submit" value="登录" class="btn btn-default"/>
</form>
</body>
</html>
