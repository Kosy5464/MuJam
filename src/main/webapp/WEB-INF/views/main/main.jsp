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
        <%--<!--**********************************
            Nav header start
        ***********************************-->
        <div class="nav-header">
            <div class="brand-logo">
                <a href="index.html">
                    <b class="logo-abbr"><img src="${pageContext.request.contextPath}../resources/images/logo_M.png" alt=""> </b>
                    <span class="logo-compact"><img src="${pageContext.request.contextPath}../resources/images/logo-compact.png" alt=""></span>
                    <span class="brand-title">
                        <img src="${pageContext.request.contextPath}../resources/images/logo_mujam.png" width="150" alt="">
                    </span>
                </a>
            </div>
        </div>
        <!--**********************************
            Nav header end
        ***********************************-->

        <!--**********************************
            Header start
        ***********************************-->
        <div class="header">
            <div class="header-content clearfix">

                <div class="nav-control">
                    <div class="hamburger">
                        <span class="toggle-icon"><i class="icon-menu"></i></span>
                    </div>
                </div>
                <!--<div class="header-left">

                </div>-->
                <div class="header-right">
                    <ul class="clearfix">
                        <li class="icons">
                            <div class="search"> <input type="search" class="search-input" placeholder="Search..." name=""> <a href="#" class="search-icon"> <i class="fa fa-search"></i> </a> </div>
                        </li>
                        <!--<li class="icons">
                                <div class="input-group-prepend">
                                    <span class="input-group-text bg-transparent border-0 pr-2 pr-sm-3" id="basic-addon1">
                                        <i class="mdi mdi-magnify"></i>
                                    </span>
                                </div>
                                <input type="search" class="form-control" placeholder="Search.." aria-label="SearchBox">
                                <div class="drop-down  d-md-none">
                                    <form action="#">
                                        <input type="text" class="form-control" placeholder="Search">
                                    </form>
                                </div>
                        </li>-->
                        <li class="icons">
                            <button type="button" class="btn mb-1 btn-outline-light" onclick="location.href='${pageContext.request.contextPath}/login'">로그인</button>
                        </li>
                        <li class="icons">
                            <button type="button" class="btn mb-1 btn-outline-light" onclick="location.href='${pageContext.request.contextPath}/signUp'">회원가입</button>
                        </li>
                        <li class="icons dropdown d-none d-md-flex">
                            <a href="javascript:void(0)" class="list-group"  data-toggle="dropdown">
                                <i class="fa fa-ellipsis-v f-s-14" aria-hidden="true"></i>
                            </a>
                            <div class="drop-down dropdown-language animated fadeIn  dropdown-menu">
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li><a href="">이용약관</a></li>
                                        <li><a href="">이벤트</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->
        <!--**********************************
            Sidebar start
        ***********************************-->
        <div class="nk-sidebar">
            <div class="nk-nav-scroll">
                <ul class="metismenu" id="menu">
                    <li class="nav-label">Public</li>
                    <li>
                        <a  aria-expanded="false" href="${pageContext.request.contextPath}/new">
                            <i class="icon-star menu-icon"></i><span class="nav-text">NEW Music</span>
                        </a>
                    </li>
                    <li>
                        <a  aria-expanded="false" href="#">
                            <i class="icon-fire menu-icon"></i><span class="nav-text">HOT Music</span>
                        </a>
                    </li>
                    <li>
                        <a  aria-expanded="false" href="${pageContext.request.contextPath}/musician">
                            <i class="icon-people menu-icon"></i><span class="nav-text">MUSICIAN</span>
                        </a>
                    </li>
                    <li>
                        <a  aria-expanded="false" href="#">
                            <i class="icon-diamond menu-icon"></i><span class="nav-text">BACKSTAGE</span>
                        </a>
                    </li>
                    <li class="nav-label"><hr/></li>
                    <li class="nav-label">User</li>
                    <li>
                        <a  aria-expanded="false" href="#">
                            <i class="icon-like menu-icon"></i><span class="nav-text">LIKE</span>
                        </a>
                    </li>
                    <li>
                        <a  aria-expanded="false" href="#">
                            <i class="icon-heart menu-icon"></i><span class="nav-text">FOLLOW</span>
                        </a>
                    </li>
                    <li>
                        <a  aria-expanded="false" href="${pageContext.request.contextPath}/videoPlay">
                            <i class="icon-playlist menu-icon"></i><span class="nav-text">My PlayList</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>--%>
        <!--**********************************
            Sidebar end
        ***********************************-->

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
                <h2>NEW MUSIC</h2>
                <div class="row">
                    <div class="form-group col">
                        <!--<label for="sel1">Genre 1:</label>-->
                        <select name="sel1" class="form-control" id="sel1">
                            <option>Genre1 선택</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                        </select>
                    </div>
                    <div class="form-group col">
                        <!--<label for="sel2">Genre 2:</label>-->
                        <select name="sel2"class="form-control" id="sel2">
                            <option>Genre2 선택</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                        </select>
                    </div>

                </div>


                <div class="container-fluid">
                    <div class="card-deck">
                        <div class="card">
                            <iframe width="auto" height="250" src="https://www.youtube.com/embed/4tJ7cVpONo4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">비와이 킬링벌스 - 비와이</h5>
                                <p class="card-text"></p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                        <div class="card">
                            <iframe width="auto" height="250" src="https://www.youtube.com/embed/4tJ7cVpONo4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">비와이 킬링벌스 - 비와이</h5>
                                <p class="card-text"></p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                        <div class="card">
                            <iframe width="auto" height="250" src="https://www.youtube.com/embed/4tJ7cVpONo4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">비와이 킬링벌스 - 비와이</h5>
                                <p class="card-text"></p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Last updated 3 mins ago</small>
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