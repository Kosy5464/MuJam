<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>MuJam</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}../resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}../resources/css/style2.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}../resources/css/main.css" rel="stylesheet"/>

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}../resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Shadows+Into+Light' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>

    <!-- bootstrap template // 특정 기능을 위해 뽑아옴//지금은 없지롱 -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}../resources/js/html5shiv.js"></script>
    <script src="${pageContext.request.contextPath}../resources/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>


<jsp:include page="../main/header.jsp"></jsp:include>
<!-- Header -->
<!-- /////////////////////////////////////////Content -->
<div id="page-content">
    <br>
    <div class="container">
        <div id="main-content" >
            <h2 style="color: black">가수 검색 결과</h2>
            <div class="row" style="overflow-y: auto;  height: 180px;">
                <c:forEach var="singer" items="${singerResultList}" varStatus="status">
                    <div class="profile-header-container">
                        <div class="profile-header-img">
                            <img class="img-circle" src="${pageContext.request.contextPath}../resources/${singer.profileImageStoredLocation}" />
                            <!-- badge -->
                            <div class="rank-label-container">
                                <span class="label label-default rank-label">${singer.singerName}</span>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <hr  color="gray">
            <h2 style="color: black">동영상 검색 결과</h2>
            <div class="tabs">

                <!-- Tab 1 -->
                <div class="tab tab-1 flex flex-4 active">
                    <c:forEach var="video" items="${videoResultList}" varStatus="status">
                        <c:set var="index" value="${status.index}"/>
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/${video.thumbnailStoredLocation}" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <div>${video.title} - ${singerList[status.index].singerName}</div>
                            <div>조회수 ${video.viewcount}회</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${video.id}" class="link"><span>Click Me</span></a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>

    </div>

</div>



<!-- /////////////////////////////////////////Footer -->

<jsp:include page="../main/footer.jsp"></jsp:include>
<!-- Footer -->

<!-- jQuery -->
<script src="${pageContext.request.contextPath}../resources/js/jquery-1.11.3.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}../resources/js/bootstrap.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="${pageContext.request.contextPath}../resources/js/agency.js"></script>

<!-- Plugin JavaScript -->
<script src="${pageContext.request.contextPath}../resources/js/jquery.easing.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/classie.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/cbpAnimatedHeader.js"></script>

<!--다른 템플릿-->
<script src="${pageContext.request.contextPath}../resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/jquery.scrolly.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/skel.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/util.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/main.js"></script>
</body>
</html>