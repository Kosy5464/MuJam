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
            <h2 style="color: black">MY PLAYLIST</h2>
            <div id="aside"class="col-sm-4">
                <div class="video col">
                    <div class="video-wrapper">
                        <iframe width="275" height="155" src="https://www.youtube.com/embed/3HKnF5ahGdg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                    <div class="text-block">전체 영상 플레이</div>
                    <a href="generic.html" class="link"><span>Click Me</span></a>
                </div>
                <hr color="gray">
                <button class="btn-danger"><i class="far fa-user" style="font-size: 20px"></i>&nbsp;&nbsp;&nbsp;계정정보(아이디)</button>
            </div>
            <div id="section" class="col-sm-8">
                <div class="table-wrapper" style="overflow: auto; height: 500px; background-color: ghostwhite">
                    <table>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>
                                <img src="${pageContext.request.contextPath}../resources/images/1.jpg" width="100" controls></img>
                            </td>
                            <td>제제목제목메목메몸게몸ㄱ모메멤고<br>
                                뮤지션</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>
                                <img src="${pageContext.request.contextPath}../resources/images/1.jpg" width="100" controls></img>
                            </td>
                            <td>제목제목메목메몸게몸ㄱ모메멤고<br>
                                뮤지션</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>
                                <img src="${pageContext.request.contextPath}../resources/images/1.jpg" width="100" controls></img>
                            </td>
                            <td>
                                제목제목메목메몸게몸ㄱ모메멤고<br>
                                뮤지션
                            </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>
                                <img src="${pageContext.request.contextPath}../resources/images/1.jpg" width="100" controls></img>
                            </td>
                            <td>
                                제목제목메목메몸게몸ㄱ모메멤고<br>
                                뮤지션
                            </td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>
                                <img src="${pageContext.request.contextPath}../resources/images/1.jpg" width="100" controls></img>
                            </td>
                            <td>
                                제목제목메목메몸게몸ㄱ모메멤고<br>
                                뮤지션
                            </td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>
                                <img src="${pageContext.request.contextPath}../resources/images/1.jpg" width="100" controls></img>
                            </td>
                            <td>
                                제목제목메목메몸게몸ㄱ모메멤고<br>
                                뮤지션
                            </td>
                        </tr>
                        </tbody>

                    </table>
                </div>
            </div>
            <div>&nbsp;</div>
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