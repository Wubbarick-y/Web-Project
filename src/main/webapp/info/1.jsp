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
<h2 align="center">邱兆文</h2>
  <hr/>
  <img src="image/teachers/邱兆文-教授.jpg" alt="邱兆文教授" style="display: block; max-width: 20%;max-height: 20%; margin: auto;">

  <p style="text-indent: 2rem ;line-height:2">
    邱兆文，博士，教授，硕士生导师。博士毕业于哈工大，美国卡内基梅隆大学访问学者。东北林业大学三维数字化技术研究所所长。黑龙江省医学影像三维可视化与3D打印工程技术中心主任。拓盟科技董事长。CCF杰出会员，CCF理事，CCF计算机应用专委委员，CCF教育专委委员，中国抗癌协会肿瘤人工智能专委委员。主要研究方向为信息检索、人工智能、增强现实。主持参加国家自然科学基金、科技部中央引导地方重大专项基金、国家发改委产业化基金等18项。获国家发明专利4项。在IEEE Transaction on Medical Imaging 等SCI期刊发表论文13篇。主编专著1部。获省科技进步三等奖 2项，2016年获第五届“中国创新创业大赛”互联网及移动互联网行业企业组第三名 。2020年获第四届“中国创翼”创业创新大赛全国三等奖。2018年入选科技部创新人才推进计划，2019年入选万人计划领军人才。2019年获黑龙江省十大杰出创业青年。2020年挑战杯国赛金奖指导教师。哈工大客座教授。
    <br/>
    所在学科：<strong>
    计算机应用技术，计算机技术（专业学位）
    <br/>
    Email:qiuzw@nefu.edu.cn

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
