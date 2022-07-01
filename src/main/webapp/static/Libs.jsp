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
  <title>实验室</title>
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
    <div class="col-4">
      <div class="list-group" id="list-lib-tab" role="tablist">
        <a class="list-group-item list-group-item-action active" id="list-923-list" data-toggle="list" href="#list-923" role="tab" aria-controls="923">923创新实验室</a>
        <a class="list-group-item list-group-item-action " id="list-925-list" data-toggle="list" href="#list-925" role="tab" aria-controls="925">925移动开发实验室</a>
      </div>
    </div>
    <div class="col-8">
      <div class="tab-content" id="nav-lib-tabContent">
        <div class="tab-pane fade show active" id="list-923" role="tabpanel" aria-labelledby="list-923-list">
          <p>
            <strong style="font-size:5rem"> 923实验室 </strong>
            软件工程专业以IT业需求为导向，培养具有良好综合素质和职业道德，掌握扎实的基础理论和专业知识，具有软件分析、设计、开发、测试与管理能力，具备较强工程实践能力、技术创新能力和团队精神，能快速适应软件工程新技术发展并具有国际视野和国际竞争力的高级软件工程师。专业实施灵活的“211”人才培养模式（其中,2年基础教育,1年面向企业的专业教育,1年企业顶岗实习），在教学上着力推动基于问题、基于项目和基于案例的学习，对于实践性强的课程，采取校企联合“双师制”培养，同时以大学生创新实践活动、科技大赛为补充，突出工程化培养。

            教师队伍采用专兼结合的用人机制，现有专职教师12人，其中高级职称7人，讲师5人，博士8人，硕士4人，其中6人具有国外留学或访学经历，此外,专业还从国内外知名软件企业、高校聘请兼职教师承担部分教学工作作为补充。专业教师主持或参加了多项国家、省、部、市及学校的纵向、横向科研和教研项目。获得省优秀教育科研成果奖一等奖、省优秀高等教育科学研究成果二等奖、省科技进步二等奖、三等奖、省高等学校优秀多媒体教学软件三等奖、市科技进步一等奖、省高等教育学会十一五规划课题三等奖等奖项。取得发明专利和实用新型专利10余项，软件著作权10余项。专业教师累计主编和参编出版教材13部，发表论文70余篇，其中EI及ISTP检索论文40余篇。

            软件工程专业综合实验室，服务于专业的课程实验和创新创业项目，培养学生获得软件项目管理和开发经验，完成系统开发的实习、实训。软件工程专业综合实验室下设软件工程实验室（系统开发实训基地）、嵌入式技术实验室、移动开发实验室和IOS开发实验室。主要完成基于行业标准和技术的Rational统一过程和测试、软件体系结构、面向对象技术与UML、软件需求与分析、软件测试和质量保证、移动开发和IOS开发等课程的实验。同时，依托国家级大型软件企业，建立了校企合作的实习、实训基地。结合企业项目、师资、环境等对学生进行有针对性的工程能力训练，使学生具备综合运用所学知识解决复杂工程问题的能力。

            专业目前已经建立了华为、亿阳安全、东软、华信、北京思特奇、博彦集智、江苏乐建、华宇（大连）、青软、微洋科技等实习基地。
          </p>
        </div>
        <div class="tab-pane fade" id="list-925" role="tabpanel" aria-labelledby="list-925-list">
          <p>
            <strong style="font-size:5rem"> 925实验室 </strong>
            软件工程专业以IT业需求为导向，培养具有良好综合素质和职业道德，掌握扎实的基础理论和专业知识，具有软件分析、设计、开发、测试与管理能力，具备较强工程实践能力、技术创新能力和团队精神，能快速适应软件工程新技术发展并具有国际视野和国际竞争力的高级软件工程师。专业实施灵活的“211”人才培养模式（其中,2年基础教育,1年面向企业的专业教育,1年企业顶岗实习），在教学上着力推动基于问题、基于项目和基于案例的学习，对于实践性强的课程，采取校企联合“双师制”培养，同时以大学生创新实践活动、科技大赛为补充，突出工程化培养。

            教师队伍采用专兼结合的用人机制，现有专职教师12人，其中高级职称7人，讲师5人，博士8人，硕士4人，其中6人具有国外留学或访学经历，此外,专业还从国内外知名软件企业、高校聘请兼职教师承担部分教学工作作为补充。专业教师主持或参加了多项国家、省、部、市及学校的纵向、横向科研和教研项目。获得省优秀教育科研成果奖一等奖、省优秀高等教育科学研究成果二等奖、省科技进步二等奖、三等奖、省高等学校优秀多媒体教学软件三等奖、市科技进步一等奖、省高等教育学会十一五规划课题三等奖等奖项。取得发明专利和实用新型专利10余项，软件著作权10余项。专业教师累计主编和参编出版教材13部，发表论文70余篇，其中EI及ISTP检索论文40余篇。

            软件工程专业综合实验室，服务于专业的课程实验和创新创业项目，培养学生获得软件项目管理和开发经验，完成系统开发的实习、实训。软件工程专业综合实验室下设软件工程实验室（系统开发实训基地）、嵌入式技术实验室、移动开发实验室和IOS开发实验室。主要完成基于行业标准和技术的Rational统一过程和测试、软件体系结构、面向对象技术与UML、软件需求与分析、软件测试和质量保证、移动开发和IOS开发等课程的实验。同时，依托国家级大型软件企业，建立了校企合作的实习、实训基地。结合企业项目、师资、环境等对学生进行有针对性的工程能力训练，使学生具备综合运用所学知识解决复杂工程问题的能力。

            专业目前已经建立了华为、亿阳安全、东软、华信、北京思特奇、博彦集智、江苏乐建、华宇（大连）、青软、微洋科技等实习基地。
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
