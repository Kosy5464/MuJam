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
<!--*******************
    Preloader end
********************-->
<body>

<div id="main-wrapper">
    <jsp:include page="../main/header.jsp"></jsp:include>

    <div class="content-body">
        <!-- row -->
        <div class="row page-titles"><h1>playList</h1></div><hr class="hr1"/>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-xl-12">
                    <div class="row">
                        <div class="col-sm-9">
                            <iframe width="100%" height="538" src="${playlist[0].storedLocation}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            <div class="card-body">
                                <div class="row">
                                    <h2 class="col-sm-9">${playlist[0].title}</h2>
                                    <div class="col-sm-3 col">
                                        <h5 class="card-text">장르 1 : ${playlist[0].genre1}</h5>
                                        <h5 class="card-text">장르 2 : ${playlist[0].genre2}</h5>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="card-text col-sm-3"><small class="text-muted">조회수 : ${playlist[0].viewcount} • ${playlist[0].createdAt}</small></div>
                                    <div class="col-sm-2"><button class="btn btn-danger p-0 mr-3">&nbsp;좋아요&nbsp;<i class="fa fa-thumbs-up"></i>&nbsp;&nbsp;${playlist[0].like_count}&nbsp;</button></div>
                                </div><br>
                                <div class="media align-items-center mb-4">
                                    <img class="mr-3" src="${pageContext.request.contextPath}../resources/${singerList[0].profileImageStoredLocation}" width="50" height="50" alt="">
                                    <div class="media-body">
                                        <h4 class="mb-0">${singerList[0].singerName}</h4>
                                    </div>
                                </div>
                                <p class="card-text">${playlist[0].content}
                                </p>
                            </div>
                        </div>
                        <div class="col-sm-3" style="overflow-y: scroll; height:850px;">
                            <table>
                                <tbody>
                                <c:forEach var="video" items="${playlist}" varStatus="status">
                                    <c:set var="count" value="${status.count}" />
                                    <tr style="height: 150px;">
                                        <td><!-- 썸네일 이미지로 연결 -->
                                            <a href="${pageContext.request.contextPath}/videoPlay/${playlist[count-1].id}" class="link">
                                                <img width="100%" src="${pageContext.request.contextPath}../resources/${video.thumbnailStoredLocation}" alt="" />
                                            </a>
                                        </td>
                                        <%--<td> <!-- 영상으로 연결 -->
                                            <iframe width="100%" src="${playlist[count-1]}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                        </td>--%>
                                        <td style="padding-left: 10px"><b>${playlist[count-1].title}</b><br>
                                            <small>${singerList[count-1].singerName}</small><br>
                                            <small>${video.viewcount},${video.createdAt}</small>
                                            <a href="${pageContext.request.contextPath}/videoPlay/${video.id}" class="link"><span>보러가기</span></a>
                                        </td>
                                        <td><i class="fa fa-bars"></i></td>
                                    </tr>
                                </c:forEach>
                                </tbody>

                            </table>
                        </div>
                    </div>
                    <hr class="hr">
                </div>
            </div>
            <!-- #/ container -->
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