<%@page pageEncoding="UTF-8" %>
<!--  header -->
<div class="container-fluid text-center " >
    <div class="row" style="width: 100%;">
        <div class="col" style="width: 100%;">
            <a href="https://icec.nefu.edu.cn/index.htm" class="col" style="width: 100%">
                <img src="${pageContext.request.contextPath}/image/logo/logo.png" alt="Logo" id="Schoollogo" style="width: 100%">
            </a>
        </div>
    </div>
</div>
<!--    Header结束-->
<!--  NavBar -->
<div class="container">
    <nav class="navbar navbar-expand-lg navbar-dark  ml-auto " style="margin-bottom:0; padding-bottom: 0;">
        <img src="${pageContext.request.contextPath}/image/logo/ICEClogo.png" alt="" class="mr-2" height="30">
        <a href="https://icec.nefu.edu.cn/" class="navbar-brand">ICEC</a>
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDropdown"
                aria-controls="navbarNavDropdown-1" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse" id="navbarDropdown">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a href="index" class="nav-link active">
                        首页
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="专业" data-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false">专业介绍</a>
                    <div class="dropdown-menu" aria-labelledby="专业">
                        <a class="dropdown-item" href="index#专业介绍">专业简介</a>
                        <a class="dropdown-item" href="index#方向介绍">方向介绍</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="static/Libs.jsp" id="实验室"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">实验室</a>
                    <div class="dropdown-menu" aria-labelledby="实验室">
                        <a class="dropdown-item" href="static/Libs.jsp">923创新实验室</a>
                        <a class="dropdown-item" href="static/Libs2.jsp">925移动开发实验室</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="static/teachers.jsp" id="教师队伍"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">教师队伍</a>
                    <div class="dropdown-menu" aria-labelledby="教师队伍">
                        <a class="dropdown-item" href="static/teachers.jsp#教授">教授</a>
                        <a class="dropdown-item" href="static/teachers.jsp#副教授">副教授</a>
                        <a class="dropdown-item" href="static/teachers.jsp#讲师">讲师</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="static/jggz.jsp" id="就业工作"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">就业指南</a>
                    <div class="dropdown-menu" aria-labelledby="就业工作">
                        <a class="dropdown-item" href="static/jygz.jsp">就业工作</a>
                        <a class="dropdown-item" href="static/jyxx.jsp">就业信息</a>
                    </div>
                </li>

                <li class="nav-item">
                    <a href="newsCenter" class="nav-link">
                        新闻中心
                    </a>
                </li>

                <li class="nav-item">
                    <a href="announcementCenter" class="nav-link">
                        通知公告
                    </a>
                </li>

                <li class="nav-item ">

                </li>

                <li class="nav-item ">
                    <a href="login" class="nav-link">登录</a>
                </li>
            </ul>
        </div>

    </nav>
</div>
<!--  NavBar结束-->