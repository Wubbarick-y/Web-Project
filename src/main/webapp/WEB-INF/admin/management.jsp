<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <c:url value="/" var="base"/>
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value="/image/icons/settings_FILL1_wght600_GRAD0_opsz48.svg"/>"></link>

    <base href="${base}">
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>后台管理系统</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/shards.min.css">
    <style>
<%--    自适应背景栏    --%>
        body{
            background: #fff url("${pageContext.request.contextPath}/image/bgImage/bg-image.jpg") no-repeat fixed center 0;
            width: 100%;
            height: 100%;
            min-width: 1000px;
            background-size: cover;
            -webkit-background-size: cover;
        }
        .list-group-item{
            text-align:center;
        }
        ul li a{
        font-size:larger;

        }
    </style>
</head>
<body>

<div class="card" style="width:30%; position:absolute; top: 50%; left: 50%;transform:translate(-50%,-50%); opacity: 0.7" >
    <ul class="list-group list-group-flush">
        <li class="list-group-item bg-secondary">
            <a class="list-group-item bg-secondary text-white" href="announcementSubmit">添加公告</a>
        </li>
        <li class="list-group-item bg-secondary">
            <a class="list-group-item bg-secondary text-white" href="newsSubmit">添加新闻</a>
        </li>
        <li class="list-group-item bg-secondary">
            <a href="announcementManage" class="list-group-item bg-secondary text-white">查看公告</a>
        </li>
        <li class="list-group-item bg-secondary">
            <a href="newsManage" class="list-group-item bg-secondary text-white">查看新闻</a>
        </li>
        <li class="list-group-item bg-secondary">
            <a href="exit" class="list-group-item bg-secondary text-white" id="exitManager">退出登录</a>
        </li>
    </ul>
</div>









<%--script--%>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/js/shards.min.js"></script>

</body>
</html>