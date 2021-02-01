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

    <%--<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}../resources/js/html5shiv.js"></script>
    <script src="${pageContext.request.contextPath}../resources/js/respond.min.js"></script>
    <![endif]-->
    <script>
        const videos = document.querySelectorAll('.video-preview')
        for (let i = 0; i < videos.length; i++) {
            videos[i].addEventListener('mouseover', function() {
                console.log('play')
                videos[i].play()
            })
            videos[i].addEventListener('mouseout', function() {
                console.log('pause')
                videos[i].pause()
                videos[i].currentTime = 0;
            })
        }
    </script>--%>

</head>

<div id="preloader">
    <div class="loader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
        </svg>
    </div>
</div>

<body>

<!-- /////////////////////////////////////////Content -->
<div id="main-wrapper">
    <jsp:include page="../main/header.jsp"></jsp:include>

    <!--**********************************
        Content body start
    ***********************************-->
    <div class="content-body">

        <div class="row page-titles">
            <div class="container-fluid">
                <div class="bootstrap-carousel">
                    <div data-ride="carousel" class="carousel slide" id="carouselExampleCaptions">
                        <ol class="carousel-indicators">
                            <li class="" data-slide-to="0" data-target="#carouselExampleCaptions"></li>
                            <li data-slide-to="1" data-target="#carouselExampleCaptions" class=""></li>
                            <li data-slide-to="2" data-target="#carouselExampleCaptions" class="active"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="video-wrapper">
                                    <iframe src="https://www.youtube.com/embed/4tJ7cVpONo4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                                <div class="carousel-caption d-none d-md-block">
                                    <h5 style="color: white">비와이 킬링벌스</h5>
                                    <p>안녕하세요, 정규 2집 뭐시뭐시로 돌아온 비와입니다.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="video-wrapper">
                                    <iframe src="https://www.youtube.com/embed/ed0CcFcBBMI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                                <div class="carousel-caption d-none d-md-block">
                                    <h5 style="color: white">민수는 혼란스럽다</h5>
                                    <p>요즘 핫한 가수 민수님이 신곡~ 들으러 가보시죠잉~</p>
                                </div>
                            </div>

                        </div><a data-slide="prev" href="#carouselExampleCaptions" class="carousel-control-prev"><span class="carousel-control-prev-icon"></span> <span class="sr-only">Previous</span> </a><a data-slide="next" href="#carouselExampleCaptions"
                                                                                                                                                                                                               class="carousel-control-next"><span class="carousel-control-next-icon"></span> <span class="sr-only">Next</span></a>
                    </div>
                </div>
            </div></div>
        <hr class="hr">
        <div class="card-body">
            <div class="row">
                <div><h2>HOT MUSIC</h2></div>&nbsp;&nbsp;&nbsp;
                <div><button class="btn btn-outline-light btn-sm" style="position:relative; top:5px;" onclick="location.href='${pageContext.request.contextPath}/hot'">더보기</button></div>
            </div>
            <br>
            <div class="container-fluid">
                <div class="card-deck">
                    <div class="card">
                        <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[0].id}" class="link">
                            <img width="370" height="250" src="${pageContext.request.contextPath}../resources/${videoListViewCount[0].thumbnailStoredLocation}" alt="" />
                        </a>
                        <div class="card-body">
                            <h5 class="card-title">${videoListViewCount[0].title} - ${singerList[0].singerName}</h5>
                            <p class="card-text"><small>조회수 ${videoListViewCount[0].viewcount}회 · ${videoListViewCount[0].createdAt}</small></p>
                        </div>
                    </div>
                    <div class="card">
                        <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[1].id}" class="link">
                            <img width="370" height="250" src="${pageContext.request.contextPath}../resources/${videoListViewCount[1].thumbnailStoredLocation}" alt="" />
                        </a>
                        <div class="card-body">
                            <h5 class="card-title">${videoListViewCount[1].title} - ${singerList[1].singerName}</h5>
                            <p class="card-text"><small>조회수 ${videoListViewCount[1].viewcount}회 · ${videoListViewCount[1].createdAt}</small></p>
                        </div>
                    </div>
                    <div class="card">
                        <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[2].id}" class="link">
                            <img width="370" height="250" src="${pageContext.request.contextPath}../resources/${videoListViewCount[2].thumbnailStoredLocation}" alt="" />
                        </a>
                        <div class="card-body">
                            <h5 class="card-title">${videoListViewCount[2].title} - ${singerListViewCount[2].singerName}</h5>
                            <p class="card-text"><small>조회수 ${videoListViewCount[2].viewcount}회 · ${videoListViewCount[2].createdAt}</small></p>
                        </div>
                    </div>
                </div>

            </div>

            <!-- row -->
        </div>
        <div class="card-body">
            <div class="row">
                <div><h2>NEW MUSIC</h2></div>&nbsp;&nbsp;&nbsp;
                <div><button class="btn btn-outline-light btn-sm" style="position:relative; top:5px;" onclick="location.href='${pageContext.request.contextPath}/new'">더보기</button></div>
            </div>
            <br>
            <div class="container-fluid">
                <div class="card-deck">
                    <div class="card">
                        <a href="${pageContext.request.contextPath}/videoPlay/${videoList[0].id}" class="link">
                            <img width="370" height="250" src="${pageContext.request.contextPath}../resources/${videoList[0].thumbnailStoredLocation}" alt="" />
                        </a>
                        <div class="card-body">
                            <h5 class="card-title">${videoList[0].title} - ${singerList[0].singerName}</h5>
                            <p class="card-text"><small>조회수 ${videoList[0].viewcount}회 · ${videoList[0].createdAt}</small></p>
                        </div>
                    </div>
                    <div class="card">
                        <a href="${pageContext.request.contextPath}/videoPlay/${videoList[1].id}" class="link">
                            <img width="370" height="250" src="${pageContext.request.contextPath}../resources/${videoList[1].thumbnailStoredLocation}" alt="" />
                        </a>
                        <div class="card-body">
                            <h5 class="card-title">${videoList[1].title} - ${singerList[1].singerName}</h5>
                            <p class="card-text"><small>조회수 ${videoList[1].viewcount}회 · ${videoList[1].createdAt}</small></p>
                        </div>
                    </div>
                    <div class="card">
                        <a href="${pageContext.request.contextPath}/videoPlay/${videoList[2].id}" class="link">
                            <img width="370" height="250" src="${pageContext.request.contextPath}../resources/${videoList[2].thumbnailStoredLocation}" alt="" />
                        </a>
                        <div class="card-body">
                            <h5 class="card-title">${videoList[2].title} - ${singerList[2].singerName}</h5>
                            <p class="card-text"><small>조회수 ${videoList[2].viewcount}회 · ${videoList[2].createdAt}</small></p>
                        </div>
                    </div>
                </div>

            </div>

            <!-- row -->
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