<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html lang="en">
<head>
    <c:url value="/" var="base"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0 shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>教师队伍</title>
    <%-- bootstrap --%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/shards.min.css">

        <style>
            .card{
                width: 20rem;
                /*display: inline-block;*/
            }
        </style>
<body>

<div class="jumbotron-fluid " style="margin-bottom:3rem;background-color:#0c673b; border-radius:0;">
    <jsp:include page="/WEB-INF/user/header.jsp"/>
    <img src="image/banner/banner.png" alt="banner" style="width: 100%;height: 100%">
</div>


<div class="container">

        <p style="text-indent: 2rem;">
            教师队伍采用专兼结合的用人机制，现有专职教师12人，其中高级职称7人，讲师5人，博士8人，硕士4人，
            其中6人具有国外留学或访学经历，此外,专业还从国内外知名软件企业、
            高校聘请兼职教师承担部分教学工作作为补充。专业教师主持或参加了多项国家、省、部、市及学校的纵向、
            横向科研和教研项目。获得省优秀教育科研成果奖一等奖、省优秀高等教育科学研究成果二等奖、
            省科技进步二等奖、三等奖、省高等学校优秀多媒体教学软件三等奖、市科技进步一等奖、
            省高等教育学会十一五规划课题三等奖等奖项。取得发明专利和实用新型专利10余项，软件著作权10余项。
            专业教师累计主编和参编出版教材13部，发表论文70余篇，其中EI及ISTP检索论文40余篇。
        </p>

    <h3 class="mb-5">教授</h3>
    <div class="row" id="教授">
        <div class="col-md-4">
            <div class="card" style="width: 20rem;">
                <img class="card-img-top" src="image/teachers/邱兆文-教授.jpg" alt="teachers">
                <div class="card-body">
                    <h4 class="card-title">邱兆文</h4>
                    <p class="card-text">邱兆文，博士，教授，硕士生导师。</p>
                    <a href="info/1.jsp" class="btn btn-primary">了解更多</a>
                </div>
            </div>
        </div>


    </div>
    <div class="mt-5" id="副教授">

        <div>
            <h3 class="mb-5">副教授</h3>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="card" >
                    <img class="card-img-top" src="image/teachers/李莉-副教授.png" alt="teachers">
                    <div class="card-body">
                        <h4 class="card-title">李莉</h4>
                        <p class="card-text">李莉，博士，副教授，硕士生导师，东北林业大学青年成栋名师、软件工程专业主任</p>
                        <a href="info/2.jsp" class="btn btn-primary">了解更多</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="image/teachers/张锡英-副教授.jpg" alt="teachers">
                    <div class="card-body">
                        <h4 class="card-title">张锡英</h4>
                        <p class="card-text">张锡英， 副教授，硕士，硕士生导师.获得省级科学技术进步奖1次， 2 门课精品课主讲教师。</p>
                        <a href="info/3.jsp" class="btn btn-primary">了解更多</a>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div class="mt-5" id="讲师">
        <div>
            <h3 class="mb-5">讲师</h3>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="card" >
                    <img class="card-img-top" src="image/teachers/王波-讲师.jpg" alt="teachers">
                    <div class="card-body">
                        <h4 class="card-title">李莉</h4>
                        <p class="card-text">王波，讲师，硕士。主要研究方向：计算数学，软件开发。</p>
                        <a href="info/4.jsp" class="btn btn-primary">了解更多</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" >
                    <img class="card-img-top" src="image/teachers/董素宇-讲师.png" alt="teachers">
                    <div class="card-body">
                        <h4 class="card-title">董素宇</h4>
                        <p class="card-text">董素宇，工学博士，讲师。西安大略大学访问学者。</p>
                        <a href="info/5.jsp" class="btn btn-primary">了解更多</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" >
                    <img class="card-img-top" src="image/teachers/边继龙-讲师.png" alt="teachers">
                    <div class="card-body">
                        <h4 class="card-title">边继龙</h4>
                        <p class="card-text">边继龙，讲师，工学博士，硕士生导师，软件工程专业副主任</p>
                        <a href="info/6.jsp" class="btn btn-primary">了解更多</a>
                    </div>
                </div>
            </div>

        </div>

    </div>
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
