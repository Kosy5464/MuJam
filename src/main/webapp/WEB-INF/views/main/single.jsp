<%--
  Created by IntelliJ IDEA.
  User: chlee
  Date: 2020-09-29
  Time: 오후 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Free Bootstrap Themes Designed by Zerotheme.com" />
    <meta name="author" content="https://www.Zerotheme.com" />

    <title>Music Studio</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}../resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}../resources/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}../resources/css/lightbox.css">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}../resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Shadows+Into+Light' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="css/flipclock.css" rel="stylesheet" />


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}../resources/js/html5shiv.js"></script>
    <script src="${pageContext.request.contextPath}../resources/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<!-- /////////////////////////////////////////Navigation -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand page-scroll" href="${pageContext.request.contextPath}/main">MusicStudio</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a class="page-scroll" href="${pageContext.request.contextPath}/main">Home</a>
                </li>
                <li>
                    <a class="page-scroll" href="${pageContext.request.contextPath}/single">About</a>
                </li>
                <li>
                    <a class="page-scroll" href="${pageContext.request.contextPath}/gallery">Gallery</a>
                </li>
                <li>
                    <a class="page-scroll" href="${pageContext.request.contextPath}/contact">Contact</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
<!-- Navigation -->

<!-- /////////////////////////////////////////Header -->
<header id="page-top">
    <div class="wrap-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="intro-text">
                        <div class="intro-lead-in">Welcome To Our Studio!</div>
                        <div class="intro-heading">It's Nice To Meet You</div>
                    </div>
                    <a href="${pageContext.request.contextPath}/single" class="btn btn-1">About Us</a>
                    <a href="${pageContext.request.contextPath}/contact" class="btn btn-2">Contact Us</a>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- Header -->
<div class="gradient-line clearfix">
    <div style="background: none repeat scroll 0% 0% #F69087;"></div>
    <div style="background: none repeat scroll 0% 0% #85CCB1;"></div>
    <div style="background: none repeat scroll 0% 0% #966b20;"></div>
    <div style="background: none repeat scroll 0% 0% #85A9B3;"></div>
    <div style="background: none repeat scroll 0% 0% #B0CB7A;"></div>
</div>

