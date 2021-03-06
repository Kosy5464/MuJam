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
    <div class="container">
        <br>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">

                <div class="item active">
                    <iframe width="100%" height="400" src="https://www.youtube.com/embed/3HKnF5ahGdg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                    </iframe>
                </div>

                <div class="item">
                    <!--  <img src="images/2.jpg" alt="Chicago" style="width:100%;">
                      <div class="carousel-caption">
                          <h3>Chicago</h3>
                          <p>Thank you, Chicago!</p>
                      </div>-->
                    <iframe width="100%" height="400" src="https://www.youtube.com/embed/3HKnF5ahGdg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                    </iframe>
                </div>


                <div class="item">
                    <iframe width="100%" height="400" src="https://www.youtube.com/embed/3HKnF5ahGdg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                    </iframe>
                </div>

            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <br>
    <div class="container">
        <div id="main-content" >
            <!-- Centered Pills -->
            <ul class="nav flex-tabs nav-pills nav-justified">
                <li class="active"><a href="#total" data-toggle="tab">TOTAL</a></li>
                <li><a href="#musician" data-toggle="tab">MUSICIAN</a></li>
                <li><a href="#music" data-toggle="tab">MUSIC</a></li>
                <li><a href="#" data-toggle="tab">LIKE</a></li>
            </ul><br>
            <div class="tab-content">
                <div class="tab-pane fade in active" id="total">
                    <hr  color="gray">
                    <div class="row">
                        <div class="col-sm-3 video col">
                            <h3 style="color: black">HOT Musician<i class="fas fa-fire"></i></h3>
                        </div>
                        <div>
                            <button><a href="#musician" data-toggle="tab">더보기</a></button>
                        </div>
                    </div>
                    <!-- Tab 1 -->
                    <div class="tab tab-1 flex flex-4 active">
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <iframe width="275" height="155" src="https://www.youtube.com/embed/3HKnF5ahGdg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">
                                    <i class="fas fa-award" style="font-size: 50px"></i>
                                    <!--<span style="color: black; font-weight: bold; font-size: x-large; text-align: center">1</span>-->
                                </div>
                                <div class="col-sm-9">
                                    <div>내 마음이 움찔했던 순간 - 규현</div>
                                    <a href="generic.html" class="link"><span>Click Me</span></a>
                                </div>
                            </div>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <iframe width="560" height="315" src="https://www.youtube.com/embed/Fc-H3AaQGTs" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">
                                    <i class="fas fa-medal" style="font-size: 50px"></i>
                                    <!--<span style="color: black; font-weight: bold; font-size: x-large; text-align: center">1</span>-->
                                </div>
                                <div class="col-sm-9">
                                    <div>내 마음이 움찔했던 순간 - 규현</div>
                                    <a href="generic.html" class="link"><span>Click Me</span></a>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <iframe src="video/greeny.mp4" controls></iframe>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">
                                    <i class="fas fa-crown" style="font-size: 50px"></i>
                                    <!--<span style="color: black; font-weight: bold; font-size: x-large; text-align: center">1</span>-->
                                </div>
                                <div class="col-sm-9">
                                    <div>그린테스터 홍보 - 그린이</div>
                                    <a href="generic.html" class="link"><span>Click Me</span></a>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <iframe src="video/greeny.mp4" controls></iframe>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">
                                    <i class="fas fa-compact-disc" style="font-size: 50px"></i>
                                    <!--<span style="color: black; font-weight: bold; font-size: x-large; text-align: center">1</span>-->
                                </div>
                                <div class="col-sm-9">
                                    <div>오홍홍홍홍홍 - 홍홍</div>
                                    <a href="generic.html" class="link"><span>Click Me</span></a>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                    </div>
                    <hr  color="gray">
                    <div class="row">
                        <div class="col-sm-3">
                            <h3 style="color: black">HOT Music<i class="fas fa-fire"></i></h3>
                        </div>
                        <div>
                            <button><a href="#music" data-toggle="tab">더보기</a></button>
                        </div>
                    </div>
                    <!--Tab 2-->
                    <div class="tab tab-1 flex flex-4 active">
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <iframe width="275" height="155" src="https://www.youtube.com/embed/3HKnF5ahGdg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">
                                    <i class="fas fa-award" style="font-size: 50px"></i>
                                    <!--<span style="color: black; font-weight: bold; font-size: x-large; text-align: center">1</span>-->
                                </div>
                                <div class="col-sm-9">
                                    <div>내 마음이 움찔했던 순간 - 규현</div>
                                    <a href="generic.html" class="link"><span>Click Me</span></a>
                                </div>
                            </div>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <iframe width="560" height="315" src="https://www.youtube.com/embed/Fc-H3AaQGTs" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">
                                    <i class="fas fa-medal" style="font-size: 50px"></i>
                                    <!--<span style="color: black; font-weight: bold; font-size: x-large; text-align: center">1</span>-->
                                </div>
                                <div class="col-sm-9">
                                    <div>내 마음이 움찔했던 순간 - 규현</div>
                                    <a href="generic.html" class="link"><span>Click Me</span></a>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <iframe src="video/greeny.mp4" controls></iframe>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">
                                    <i class="fas fa-crown" style="font-size: 50px"></i>
                                    <!--<span style="color: black; font-weight: bold; font-size: x-large; text-align: center">1</span>-->
                                </div>
                                <div class="col-sm-9">
                                    <div>그린테스터 홍보 - 그린이</div>
                                    <a href="generic.html" class="link"><span>Click Me</span></a>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <iframe src="video/greeny.mp4" controls></iframe>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">
                                    <i class="fas fa-compact-disc" style="font-size: 50px"></i>
                                    <!--<span style="color: black; font-weight: bold; font-size: x-large; text-align: center">1</span>-->
                                </div>
                                <div class="col-sm-9">
                                    <div>오홍홍홍홍홍 - 홍홍</div>
                                    <a href="generic.html" class="link"><span>Click Me</span></a>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="musician">
                    <hr  color="gray">
                    <h3 style="color: black">HOT Musician<i class="fas fa-fire"></i></h3>
                    <br>
                    <div class="tab tab-1 flex flex-4 active">
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <iframe width="275" height="155" src="https://www.youtube.com/embed/3HKnF5ahGdg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">
                                    <i class="fas fa-award" style="font-size: 50px"></i>
                                    <!--<span style="color: black; font-weight: bold; font-size: x-large; text-align: center">1</span>-->
                                </div>
                                <div class="col-sm-9">
                                    <div>내 마음이 움찔했던 순간 - 규현</div>
                                    <a href="generic.html" class="link"><span>Click Me</span></a>
                                </div>
                            </div>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <iframe width="560" height="315" src="https://www.youtube.com/embed/Fc-H3AaQGTs" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">
                                    <i class="fas fa-medal" style="font-size: 50px"></i>
                                    <!--<span style="color: black; font-weight: bold; font-size: x-large; text-align: center">1</span>-->
                                </div>
                                <div class="col-sm-9">
                                    <div>내 마음이 움찔했던 순간 - 규현</div>
                                    <a href="generic.html" class="link"><span>Click Me</span></a>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <iframe src="video/greeny.mp4" controls></iframe>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">
                                    <i class="fas fa-crown" style="font-size: 50px"></i>
                                    <!--<span style="color: black; font-weight: bold; font-size: x-large; text-align: center">1</span>-->
                                </div>
                                <div class="col-sm-9">
                                    <div>그린테스터 홍보 - 그린이</div>
                                    <a href="generic.html" class="link"><span>Click Me</span></a>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <iframe src="video/greeny.mp4" controls></iframe>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">
                                    <i class="fas fa-compact-disc" style="font-size: 50px"></i>
                                    <!--<span style="color: black; font-weight: bold; font-size: x-large; text-align: center">1</span>-->
                                </div>
                                <div class="col-sm-9">
                                    <div>오홍홍홍홍홍 - 홍홍</div>
                                    <a href="generic.html" class="link"><span>Click Me</span></a>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                    </div>
                    <nav aria-label="Page navigation example">
                        <ul class="pagination ">
                            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="tab-pane fade" id="music">
                    <hr  color="gray">
                    <h3 style="color: black">HOT Music<i class="fas fa-fire"></i></h3>
                    <br>
                    <div class="tab tab-1 flex flex-4 active">
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <iframe width="275" height="155" src="https://www.youtube.com/embed/3HKnF5ahGdg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">
                                    <i class="fas fa-award" style="font-size: 50px"></i>
                                    <!--<span style="color: black; font-weight: bold; font-size: x-large; text-align: center">1</span>-->
                                </div>
                                <div class="col-sm-9">
                                    <div>내 마음이 움찔했던 순간 - 규현</div>
                                    <a href="generic.html" class="link"><span>Click Me</span></a>
                                </div>
                            </div>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <iframe width="560" height="315" src="https://www.youtube.com/embed/Fc-H3AaQGTs" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">
                                    <i class="fas fa-medal" style="font-size: 50px"></i>
                                    <!--<span style="color: black; font-weight: bold; font-size: x-large; text-align: center">1</span>-->
                                </div>
                                <div class="col-sm-9">
                                    <div>내 마음이 움찔했던 순간 - 규현</div>
                                    <a href="generic.html" class="link"><span>Click Me</span></a>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <iframe src="video/greeny.mp4" controls></iframe>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">
                                    <i class="fas fa-crown" style="font-size: 50px"></i>
                                    <!--<span style="color: black; font-weight: bold; font-size: x-large; text-align: center">1</span>-->
                                </div>
                                <div class="col-sm-9">
                                    <div>그린테스터 홍보 - 그린이</div>
                                    <a href="generic.html" class="link"><span>Click Me</span></a>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <iframe src="video/greeny.mp4" controls></iframe>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">
                                    <i class="fas fa-compact-disc" style="font-size: 50px"></i>
                                    <!--<span style="color: black; font-weight: bold; font-size: x-large; text-align: center">1</span>-->
                                </div>
                                <div class="col-sm-9">
                                    <div>오홍홍홍홍홍 - 홍홍</div>
                                    <a href="generic.html" class="link"><span>Click Me</span></a>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <div class="video col">
                            <div class="image fit">
                                <img src="images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                    </div>
                    <nav aria-label="Page navigation example">
                        <ul class="pagination ">
                            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                    </nav>
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
<script src="${pageContext.request.contextPath}../resources/js/Thumbnail.js"></script>
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