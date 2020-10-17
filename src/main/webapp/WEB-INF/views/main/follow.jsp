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
            <h2 style="color: black">My Follow</h2>
            <div class="row" style="overflow-y: auto;  height: 180px;">
                <div class="profile-header-container">
                    <div class="profile-header-img">
                        <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/1.jpg" />
                        <!-- badge -->
                        <div class="rank-label-container">
                            <span class="label label-default rank-label">그린뮤직</span>
                        </div>
                    </div>
                </div>
                <div class="profile-header-container">
                    <div class="profile-header-img">
                        <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/pic11.jpg" />
                        <!-- badge -->
                        <div class="rank-label-container">
                            <span class="label label-default rank-label">고셜밴드</span>
                        </div>
                    </div>
                </div>
                <div class="profile-header-container">
                    <div class="profile-header-img">
                        <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/2.jpg" />
                        <!-- badge -->
                        <div class="rank-label-container">
                            <span class="label label-default rank-label">태호LEE듬</span>
                        </div>
                    </div>
                </div>
                <div class="profile-header-container">
                    <div class="profile-header-img">
                        <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/3.jpg" />
                        <!-- badge -->
                        <div class="rank-label-container">
                            <span class="label label-default rank-label">이철행어커커</span>
                        </div>
                    </div>
                </div>
                <div class="profile-header-container">
                    <div class="profile-header-img">
                        <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/4.jpg" />
                        <!-- badge -->
                        <div class="rank-label-container">
                            <span class="label label-default rank-label">핫도그귀여워</span>
                        </div>
                    </div>
                </div>
                <div class="profile-header-container">
                    <div class="profile-header-img">
                        <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/5.jpg" />
                        <!-- badge -->
                        <div class="rank-label-container">
                            <span class="label label-default rank-label">심심한쌍둥이</span>
                        </div>
                    </div>
                </div>
                <div class="profile-header-container">
                    <div class="profile-header-img">
                        <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/7.jpg" />
                        <!-- badge -->
                        <div class="rank-label-container">
                            <span class="label label-default rank-label">새콤달콤</span>
                        </div>
                    </div>
                </div>
                <div class="profile-header-container">
                    <div class="profile-header-img">
                        <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/10.jpg" />
                        <!-- badge -->
                        <div class="rank-label-container">
                            <span class="label label-default rank-label">마이쮸</span>
                        </div>
                    </div>
                </div>
            </div>
            <hr  color="gray">
            <h3 style="color: black">Recent Updates</h3>
            <div class="tabs">

                <!-- Tab 1 -->
                <div class="tab tab-1 flex flex-4 active">
                    <!-- Video Thumbnail -->
                    <div class="video col">
                        <div class="video-wrapper">
                            <iframe width="275" height="155" src="https://www.youtube.com/embed/3HKnF5ahGdg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                        <div>내 마음이 움찔했던 순간 - 규현</div>
                        <a href="generic.html" class="link"><span>Click Me</span></a>
                    </div>
                    <!-- Video Thumbnail -->
                    <div class="video col">
                        <div class="video-wrapper">
                            <iframe width="560" height="315" src="https://www.youtube.com/embed/Fc-H3AaQGTs" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                        <div>호랑수월가 - 나래</div>
                        <a href="generic.html" class="link"><span>Click Me</span></a>
                    </div>
                    <!-- Video Thumbnail -->
                    <div class="video col">
                        <div class="video-wrapper">
                            <iframe src="${pageContext.request.contextPath}../resources/video/greeny.mp4" controls></iframe>
                        </div>
                        <div>그린테스터 - 그린이</div>
                        <a href="generic.html" class="link"><span>Click Me</span></a>
                    </div>
                    <!-- Video Thumbnail -->
                    <div class="video col">
                        <div class="image fit">
                            <img src="${pageContext.request.contextPath}../resources/images/pic04.jpg" alt="" />
                            <div class="arrow">
                                <div class="icon fa-play"></div>
                            </div>
                        </div>
                        <a href="generic.html" class="link"><span>Click Me</span></a>
                    </div>
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