<!-- /////////////////////////////////////////Content -->
<div id="page-content" class="index-page">
    <div class="container">
        <div id="main-content" class="col-md-8">
            <article>
                <div class="art-header"><!--sao nhieu artheader vay-->
                    <a href="#"><h2>Sharing Your Explorer’s Story: Man and Mother Nature</h2></a>
                </div>
                <div class="art-content">
                    <div class="info">By <a href="#">Danny</a> on April 14, 2015</div>
                    <img src="${pageContext.request.contextPath}../resources/images/7.jpg" />
                    <div class="excerpt"><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollt anim id est laborum exercitation ullamco laboris nisi ut aliquip.</p></div>
                    <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.</p>
                    <blockquote><p>Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet vultatup duista.</p></blockquote>
                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril.</p>
                    <h5>Heading 1</h5>
                    <p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse lorem ipsum dolor sit amet.</p>
                    <h5>Heading 2</h5>
                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis. At vero eos et accusam et justo.</p>
                    <h5>Heading 3</h5>
                    <p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum hendrerit in vulputate velit esse molestie.</p>
                    <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.</p>

                    <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, ed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
                    <div class="note">
                        <ol>
                            <li>Lorem ipsum</li>
                            <li>Sit amet vultatup nonumy</li>
                            <li>Duista sed diam</li>
                        </ol>
                        <div class="clear"></div>
                    </div>
                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                    <p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores.</p>


                </div>
            </article>
        </div>

        <div id="sidebar" class="col-md-4">
            <div class="widget wid-vid">
                <div class="heading"><h4>Popular Videos</h4></div>
                <div class="content">
                    <div class="zoom-container">
                        <a href="${pageContext.request.contextPath}/single">
								<span class="zoom-caption">
									<i class="icon-play fa fa-play"></i>
								</span>
                            <img src="${pageContext.request.contextPath}../resources/images/14.jpg" />
                        </a>
                    </div>
                </div>
            </div>
            <div class="widget wid-tags">
                <div class="heading"><h4>Tag</h4></div>
                <div class="content">
                    <ul class="list-inline">
                        <li><a href="#">animals</a></li>
                        <li><a href="#">cooking</a></li>
                        <li><a href="#">countries</a></li>
                        <li><a href="#">home</a></li>
                        <li><a href="#">likes</a></li>
                        <li><a href="#">photo</a></li>
                        <li><a href="#">travel</a></li>
                        <li><a href="#">video</a></li>
                    </ul>
                </div>
            </div>
            <div class="widget wid-posts">
                <div class="content">
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#most">Most Plays</a></li>
                        <li><a data-toggle="tab" href="#popular">Popular</a></li>
                        <li><a data-toggle="tab" href="#recent">Recent</a></li>
                        <li><a data-toggle="tab" href="#random">Random</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="most" class="tab-pane fade in active">
                            <div class="post">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/1.jpg"/></a>
                                <div class="wrapper">
                                    <h5><a href="#">A Blue Morning</a></h5>
                                    <p>March 1, 2015</p>
                                </div>
                            </div>
                            <div class="post">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/2.jpg"/></a>
                                <div class="wrapper">
                                    <h5><a href="#">A Blue Morning</a></h5>
                                    <p>March 1, 2015</p>
                                </div>
                            </div>
                            <div class="post">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/3.jpg"/></a>
                                <div class="wrapper">
                                    <h5><a href="#">A Blue Morning</a></h5>
                                    <p>March 1, 2015</p>
                                </div>
                            </div>
                            <div class="post">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/8.jpg"/></a>
                                <div class="wrapper">
                                    <h5><a href="#">A Blue Morning</a></h5>
                                    <p>March 1, 2015</p>
                                </div>
                            </div>
                        </div>
                        <div id="popular" class="tab-pane fade">
                            <div class="post">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/2.jpg"/></a>
                                <div class="wrapper">
                                    <h5><a href="#">A Blue Morning</a></h5>
                                    <p>March 1, 2015</p>
                                </div>
                            </div>
                            <div class="post">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/3.jpg"/></a>
                                <div class="wrapper">
                                    <h5><a href="#">A Blue Morning</a></h5>
                                    <p>March 1, 2015</p>
                                </div>
                            </div>
                            <div class="post">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/4.jpg"/></a>
                                <div class="wrapper">
                                    <h5><a href="#">A Blue Morning</a></h5>
                                    <p>March 1, 2015</p>
                                </div>
                            </div>
                            <div class="post">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/5.jpg"/></a>
                                <div class="wrapper">
                                    <h5><a href="#">A Blue Morning</a></h5>
                                    <p>March 1, 2015</p>
                                </div>
                            </div>
                        </div>
                        <div id="recent" class="tab-pane fade">
                            <div class="post">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/6.jpg"/></a>
                                <div class="wrapper">
                                    <h5><a href="#">A Blue Morning</a></h5>
                                    <p>March 1, 2015</p>
                                </div>
                            </div>
                            <div class="post">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/7.jpg"/></a>
                                <div class="wrapper">
                                    <h5><a href="#">A Blue Morning</a></h5>
                                    <p>March 1, 2015</p>
                                </div>
                            </div>
                            <div class="post">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/8.jpg"/></a>
                                <div class="wrapper">
                                    <h5><a href="#">A Blue Morning</a></h5>
                                    <p>March 1, 2015</p>
                                </div>
                            </div>
                            <div class="post">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/9.jpg"/></a>
                                <div class="wrapper">
                                    <h5><a href="#">A Blue Morning</a></h5>
                                    <p>March 1, 2015</p>
                                </div>
                            </div>
                        </div>
                        <div id="random" class="tab-pane fade">
                            <div class="post">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/10.jpg"/></a>
                                <div class="wrapper">
                                    <h5><a href="#">A Blue Morning</a></h5>
                                    <p>March 1, 2015</p>
                                </div>
                            </div>
                            <div class="post">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/5.jpg"/></a>
                                <div class="wrapper">
                                    <h5><a href="#">A Blue Morning</a></h5>
                                    <p>March 1, 2015</p>
                                </div>
                            </div>
                            <div class="post">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/7.jpg"/></a>
                                <div class="wrapper">
                                    <h5><a href="#">A Blue Morning</a></h5>
                                    <p>March 1, 2015</p>
                                </div>
                            </div>
                            <div class="post">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/8.jpg"/></a>
                                <div class="wrapper">
                                    <h5><a href="#">A Blue Morning</a></h5>
                                    <p>March 1, 2015</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="widget wid-gallery">
                <div class="heading"><h4>Gallery</h4></div>
                <div class="content">
                    <div class="row">
                        <div class="col-xs-4">
                            <a href="#"><img src="${pageContext.request.contextPath}../resources/images/7.jpg"></a>
                            <a href="#"><img src="${pageContext.request.contextPath}../resources/images/8.jpg"></a>
                            <a href="#"><img src="${pageContext.request.contextPath}../resources/images/9.jpg"></a>
                        </div>
                        <div class="col-xs-4">
                            <a href="#"><img src="${pageContext.request.contextPath}../resources/images/6.jpg"></a>
                            <a href="#"><img src="${pageContext.request.contextPath}../resources/images/7.jpg"></a>
                            <a href="#"><img src="${pageContext.request.contextPath}../resources/images/8.jpg"></a>
                        </div>
                        <div class="col-xs-4">
                            <a href="#"><img src="${pageContext.request.contextPath}../resources/images/7.jpg"></a>
                            <a href="#"><img src="${pageContext.request.contextPath}../resources/images/9.jpg"></a>
                            <a href="#"><img src="${pageContext.request.contextPath}../resources/images/6.jpg"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="gradient-line clearfix">
    <div style="background: none repeat scroll 0% 0% #F69087;"></div>
    <div style="background: none repeat scroll 0% 0% #85CCB1;"></div>
    <div style="background: none repeat scroll 0% 0% #966b20;"></div>
    <div style="background: none repeat scroll 0% 0% #85A9B3;"></div>
    <div style="background: none repeat scroll 0% 0% #B0CB7A;"></div>
