<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <c:url value="/" var="base"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0 shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
<%-- bootstrap --%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/shards.min.css">

    <style>
        /* 保证轮播图的图像能够沾满整个屏幕 */
        .carousel-inner img {
            width: 100%;
            height: 100%;
        }
    </style>

</head>
<body>

<div class="jumbotron-fluid " style="margin-bottom:3rem;background-color:#0c673b; border-radius:0;">
    <jsp:include page="WEB-INF/user/header.jsp"/>
    <!--  轮播图-->
    <div class="container-fulid">
        <div class="row ">
            <div class="col-md-12">
                <div id="demo" class="carousel slide" data-ride="carousel">

                    <!-- 指示符 -->
                    <ul class="carousel-indicators">
                        <li data-target="#demo" data-slide-to="0" class="active"></li>
                        <li data-target="#demo" data-slide-to="1"></li>
                    </ul>

                    <!-- 轮播图片 -->
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <a href="https://icec.nefu.edu.cn/nefu_70.htm">
                                <img src="${pageContext.request.contextPath}/image/Carousel/轮播图3.png" alt="NEFU70周年">
                            </a>
                        </div>
                        <div class="carousel-item">
                            <a href="https://icec.nefu.edu.cn/xkjs2/xkjstz.htm">
                                <img src="${pageContext.request.contextPath}/image/Carousel/轮播图2.jpg" alt="NEFU竞赛获奖">
                            </a>
                        </div>
                    </div>

                    <!-- 左右切换按钮 -->
                    <a class="carousel-control-prev" href="#demo" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#demo" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>

                </div>
            </div>
        </div></div>
    <!--   轮播图结束-->
</div>

<main>
    <div class="container" >
        <div class="row border-bottom: black dashed 1px" >
            <div class="col-md-6" style="border-right: black dashed 1px ;" >
                <img src="${pageContext.request.contextPath}/image/icons/sticky_note_2_black_24dp.svg" alt="icon">
                <h5 style="display: inline-block">新闻中心</h5>
                <%--     这里写新闻       --%>

            </div>
            <div class="col-md-6">
                <img src="${pageContext.request.contextPath}/image/icons/construction_black_24dp.svg" alt="icons">
                <h5 style="display: inline-block">通知公告</h5>
                <%--     这里写公告       --%>

            </div>
        </div>
    </div>
</main>


<footer>
    <%--Footer--%>
    <div class="jumbotron-fluid" >
        <jsp:include page="WEB-INF/user/footer.jsp"/>
    </div>
</footer>





<%--script--%>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/js/shards.min.js"></script>
</body>
</html>