<%--
  Created by IntelliJ IDEA.
  User: chlee
  Date: 2020-09-29
  Time: 오전 11:49
  To change this template use File | Settings | File Templates.
--%>
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
<!-- /////////////////////////////////////////Content -->

<!-- Main -->
<div id="page-content">

    <!-- One -->
    <section class="wrapper style1">
        <div class="inner">
            <!--<header class="align-center">
                <h2>영상 제목?</h2>
                <p>가수이름 장르?</p>
            </header>-->
            <div class="video">
                <div class="video-wrapper">
                    <iframe width="560" height="315" src="${pageContext.request.contextPath}../resources/${videoDto.storedLocation}" frameborder="0" allowfullscreen></iframe>
                </div>
                <div id="most" class="tab-pane fade in active">
                    <div class="post">
                        <div class="wrapper">
                            <h5>조회수 ${videoDto.viewcount}</h5>
                            <p>제목 ${videoDto.title}</p>
                            <h3>가수id ${videoDto.singerId}</h3>
                            <p>장르 1 ${videoDto.genre1}</p>
                            <p>장르 2 ${videoDto.genre2}</p>
                        </div>
                    </div>
            </div>
            <p>내용 ${videoDto.content}</p>
            </div>
        </div>
    </section>

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