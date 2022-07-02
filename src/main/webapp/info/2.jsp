<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html lang="en">
<head>
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value="/image/icons/group_FILL1_wght600_GRAD0_opsz48.svg"/>"></link>

<c:url value="/" var="base"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0 shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>教师详情</title>
    <%-- bootstrap --%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/shards.min.css">

<body>

<div class="jumbotron-fluid " style="margin-bottom:3rem;background-color:#0c673b; border-radius:0;">
    <jsp:include page="/WEB-INF/user/header.jsp"/>
    <img src="image/banner/banner.png" alt="banner" style="width: 100%;height: 100%">
</div>


<div class="container">
    <h2 align="center">李莉</h2>
    <hr/>
    <img src="image/teachers/李莉-副教授.png" alt="李莉副教授" style="display: block; max-width: 20%;max-height: 20%; margin: auto;">

    <p style="text-indent: 2rem ;line-height:2">
        李莉，博士，副教授，硕士生导师，东北林业大学青年成栋名师、软件工程专业主任、专业党支部书记。美国加州大学（河滨）访问学者。主持和参加国家级、省部级各类科研、教研项目15项，各级各类获奖10余项，作为第一作者发表SCI、EI、中文核心期刊等论文20余篇、主编教材4部。主持国家级一流本科课程、黑龙江省线上线下精品课程、东北林业大学一流本科课程、东北林业大学重点课程。获得第二届全国高校混合式教学设计创新大赛一等奖、华为产学合作专项奖；2次入选黑龙江省在线教学优秀案例；多次获得东北林业大学教学质量优秀奖、教学改革奖、教书育人先进个人称号。
        <br/>
        所在学科：<strong>
        所在学科：计算机科学与技术，软件工程（专业学位）
        <br/>
        邮箱：lli@nefu.edu.cn

    </strong>


    </p>
</div>




<footer>
    <%--Footer--%>
    <div class="jumbotron-fluid">
        <jsp:include page="/WEB-INF/user/footer.jsp"/>
    </div>
</footer>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/js/shards.min.js"></script>
</body>
</html>
