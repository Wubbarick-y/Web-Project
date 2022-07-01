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
    <title>东北林业大学信息与计算机工程学院</title>
    <%-- bootstrap --%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/shards.min.css">

    <style>
        /* 保证轮播图的图像能够沾满整个屏幕 */
        .carousel-inner img {
            width: 100%;
            height: 100%;
        }

        .list-group-item:first-child {
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }

        .list-group-item:last-child {
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }

        .list-group-item {
        }
    </style>

</head>
<body>

<div class="jumbotron-fluid " style="margin-bottom:3rem;background-color:#0c673b; border-radius:0;">
    <jsp:include page="/WEB-INF/user/header.jsp"/>
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
        </div>
    </div>
    <!--   轮播图结束-->
</div>

<article>
    <div class="container">
        <div class="row border-bottom: black dashed 1px">
            <div class="col-md-6" style="border-right: black dashed 1px ;">
                <img src="${pageContext.request.contextPath}/image/icons/sticky_note_2_black_24dp.svg" alt="icon">
                <h5 style="display: inline-block">新闻中心</h5>
                <%--     这里写新闻       --%>
                <div class="row">

                    <%--        tag             --%>
                    <div class="col-4">
                        <div class="list-group" id="list-tab2" role="tablist">
                            <c:forEach items="${news}" var="AM" varStatus="s">
                                <c:if test="${s.count <=5}">
                                    <c:if test="${s.first}">
                                        <a class="list-group-item list-group-item-action active"
                                           id="list-${AM.getId()}-list" data-toggle="list" href="#list-${AM.getId()}"
                                           role="tab" aria-controls="${AM.getId()}">${fn:substring(AM.title,0,7)}</a>
                                    </c:if>
                                    <c:if test="${!s.first}">
                                        <a class="list-group-item list-group-item-action" id="list-${AM.getId()}-list"
                                           data-toggle="list" href="#list-${AM.getId()}" role="tab"
                                           aria-controls="${AM.getId()}">${fn:substring(AM.title,0,7)}</a>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                    <%--        tagEnd            --%>
                    <%--label--%>
                    <div class="col-8" style="">
                        <div class="tab-content" id="nav-tabContent2">
                            <c:forEach items="${news}" var="AM" varStatus="s">
                                <c:if test="${s.first}">
                                    <div class="tab-pane fade show active" id="list-${AM.getId()}" role="tabpanel"
                                         aria-labelledby="list-${AM.getId()}-list">
                                            ${fn:substring(AM.detail,0,50)}
                                        <br/>
                                        <span>
                                            发布日期:${AM.getInsertDate()}
                                        </span>
                                    </div>
                                </c:if>
                                <c:if test="${!s.first}">
                                    <div class="tab-pane fade" id="list-${AM.getId()}" role="tabpanel"
                                         aria-labelledby="list-${AM.getId()}-list">
                                            ${fn:substring(AM.detail,0,50)}
                                        <br/>
                                        <span>
                                            发布日期:${AM.getInsertDate()}
                                        </span>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                    <%--labelEnd--%>
                </div>
            </div>

            <div class="col-md-6">
                <img src="${pageContext.request.contextPath}/image/icons/construction_black_24dp.svg" alt="icons">
                <h5 style="display: inline-block">通知公告</h5>
                <%--     这里写公告       --%>
                <div class="row">
                    <%--        tag             --%>
                    <div class="col-4">
                        <div class="list-group" id="list-tab" role="tablist">
                            <c:forEach items="${announcement}" var="AM" varStatus="s">
                                <c:if test="${s.count <=5}">
                                    <c:if test="${s.first}">
                                        <a class="list-group-item list-group-item-action active"
                                           id="list-${AM.getId()}-list" data-toggle="list" href="#list-${AM.getId()}"
                                           role="tab" aria-controls="${AM.getId()}">${fn:substring(AM.title,0,7)}</a>
                                    </c:if>
                                    <c:if test="${!s.first}">
                                        <a class="list-group-item list-group-item-action" id="list-${AM.getId()}-list"
                                           data-toggle="list" href="#list-${AM.getId()}" role="tab"
                                           aria-controls="${AM.getId()}">${fn:substring(AM.title,0,7)}</a>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                    <%--        tagEnd            --%>
                    <%--label--%>
                    <div class="col-8" style="">
                        <div class="tab-content" id="nav-tabContent">
                            <c:forEach items="${announcement}" var="AM" varStatus="s">
                                <c:if test="${s.first}">
                                    <div class="tab-pane fade show active" id="list-${AM.getId()}" role="tabpanel"
                                         aria-labelledby="list-${AM.getId()}-list">
                                            ${fn:substring(AM.detail,0,50)}
                                        <br/>
                                        <span>
                                            发布日期:${AM.getInsertDate()}
                                        </span>
                                    </div>
                                </c:if>
                                <c:if test="${!s.first}">
                                    <div class="tab-pane fade" id="list-${AM.getId()}" role="tabpanel"
                                         aria-labelledby="list-${AM.detail()}-list">
                                            ${fn:substring(AM.detail,0,50)}
                                        <br/>
                                        <span>
                                            发布日期:${AM.getInsertDate()}
                                        </span>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                    <%--labelEnd--%>
                </div>
            </div>


        </div>
    </div>
    </div>
