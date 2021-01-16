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
<!--**********************************
    Main wrapper start
***********************************-->
<div id="main-wrapper">
    <jsp:include page="header.jsp"></jsp:include>

    <!--**********************************
        Content body start
    ***********************************-->
    <div class="content-body">

        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">USER</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">like</a></li>
                </ol>
            </div>
        </div>
        <!-- row -->
        <div class="row page-titles"><h1>LIKE</h1></div><hr class="hr1"/>
        <div class="container-fluid">
            <div class="row">

                <div class="col-12 m-b-30">

                    <div class="card-deck">

                        <c:forEach var="video" items="${likeList}" varStatus="status">
                        <c:set var="count" value="${status.count}" />

                            <a href="${pageContext.request.contextPath}/videoPlay/${video.id}" class="link">
                                <img width="370" height="250" src="${pageContext.request.contextPath}../resources/${video.thumbnailStoredLocation}" alt="" />
                            </a>
                            <div class="card-footer">
                                <small class="text-muted">${video.createdAt}</small>
                            </div>


                        </c:forEach>

                    </div>

                </div>

            </div>
        </div>
        <!-- #/ container -->
    </div>
    <!--**********************************
        Content body end
    ***********************************-->


    <jsp:include page="footer.jsp"></jsp:include>
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