<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>MuJaM</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}../resources/images/logo_M.png">
    <!-- Custom Stylesheet -->
    <link href="${pageContext.request.contextPath}../resources/css/style.css" rel="stylesheet">
</head>
<div id="preloader">
    <div class="loader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
        </svg>
    </div>
</div>
<body>


<div id="main-wrapper">

    <jsp:include page="../main/header.jsp"></jsp:include>
    <div class="content-body">
        <!-- row -->
        <div class="row page-titles mx-0">
            <h1>musician</h1>
            <form class="col filter-select">
                <div class="form-group breadcrumb">
                    <label class="radio-inline mr-3">
                        <input type="radio" name="optradio" checked>인기순</label>
                    <label class="radio-inline mr-3 ">
                        <input type="radio" name="optradio">최신순</label>
                </div>
            </form>
        </div>
        <hr class="hr1"/>
        <div class="container-fluid">
            <div class="profile-header-container flex flex-4">
                <div  class="row">
                    <c:set var="singerSize" value="${singerSize}" />
                    <c:if test="${singerSize eq 0}">
                        <!-- 가수결과 없음 -->
                        <div>
                            가수 결과 없음!
                        </div>
                    </c:if>
                    <c:forEach var="singers" items="${singerResultList}" varStatus="status">
                        <div class="profile-header-img col">
                            <a  href="">
                                <img class="img-circle" src="${pageContext.request.contextPath}../resources/${singerResultList[status.index].profileImageStoredLocation}"/>
                            </a>
                            <!-- badge -->
                            <div class="rank-label-container">
                                <span class="label label-default rank-label">${singerResultList[status.index].singerName}</span>
                                <div style="padding-top:5px; font-size:small">${singerResultList[status.index].genre1} , ${singerResultList[status.index].genre2}</div>
                            </div>
                        </div>
                    </c:forEach>

                </div>
                <div class="container-fluid">
                    <div class="profile-header-container flex flex-4">
                        <div  class="row">
                            <c:forEach var="video" items="${singerVideoResultList}" varStatus="status">
                                <c:set var="index" value="${status.index}"/>
                                <div class="video col">
                                    <div class="image fit">
                                        <img src="${pageContext.request.contextPath}../resources/${video.thumbnailStoredLocation}" alt="" height="200" width="200" />

                                    </div>
                                    <div>${video.title} - ${singerList2[status.index].singerName}</div>
                                    <div>조회수 ${video.viewcount}회</div>
                                    <a href="${pageContext.request.contextPath}/videoPlay/${video.id}" class="link"><span>Click Me</span></a>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row page-titles mx-0">
            <h1>video</h1>
            <form class="col filter-select">
                <div class="form-group breadcrumb">
                    <label class="radio-inline mr-3">
                        <input type="radio" name="optradio" checked>인기순</label>
                    <label class="radio-inline mr-3 ">
                        <input type="radio" name="optradio">최신순</label>
                </div>
            </form>
        </div>
        <hr class="hr1"/>
        <div class="container-fluid">
        <div class="container-fluid">
            <div class="profile-header-container flex flex-4">
                <div  class="row">
                    <c:set var="videoSize" value="${videoSize}" />
                    <c:if test="${videoSize eq 0}">
                        <!-- 비디오 결과 없음 -->
                        <div>
                            비디오 결과 없음!
                        </div>
                    </c:if>
            <div class="row">
                <div class="col-12 m-b-30">
                    <div class="card-deck">
                    <c:forEach var="video" items="${videoResultList}" varStatus="status">
                        <c:set var="index" value="${status.index}"/>
                        <div class="card">
                            <a href="${pageContext.request.contextPath}/videoPlay/${video.id}" class="link">
                                <img width="370" height="250"
                                     src="${pageContext.request.contextPath}../resources/${video.thumbnailStoredLocation}"
                                     alt=""/>
                            </a>
                            <div class="card-body">
                                <h5 class="card-title">${video.title} - ${singerList[status.index].singerName}</h5>
                                <p class="card-text"><small>조회수 ${video.viewcount}회
                                    · ${video.createdAt}</small></p>
                            </div>
                        </div>
                    </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="../main/footer.jsp"></jsp:include>
</div>
<script src="${pageContext.request.contextPath}../resources/plugins/common/common.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/custom.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/settings.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/gleek.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/styleSwitcher.js"></script>

</body>

</html>