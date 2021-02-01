<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>MuJaM</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16"
          href="${pageContext.request.contextPath}../resources/images/logo_M.png">
    <!-- Custom Stylesheet -->
    <link href="${pageContext.request.contextPath}../resources/css/style.css" rel="stylesheet">
</head>
<!--*******************
       Preloader start
   ********************-->
<div id="preloader">
    <div class="loader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10"/>
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
                    <li class="breadcrumb-item active"><a href="${pageContext.request.contextPath}/new">NEW Music</a>
                    </li>
                </ol>
            </div>
        </div>
        <!-- row -->

        <div class="container-fluid">
            <div class="row">
                <div class="col-12 m-b-30">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2 id="testh2" class="d-inline">NEW MUSIC</h2>
                        </div>
                        <div class="col-sm-3 input-group">
                            <label class="input-group-prepend">Genre 1:&nbsp;</label>
                            <select class="custom-select" id="sel1">
                                <option>전체</option>
                                <option>Balad</option>
                                <option>Jazz</option>
                                <option>Acoustic</option>
                            </select>
                        </div>
                        <div class="col-sm-3 input-group">
                            <label class="input-group-prepend">Genre 2:&nbsp;</label>
                            <select class="custom-select" id="sel2">
                                <option>전체</option>
                                <option>신나는</option>
                                <option>울적한</option>
                                <option>잔잔한</option>
                            </select>
                        </div>
                    </div>
                    <br><br>

                <c:set var="total" value="0"/>
                <c:forEach var="video" items="${videoList}" varStatus="status">
                    <c:if test="${status.last}">
                        <c:set var="total" value="${(status.index/3)+1}"/>
                        <fmt:parseNumber integerOnly= "true" value= "${total}" />
                        <c:set var="update" value="0"/>
                        <c:forEach var="videoLine" begin="1" end="${total}" step="1">
                            <div class="card-deck">
                                <c:forEach var="new" items="${videoList}" begin="${update}" end="${update+2}" varStatus="status2">
                                    <c:set var="count" value="${status2.count}" />
                                    <div class="card">
                                        <a href="{pageContext.request.contextPath}/videoPlay/${videoList[status2.index].id}" class="link">
                                            <img width="370" height="250" src="${pageContext.request.contextPath}../resources/${videoList[status2.index].thumbnailStoredLocation}" alt="" />
                                        </a>
                                        <div class="card-body">
                                            <h5 class="card-title">${videoList[status2.index].title} - ${singerList[status2.index].singerName}</h5>
                                            <p class="card-text"><small>조회수 ${videoList[status2.index].viewcount}회
                                                · ${videoList[status2.index].createdAt}</small></p>
                                        </div>
                                    </div>
                                </c:forEach>
                                <c:set var="update" value="${update+3}"/>
                            </div>
                        </c:forEach>
                    </c:if>
                </c:forEach>
                    <br>


                </div>
            </div>
        </div>
        <!-- #/ container -->
    </div>
    <br>
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
<script>
    $('#sel1').change(changeSel1 = function () {
        let genre1 = $('#sel1').val();
        console.log(genre1);
        $.ajax({
            type: 'POST',
            url: '${pageContext.request.contextPath}/genre1',
            data: {genre1: genre1},
            success: function (data) {
            },
            error: function (e) {
                error = e;
                console.log(e);
                console.log("실패");
            }
        })
    });
</script>
</body>

</html>