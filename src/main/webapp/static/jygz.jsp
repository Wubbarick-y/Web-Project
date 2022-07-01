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
  <title>就业</title>
  <%-- bootstrap --%>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/shards.min.css">

<body>

<div class="jumbotron-fluid " style="margin-bottom:3rem;background-color:#0c673b; border-radius:0;">
  <jsp:include page="/WEB-INF/user/header.jsp"/>
  <img src="image/banner/jiuyebanner.png" alt="banner" style="width: 100%;height: 100%">
</div>

<div class="container">
  <div class="row">
    <div class="col-md-3">

        <ul class="list-group">
          <a href="static/jygz.jsp" class="list-group-item active">就业工作</a>
          <a href="static/jyxx.jsp" class="list-group-item">就业信息</a>
        </ul>


    </div>

    <div class="col-md-9">
      <ul class="list-group list-group-flush">
        <div class="row">
          <h3>就业工作</h3>
        </div>
        <div class="row" style="border-bottom:1px solid darkgray; padding: 1rem;">
          <div class="col-md-10">
            <a href="info/example.jsp" class="list-item" style="font-size:1.3rem;">学党史 办实事 促就业 || 信息学院与安天科技集团开展校企合作</a>
          </div>
          <div class="col-md-2">
            <span>2022-6-11</span>
          </div>
        </div>

        <div class="row" style="border-bottom:1px solid darkgray; padding: 1rem;">
          <div class="col-md-10">
            <a href="info/example.jsp" class="list-item" style="font-size:1.3rem;">信息学院与黑龙江长城计算机系统有限公司开展校企联建活动</a>
          </div>
          <div class="col-md-2">
            <span>2022-5-20</span>
          </div>
        </div>

        <div class="row" style="border-bottom:1px solid darkgray; padding: 1rem;">
          <div class="col-md-10">
            <a href="info/example.jsp" class="list-item" style="font-size:1.3rem;">信息学院软件工程专业党支部举办职业规划指导活动</a>
          </div>
          <div class="col-md-2">
            <span>2022-5-1</span>
          </div>
        </div>




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