</div>
<!-- /////////////////////////////////////////Footer -->
<footer>
    <div class="top-footer">
        <div class="container">
            <div class="row">
                <ul class="list-inline">
                    <li><a href="#"><i class="fa fa-twitter"></i> Twitter</a></li>
                    <li><a href="#"><i class="fa fa-facebook"></i> Facebook</a></li>
                    <li><a href="#"><i class="fa fa-linkedin-square"></i> Linkedin</a></li>
                    <li><a href="#"><i class="fa fa-youtube"></i> Youtube</a></li>
                    <li><a href="#"><i class="fa fa-instagram"></i> Instagram</a></li>
                    <li><a href="#"><i class="fa fa-pinterest"></i> Pinterest</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="wrap-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-footer footer-1">
                    <div class="heading"><h4>About Us</h4></div>
                    <div class="content">
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad</p>
                    </div>
                </div>
                <div class="col-md-3 col-footer footer-2">
                    <div class="heading"><h4>Partners</h4></div>
                    <div class="content">
                        <div class="row">
                            <div class="col-md-6">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/15.jpg" /></a>
                            </div>
                            <div class="col-md-6">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/16.jpg" /></a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/17.jpg" /></a>
                            </div>
                            <div class="col-md-6">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/18.jpg" /></a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/19.jpg" /></a>
                            </div>
                            <div class="col-md-6">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/20.jpg" /></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-footer footer-3">
                    <div class="heading"><h4>Instagram</h4></div>
                    <div class="content">
                        <div class="row">
                            <div class="col-md-4">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/f1.jpg" /></a>
                            </div>
                            <div class="col-md-4">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/f2.jpg" /></a>
                            </div>
                            <div class="col-md-4">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/f3.jpg" /></a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/f4.jpg" /></a>
                            </div>
                            <div class="col-md-4">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/f5.jpg" /></a>
                            </div>
                            <div class="col-md-4">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/f6.jpg" /></a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/f7.jpg" /></a>
                            </div>
                            <div class="col-md-4">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/f8.jpg" /></a>
                            </div>
                            <div class="col-md-4">
                                <a href="#"><img src="${pageContext.request.contextPath}../resources/images/f9.jpg" /></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-footer footer-4">
                    <div class="heading"><h4>Tags Cloud</h4></div>
                    <div class="content">
                        <ul>
                            <li><a href="#">Lorem</a></li>
                            <li><a href="#">Ipsum</a></li>
                            <li><a href="#">Euismod</a></li>
                            <li><a href="#">Laoreet</a></li>
                            <li><a href="#">Dolore</a></li>
                            <li><a href="#">Dasdas</a></li>
                            <li><a href="#">Consectetuer</a></li>
                            <li><a href="#">Aasdasls</a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="copyright">Copyright &copy; Your Website <br/>Designed by <a href="https://www.Zerotheme.com" target="_blank">Zerotheme</a></div>
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

<!-- Countdown -->
<script src="js/flipclock.js"></script>
<script type="text/javascript">
    var clock;

    $(document).ready(function() {
        var clock;

        clock = $('.clock').FlipClock({
            clockFace: 'DailyCounter',
            autoStart: false,
            callbacks: {
                stop: function() {
                    $('.message').html('The clock has stopped!')
                }
            }
        });

        clock.setTime(220880);
        clock.setCountdown(true);
        clock.start();

    });
</script>

<script src="${pageContext.request.contextPath}../resources/js/lightbox-plus-jquery.min.js"></script>
</body>
</html>