</article>

<div class="jumbotron" style="background-color: white">
    <div class="row">
        <div class="col-md-8 offset-md-2" id="专业介绍">
            <div class="container text-center" style="border-bottom: black 1px solid">
                <img src="${pageContext.request.contextPath}/image/icons/maps_home_work_black_48dp.svg" alt="icon">
                <h3 class="card-title" style="display: inline-block">专业介绍</h3>
            </div>
            <div class="card" style="margin-bottom: 2rem;">
                <p class="card-body" style="text-indent:2rem;line-height:2;">
                    软件工程专业以IT业需求为导向，培养具有良好综合素质和职业道德，掌握扎实的基础理论和专业知识，
                    具有软件分析、设计、开发、测试与管理能力，具备较强工程实践能力、技术创新能力和团队精神，
                    能快速适应软件工程新技术发展并具有国际视野和国际竞争力的高级软件工程师。
                    专业实施灵活的“211”人才培养模式（其中,2年基础教育,1年面向企业的专业教育,1年企业顶岗实习），
                    在教学上着力推动基于问题、基于项目和基于案例的学习，对于实践性强的课程，采取校企联合“双师制”培养，
                    同时以大学生创新实践活动、科技大赛为补充，突出工程化培养。
                </p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8 offset-md-2" id="方向介绍">
            <div class="container text-center" style="border-bottom: black 1px solid">
                <img src="${pageContext.request.contextPath}/image/icons/send_black_48dp.svg" alt="icon">
                <h3 class="card-title" style="display: inline-block">方向介绍</h3>
            </div>
            <div class="card">
                <p class="card-body" style="text-indent:2rem;line-height:2;">
                    软件工程专业综合实验室，服务于专业的课程实验和创新创业项目，培养学生获得软件项目管理和开发经验，
                    完成系统开发的实习、实训。软件工程专业综合实验室下设软件工程实验室（系统开发实训基地）、嵌入式技术实验室、
                    移动开发实验室和IOS开发实验室。主要完成基于行业标准和技术的Rational统一过程和测试、软件体系结构、
                    面向对象技术与UML、软件需求与分析、软件测试和质量保证、移动开发和IOS开发等课程的实验。同时，依托国家级大型软件企业，
                    建立了校企合作的实习、实训基地。结合企业项目、师资、环境等对学生进行有针对性的工程能力训练，
                    使学生具备综合运用所学知识解决复杂工程问题的能力。 专业目前已经建立了华为、亿阳安全、东软、华信、北京思特奇、博彦集智、江苏乐建、华宇（大连）、青软、微洋科技等实习基地。
                </p>
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


<%--script--%>
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