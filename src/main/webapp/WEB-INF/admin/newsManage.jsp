<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html lang="en">
<head>
    <c:url value="/" var="base"/>
        <link rel="shortcut icon" type="image/x-icon" href="<c:url value="/image/icons/settings_FILL1_wght600_GRAD0_opsz48.svg"/>"></link>

        <base href="${base}">
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0 shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>公告管理</title>
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
    <div class="row">
        <div class="col-md-12">
            <ul class="list-group list-group-flush">
                <div class="row">
                    <h3>新闻中心</h3>
                </div>

                <c:forEach items="${lists}" var="i" varStatus="s">
                    <div class="row" style="border-bottom:1px solid darkgray; padding: 1rem;">
                        <div class="col-md-8">
                            <a href="checkNews?id=${i.getId()}" class="list-item" style="font-size:1.3rem;">${i.getTitle()}</a>
                        </div>
                        <div class="col-md-2">
                            <span>${i.getInsertDate()}</span>
                        </div>
                        <div class="col-md-2">
                            <a class="btn btn-success" id="newsUpdate" href="updateArticle?id=${i.getId()}&type=1">修改</a>
                            <a class="btn btn-danger" id="newsDelete" href="newsDelete?id=${i.getId()}">删除</a>
                        </div>
                    </div>
                </c:forEach>

            </ul>
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
