<%--
  Created by IntelliJ IDEA.
  User: Zhang
  Date: 2019/6/1
  Time: 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
    String curName = (String)session.getAttribute("curName");
    if(curName == null){
        curName = "";
    }
%>
<style>
    .container-fluid{
        background-color: aliceblue;
    }

</style>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div>
            <ul class="nav navbar-nav">
                <li id="home" ><a class="navbar-brand" href="<%=basePath%>/home.do"><strong>首页</strong></a></li>
                <li id="login" ><a class="navbar-brand" href="<%=basePath%>/login.do"><strong>登录</strong></a></li>
                <!-- <li id="register" ><a class="navbar-brand" href="<%=basePath%>/register.do"><strong>注册</strong></a></li> -->
                <li id="logout" ><span  class="navbar-brand">当前账号：<label id="name"><%=session.getAttribute("curName")%></label>&nbsp;&nbsp;<a href="<%=basePath%>/logout.do">退出登录</a></span></li>
            </ul>
        </div>
    </div>
</nav>
<script>
    var curName = "<%=curName %>";
    function reject(){
        alert("您尚未登录。");
    }
    $(document).ready(function(){

        if(curName != ""){

            $("#login").addClass("hidden");
            $("#name").html(curName);
        }
        else{
            $("#logout").addClass("hidden");
        }
    });
</script>
