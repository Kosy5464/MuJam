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
<!--*******************
       Preloader start
   ********************-->
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


<!--**********************************
    Main wrapper start
***********************************-->
<div id="main-wrapper">

    <jsp:include page="../main/header.jsp"></jsp:include>
    <!--**********************************
        Content body start
    ***********************************-->
    <div class="content-body">

        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">PUBLIC</a></li>
                    <li class="breadcrumb-item active"><a href="${pageContext.request.contextPath}/hot">HOT Music</a></li>
                </ol>
            </div>
        </div>
        <!-- row -->

        <div class="container-fluid">
            <div class="row">
                <div class="col-12 m-b-30">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2 class="d-inline">HOT MUSIC</h2>
                        </div>
                        <div class="col-sm-3 input-group">
                            <label class="input-group-prepend">Genre 1:&nbsp;</label>
                            <select class="custom-select" id="sel1">
                                <option>전체</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                            </select>
                        </div>
                        <div class="col-sm-3 input-group">
                            <label class="input-group-prepend">Genre 2:&nbsp;</label>
                            <select class="custom-select" id="sel2">
                                <option>전체</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                            </select>
                        </div>
                    </div><br><br>
                    <div class="card-deck">
                        <div class="card">
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[0].id}" class="link">
                                <img width="370" height="250" src="${pageContext.request.contextPath}../resources/${videoListViewCount[0].thumbnailStoredLocation}" alt="" />
                            </a>
                            <div class="card-body">
                                <h5 class="card-title">${videoListViewCount[0].title} - ${singerListViewCount[0].singerName}</h5>
                                <p class="card-text">조회수 ${videoListViewCount[0].viewcount}회</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">${videoListViewCount[0].createdAt}</small>
                            </div>
                        </div>
                        <div class="card">
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[1].id}" class="link">
                                <img width="370" height="250" src="${pageContext.request.contextPath}../resources/${videoListViewCount[1].thumbnailStoredLocation}" alt="" />
                            </a>
                            <div class="card-body">
                                <h5 class="card-title">${videoListViewCount[1].title} - ${singerListViewCount[1].singerName}</h5>
                                <p class="card-text">조회수 ${videoListViewCount[1].viewcount}회</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">${videoListViewCount[1].createdAt}</small>
                            </div>
                        </div>
                        <div class="card">
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[2].id}" class="link">
                                <img width="370" height="250" src="${pageContext.request.contextPath}../resources/${videoListViewCount[2].thumbnailStoredLocation}" alt="" />
                            </a>
                            <div class="card-body">
                                <h5 class="card-title">${videoListViewCount[2].title} - ${singerListViewCount[2].singerName}</h5>
                                <p class="card-text">조회수 ${videoListViewCount[2].viewcount}회</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">${videoListViewCount[2].createdAt}</small>
                            </div>
                        </div>
                    </div><br>
                    <div class="card-deck">
                        <div class="card">
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[3].id}" class="link">
                                <img width="370" height="250" src="${pageContext.request.contextPath}../resources/${videoListViewCount[3].thumbnailStoredLocation}" alt="" />
                            </a>
                            <div class="card-body">
                                <h5 class="card-title">${videoListViewCount[3].title} - ${singerListViewCount[3].singerName}</h5>
                                <p class="card-text">조회수 ${videoListViewCount[3].viewcount}회</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">${videoListViewCount[3].createdAt}</small>
                            </div>
                        </div>
                        <div class="card">
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[4].id}" class="link">
                                <img width="370" height="250" src="${pageContext.request.contextPath}../resources/${videoListViewCount[4].thumbnailStoredLocation}" alt="" />
                            </a>
                            <div class="card-body">
                                <h5 class="card-title">${videoListViewCount[4].title} - ${singerListViewCount[4].singerName}</h5>
                                <p class="card-text">조회수 ${videoListViewCount[4].viewcount}회</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">${videoListViewCount[4].createdAt}</small>
                            </div>
                        </div>
                        <div class="card">
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[5].id}" class="link">
                                <img width="370" height="250" src="${pageContext.request.contextPath}../resources/${videoListViewCount[5].thumbnailStoredLocation}" alt="" />
                            </a>
                            <div class="card-body">
                                <h5 class="card-title">${videoListViewCount[5].title} - ${singerListViewCount[5].singerName}</h5>
                                <p class="card-text">조회수 ${videoListViewCount[5].viewcount}회</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">${videoListViewCount[5].createdAt}</small>
                            </div>
                        </div>
                    </div><br>
                    <div class="card-deck">
                        <div class="card">
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[6].id}" class="link">
                                <img width="370" height="250" src="${pageContext.request.contextPath}../resources/${videoListViewCount[6].thumbnailStoredLocation}" alt="" />
                            </a>
                            <div class="card-body">
                                <h5 class="card-title">${videoListViewCount[6].title} - ${singerListViewCount[6].singerName}</h5>
                                <p class="card-text">조회수 ${videoListViewCount[6].viewcount}회</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">${videoListViewCount[6].createdAt}</small>
                            </div>
                        </div>
                        <div class="card">
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[7].id}" class="link">
                                <img width="370" height="250" src="${pageContext.request.contextPath}../resources/${videoListViewCount[7].thumbnailStoredLocation}" alt="" />
                            </a>
                            <div class="card-body">
                                <h5 class="card-title">${videoListViewCount[7].title} - ${singerListViewCount[7].singerName}</h5>
                                <p class="card-text">조회수 ${videoListViewCount[7].viewcount}회</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">${videoListViewCount[7].createdAt}</small>
                            </div>
                        </div>
                        <div class="card">
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[8].id}" class="link">
                                <img width="370" height="250" src="${pageContext.request.contextPath}../resources/${videoListViewCount[8].thumbnailStoredLocation}" alt="" />
                            </a>
                            <div class="card-body">
                                <h5 class="card-title">${videoListViewCount[8].title} - ${singerListViewCount[8].singerName}</h5>
                                <p class="card-text">조회수 ${videoListViewCount[8].viewcount}회</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">${videoListViewCount[8].createdAt}</small>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- #/ container -->
    </div><br>
    <!--**********************************
        Content body end
    ***********************************-->

    <jsp:include page="../main/footer.jsp"></jsp:include>
</div>
<!--**********************************
    Main wrapper end
***********************************-->
<!--**********************************
       Scripts
   ***********************************-->
<script src="${pageContext.request.contextPath}../resources/plugins/common/common.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/custom.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/settings.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/gleek.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/styleSwitcher.js"></script>

</body>

</html>