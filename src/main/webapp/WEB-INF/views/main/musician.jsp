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
                    <c:forEach var="singers" items="${singerList}" varStatus="status">
                    <div class="profile-header-img col">
                        <a  href="">
                            <img class="img-circle" src="${pageContext.request.contextPath}../resources/${singerList[status.index].profileImageStoredLocation}"/>
                        </a>
                        <!-- badge -->
                        <div class="rank-label-container">
                            <span class="label label-default rank-label">${singerList[status.index].singerName}</span>
                            <div style="padding-top:5px; font-size:small">${singerList[status.index].genre1} , ${singerList[status.index].genre2}</div>
                        </div>
                    </div>
                    </c:forEach>

                </div>
            </div>
        </div>
        <!-- #/ container -->
    </div>
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