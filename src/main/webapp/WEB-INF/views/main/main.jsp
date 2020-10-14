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
    <link href="${pageContext.request.contextPath}../resources/css/style.css" rel="stylesheet">
    <!--다른 템플릿-->
    <link href="${pageContext.request.contextPath}../resources/css/main.css" rel="stylesheet"/>
    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}../resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Shadows+Into+Light' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
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
    </script>

</head>
<body>

<!-- Navigation -->
<header id="page-top">
    <div class="wrap-header">
        <div class="container">
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="container">
                    <div class="row">
                        <ul class="nav navbar-nav navbar-right">

                            <c:catch>
                                <c:choose>
                                    <c:when test="${empty user}">
                                        <li>
                                            <h5><a class="page-scroll" href="${pageContext.request.contextPath}/login">로그인&nbsp;&nbsp;&nbsp;</a></h5>
                                        </li>
                                        <li>
                                            <h5><a class="page-scroll" href="${pageContext.request.contextPath}/signUp">회원가입 &nbsp;&nbsp;&nbsp;</a></h5>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li>
                                            ${user.userId}
                                        </li>
                                        <li>
                                            <h5><a class="page-scroll" href="${pageContext.request.contextPath}/logout">로그아웃 &nbsp;&nbsp;&nbsp;</a></h5>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </c:catch>
                        </ul>
                    </div>
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header page-scroll">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand page-scroll" href="${pageContext.request.contextPath}/main">MuJam&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
                        <ul class="nav navbar-nav">
                            <li>
                                <a class="page-scroll" href="${pageContext.request.contextPath}/main">NEW</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="${pageContext.request.contextPath}/single">HOT</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="${pageContext.request.contextPath}/gallery">Musician</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="${pageContext.request.contextPath}/contact">Backstage</a>
                            </li>
                            <li><a>|</a></li>
                            <li>
                                <a class="page-scroll" id="followLink" onclick="" href="${pageContext.request.contextPath}/contact">Follow</a>
                            </li>
                            <li>
                                <a class="page-scroll" id="likeLink" onclick="" href="${pageContext.request.contextPath}/contact">Like</a>
                            </li>
                            <li>
                                <a class="page-scroll" id="playListLink" onclick="" href="${pageContext.request.contextPath}/contact">PlayList</a>
                            </li>

                            <li>
                                <form class="form-inline d-flex justify-content-center md-form form-sm active-pink active-pink-2 mt-2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input class="form-control form-control-sm ml-3 w-75" type="text" placeholder="Search"
                                           aria-label="Search">
                                    <i class="fas fa-search" aria-hidden="true"></i>
                                </form>

                            </li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container-fluid -->
            </nav>
            <div class="row">
                <div class="col-lg-12">
                    <div class="intro-text">
                        <div class="intro-lead-in">We're looking for a singer-songwriter!</div>
                        <div class="intro-heading">Show people your music!</div>
                    </div>
                    <a id="uploadVideoLink" href="${pageContext.request.contextPath}/videoUpload" class="btn btn-lg btn-1" >Upload Video</a>
                    <!--<a href="${pageContext.request.contextPath}/contact" class="btn btn-2">Contact Us</a>-->
                </div>
            </div>
        </div>
    </div>
    <c:if test="${empty user}">
        <script>
        const followLink = document.getElementById("followLink");
        followLink.setAttribute("href","${pageContext.request.contextPath}/login");
        followLink.setAttribute("onclick","alert('로그인창으로 이동합니다.')");

        const likeLink = document.getElementById("likeLink");
        likeLink.setAttribute("href","${pageContext.request.contextPath}/login");
        likeLink.setAttribute("onclick","alert('로그인창으로 이동합니다.')");

        const playListLink = document.getElementById("playListLink");
        playListLink.setAttribute("href","${pageContext.request.contextPath}/login");
        playListLink.setAttribute("onclick","alert('로그인창으로 이동합니다.')");

        const uploadVideoLink = document.getElementById("uploadVideoLink");
        uploadVideoLink.setAttribute("href","${pageContext.request.contextPath}/login");
        uploadVideoLink.setAttribute("onclick","alert('로그인창으로 이동합니다.')");
        </script>
        </c:if>
