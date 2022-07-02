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
  <h2 align="center">董素宇</h2>
  <hr/>
  <img src="image/teachers/董素宇-讲师.png" alt="董素宇" style="display: block; max-width: 20%;max-height: 20%; margin: auto;">

  <p style="text-indent: 2rem ;line-height:2">
    董素宇，工学博士，讲师。西安大略大学访问学者。主要研究方向：多模态医学图像分析与人工智能技术。在领域顶级或重要期刊和国际会议（Medical Image Analysis、IEEE Transactions on Medical Imaging，IEEE Transactions on Biomedical Engineering，MICCAI等）上发表论文20余篇，影响因子合计大于20。被引用290余次，H10因子为15。主持中国博士后科学基金会面上项目和中央高校项目共四项。参与国家自然科学基金项和国家重点研发计划子课题。获国家发明专利3项。    <br>
    <strong>
      Email: dongsuyu@nefu.edu.cn
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
