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
  <title>工作相关Example</title>
  <%-- bootstrap --%>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/shards.min.css">
    <style>
      p{
        text-indent: 2rem ;
        line-height:2;
      }
    </style>
<body>

<div class="jumbotron-fluid " style="margin-bottom:3rem;background-color:#0c673b; border-radius:0;">
  <jsp:include page="/WEB-INF/user/header.jsp"/>
  <img src="image/banner/banner.png" alt="banner" style="width: 100%;height: 100%">
</div>


<div class="container">
  <h2 align="center">招商银行广州分行2022春季校园招聘公告</h2>
  <hr/>

  <p>
    梦想靠岸，YOUNG（羊）城有招！
  </p>
  <p>
    【招商银行广州分行2022春季校园招聘正式启动】
  </p>
  <p>
    【招聘岗位】：定向培训生、市场营销类、信息技术类、运营支持类等（计算机类、信息技术类、数据类、数学类、理工类、金融类、经济类、管理类、法律类、物理类、通讯类等专业优先）
  </p>
  <p>
    【工作地点】：广州（另有清远、湛江岗位可投递）
  </p>
  <p>
    【福利待遇】：五险一金、企业年金、补充医疗保险、弹性福利、餐饮通讯补贴、带薪休假、学习成长补贴等
  </p>
  <p>
    ❗【网申链接】:

    http://career.cloud.cmbchina.com/index.html#jobList?id=96574F8D-C7ED-4772-AE7C-BAC896D190C1&branchcode=100593&jobname=
  </p>
  <p>
    ❗【网申截止时间】

    2022年3月31日
  </p>
  <p>
    一定要记得网申哦，羊小招等你到来！

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