</header>
<!-- Header -->
<!-- /////////////////////////////////////////Content -->
<div id="page-content">
    <br>
    <div class="container">
        <div id="main-content" >
            <!-- Tabbed Video Section -->
            <div class="flex flex-tabs">
                <div class="tab-content">
                    <div class="mainCategory">
                        NEW Musician<br>
                        <div class="subCategory">새로운 가수</div>
                        <a href="" class="btn btn-info">더보기</a>
                    </div>
                </div>
                <!--<ul class="tab-list">
                    <li><a href="#" data-tab="tab-1" class="active">Duis vestibulum tellus</a></li>
                    <li><a href="#" data-tab="tab-2">Quam tempus sodales ipsum</a></li>
                    <li><a href="#" data-tab="tab-3">Donec faucibus risus cursus</a></li>
                </ul>-->
                <div class="tabs">

                    <!-- Tab 1 -->
                    <div class="tab tab-1 flex flex-3 active">
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <iframe width="275" height="155" src="${pageContext.request.contextPath}../resources/${videoList[0].thumbnailStoredLocation}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>
                            <div>${videoList[0].title} - ${userList[0].name}</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoList[0].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <video class="video-preview" poster="${pageContext.request.contextPath}../resources/${videoList[3].thumbnailStoredLocation}" width="300" height="150" src="${pageContext.request.contextPath}../resources/${videoList[1].storedLocation}" controls onmouseout="this.pause()" onmouseover="this.play()" ></video>
                            </div>
                            <div>${videoList[1].title} - ${userList[1].name}</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoList[1].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <iframe src="${pageContext.request.contextPath}../resources/${videoList[2].storedLocation}" controls></iframe>
                            </div>
                            <div>${videoList[2].title} - ${userList[2].name}</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoList[2].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/${videoList[3].thumbnailStoredLocation}" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <div>${videoList[3].title} - ${userList[3].name}</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoList[3].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/${videoList[4].thumbnailStoredLocation}" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <div>${videoList[4].title} - ${userList[4].name}</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoList[4].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/${videoList[5].thumbnailStoredLocation}" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <div>${videoList[5].title} - ${userList[5].name}</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoList[5].id}" class="link"><span>Click Me</span></a>
                        </div>
                    </div>

                    <!-- Tab 2 -->
                    <div class="tab tab-2 flex flex-3">
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoList[6].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/videoPlay/7" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic04.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/videoPlay/7" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic03.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/videoPlay/7" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic02.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/videoPlay/7" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic01.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                    </div>

                    <!-- Tab 3 -->
                    <div class="tab tab-3 flex flex-3">
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic03.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic02.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic01.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic04.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                    </div>

                </div>
            </div>
            <hr  color="gray">
            <!-- Tabbed Video Section -->
            <div class="flex flex-tabs">
                <div class="tab-content">
                    <div class="mainCategory">
                        HOT Musician<br>
                        <div class="subCategory">인기 가수</div>
                        <a href="" class="btn btn-info">더보기</a>
                    </div>
                </div>
                <!--<ul class="tab-list">
                    <li><a href="#" data-tab="tab-1" class="active">Duis vestibulum tellus</a></li>
                    <li><a href="#" data-tab="tab-2">Quam tempus sodales ipsum</a></li>
                    <li><a href="#" data-tab="tab-3">Donec faucibus risus cursus</a></li>
                </ul>-->
                <div class="tabs">

                    <!-- Tab 1 -->
                    <div class="tab tab-1 flex flex-3 active">
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/${videoListViewCount[0].thumbnailStoredLocation}" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <div>${videoListViewCount[0].title} - ${userListViewCount[0].name}</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[0].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/${videoListViewCount[1].thumbnailStoredLocation}" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <div>${videoListViewCount[1].title} - ${userListViewCount[1].name}</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[1].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/${videoListViewCount[2].thumbnailStoredLocation}" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <div>${videoListViewCount[2].title} - ${userListViewCount[2].name}</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[2].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/${videoListViewCount[3].thumbnailStoredLocation}" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <div>${videoListViewCount[3].title} - ${userListViewCount[3].name}</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[3].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/${videoListViewCount[4].thumbnailStoredLocation}" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <div>${videoListViewCount[4].title} - ${userListViewCount[4].name}</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[4].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/${videoListViewCount[5].thumbnailStoredLocation}" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <div>${videoListViewCount[5].title} - ${userListViewCount[5].name}</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[5].id}" class="link"><span>Click Me</span></a>
                        </div>
                    </div>
                    <!-- Tab 2 -->
                    <div class="tab tab-2 flex flex-3">
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic04.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic03.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic02.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic01.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                    </div>

                    <!-- Tab 3 -->
                    <div class="tab tab-3 flex flex-3">
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic03.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic02.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic01.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic04.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                    </div>

                </div>
            </div>

        </div>

    </div>

</div>


<!-- /////////////////////////////////////////Footer -->
<footer>
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="copyright">Copyright &copy; GAJAH 2019. All rights reserved</div>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li><a href="#">Privacy Policy</a>
                        </li>
                        <li><a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
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