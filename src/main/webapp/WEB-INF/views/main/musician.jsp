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
            <br>
            <div class="container">
                <h3 style="color:black;">요즘 뜨는 Musician</h3>
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
            <div class="row">
                <div class="col-sm-6">
                    <hr  color="gray">
                    <h3 style="color: black">HOT Musician</h3>
                    <div class="tab tab-1 flex flex-3 active">
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
                                <iframe src="video/greeny.mp4" controls></iframe>
                            </div>
                            <div>그린테스터 - 그린이</div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic05.jpg" alt="" />
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
                <div class="col-sm-6">
                    <hr  color="gray">
                    <h3 style="color: black">NEW Musician</h3>
                    <div class="tab tab-1 flex flex-3 active">
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
                                <iframe src="video/greeny.mp4" controls></iframe>
                            </div>
                            <div>그린테스터 - 그린이</div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="generic.html" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic05.jpg" alt="" />
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