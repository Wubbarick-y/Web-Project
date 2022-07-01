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
  <h2 align="center">边继龙</h2>
  <hr/>
  <img src="image/teachers/边继龙-讲师.png" alt="边继龙" style="display: block; max-width: 20%;max-height: 20%; margin: auto;">

  <p style="text-indent: 2rem ;line-height:2">
    边继龙，讲师，工学博士，硕士生导师，软件工程专业副主任，支部委员，毕业于哈尔滨工程大学计算机应用技术专业，美国印第安纳大学访问学者。主要研究方向：计算机视觉，深度学习，生物信息学等方面的研究。主持黑龙江省自然科学基金面上项目、中央高校基本科研经费项目3项科研项目。累计发表学术论文20余篇，其中被EI/SCI收录10余篇，发明及实用新型专利3项。
    <strong>

    所在学科：软件工程（专业学位） <br/>
      </strong>
    联系邮箱:bianjilong @nefu.edu.cn

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
