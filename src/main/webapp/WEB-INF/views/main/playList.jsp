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

</head>

<div id="preloader">
    <div class="loader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
        </svg>
    </div>
</div>
<!--*******************
    Preloader end
********************-->
<body>

<div id="main-wrapper">
    <jsp:include page="../main/header.jsp"></jsp:include>

    <div class="content-body">
        <!-- row -->
        <div class="row page-titles"><h1>playList</h1></div><hr class="hr1"/>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-xl-12">
                    <div class="row">
                        <div class="col-sm-9">
                            <iframe width="100%" height="538" src="https://www.youtube.com/embed/JkRKxxLiDNI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            <div class="card-body">
                                <div class="row">
                                    <h2 class="col-sm-9">크리스마스니까</h2>
                                    <div class="col-sm-3 col">
                                        <h5 class="card-text">장르 1 : 믹스</h5>
                                        <h5 class="card-text">장르 2 : 기분 좋은 날</h5>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="card-text col-sm-2"><small class="text-muted">조회수 : 1,000,000회 • 2020.11.25</small></div>
                                    <div class="col-sm-2"><button class="btn btn-danger p-0 mr-3">&nbsp;좋아요&nbsp;<i class="fa fa-thumbs-up"></i>&nbsp;&nbsp;300&nbsp;</button></div>
                                </div><br>
                                <div class="media align-items-center mb-4">
                                    <img class="mr-3" src="images/avatar/11.png" width="50" height="50" alt="">
                                    <div class="media-body">
                                        <h4 class="mb-0">젤리피쉬 뮤직</h4>
                                    </div>
                                </div>
                                <p class="card-text">다가오는 크리스마스에 여러분들에게 좋은 노래를 들려드리고 싶어. 기획한 곡입니다.<br>
                                    많은 훌륭한 가수들이 열심히 참여한 곡이니 잘 들어주세요. 박효신, 서인국, 성시경, 빅스, 엘렐레 엘안ㅇㄴ러ㄴ아ㅣ런ㅇ리ㅓㄴㄹ이넝ㄹㄴㅇ러ㅣㅇㄹㅇㄹ
                                    <br> 그럼 모두들 미리 메리크리스마스~
                                </p>
                            </div>
                        </div>
                        <div class="col-sm-3" style="overflow-y: scroll; height:850px;">
                            <table>
                                <tbody>
                                <tr style="height: 150px;">
                                    <td>
                                        <iframe width="100%" src="https://www.youtube.com/embed/JkRKxxLiDNI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </td>
                                    <td style="padding-left: 10px"><b>아직도 그대로</b><br>
                                        <small>가수명이다</small><br>
                                        <small>조회수 1천회,2020.12.18</small>
                                    </td>
                                    <td><i class="fa fa-bars"></i></td>
                                </tr>
                                <tr style="height: 150px;">
                                    <td>
                                        <iframe width="100%" src="https://www.youtube.com/embed/JkRKxxLiDNI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </td>
                                    <td style="padding-left: 10px"><b>아직도 그대로</b><br>
                                        <small>가수명이다</small><br>
                                        <small>조회수 1천회,2020.12.18</small>
                                    </td>
                                    <td><i class="fa fa-bars"></i></td>
                                </tr>
                                <tr style="height: 150px;">
                                    <td>
                                        <iframe width="100%" src="https://www.youtube.com/embed/JkRKxxLiDNI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </td>
                                    <td style="padding-left: 10px"><b>아직도 그대로</b><br>
                                        <small>가수명이다</small><br>
                                        <small>조회수 1천회,2020.12.18</small>
                                    </td>
                                    <td><i class="fa fa-bars"></i></td>
                                </tr>
                                <tr style="height: 150px;">
                                    <td>
                                        <iframe width="100%" src="https://www.youtube.com/embed/JkRKxxLiDNI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </td>
                                    <td style="padding-left: 10px"><b>아직도 그대로</b><br>
                                        <small>가수명이다</small><br>
                                        <small>조회수 1천회,2020.12.18</small>
                                    </td>
                                    <td><i class="fa fa-bars"></i></td>
                                </tr>
                                <tr style="height: 150px;">
                                    <td>
                                        <iframe width="100%" src="https://www.youtube.com/embed/JkRKxxLiDNI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </td>
                                    <td style="padding-left: 10px"><b>아직도 그대로</b><br>
                                        <small>가수명이다</small><br>
                                        <small>조회수 1천회,2020.12.18</small>
                                    </td>
                                    <td><i class="fa fa-bars"></i></td>
                                </tr>
                                <tr style="height: 150px;">
                                    <td>
                                        <iframe width="100%" src="https://www.youtube.com/embed/JkRKxxLiDNI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </td>
                                    <td style="padding-left: 10px"><b>아직도 그대로</b><br>
                                        <small>가수명이다</small><br>
                                        <small>조회수 1천회,2020.12.18</small>
                                    </td>
                                    <td><i class="fa fa-bars"></i></td>
                                </tr>
                                <tr style="height: 150px;">
                                    <td>
                                        <iframe width="100%" src="https://www.youtube.com/embed/JkRKxxLiDNI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </td>
                                    <td style="padding-left: 10px"><b>아직도 그대로</b><br>
                                        <small>가수명이다</small><br>
                                        <small>조회수 1천회,2020.12.18</small>
                                    </td>
                                    <td><i class="fa fa-bars"></i></td>
                                </tr>
                                <tr style="height: 150px;">
                                    <td>
                                        <iframe width="100%" src="https://www.youtube.com/embed/JkRKxxLiDNI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </td>
                                    <td style="padding-left: 10px"><b>아직도 그대로</b><br>
                                        <small>가수명이다</small><br>
                                        <small>조회수 1천회,2020.12.18</small>
                                    </td>
                                    <td><i class="fa fa-bars"></i></td>
                                </tr> <tr style="height: 150px;">
                                    <td>
                                        <iframe width="100%" src="https://www.youtube.com/embed/JkRKxxLiDNI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </td>
                                    <td style="padding-left: 10px"><b>아직도 그대로</b><br>
                                        <small>가수명이다</small><br>
                                        <small>조회수 1천회,2020.12.18</small>
                                    </td>
                                    <td><i class="fa fa-bars"></i></td>
                                </tr>
                                <tr style="height: 150px;">
                                    <td>
                                        <iframe width="100%" src="https://www.youtube.com/embed/JkRKxxLiDNI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </td>
                                    <td style="padding-left: 10px"><b>아직도 그대로</b><br>
                                        <small>가수명이다</small><br>
                                        <small>조회수 1천회,2020.12.18</small>
                                    </td>
                                    <td><i class="fa fa-bars"></i></td>
                                </tr>
                                <tr style="height: 150px;">
                                    <td>
                                        <iframe width="100%" src="https://www.youtube.com/embed/JkRKxxLiDNI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </td>
                                    <td style="padding-left: 10px"><b>아직도 그대로</b><br>
                                        <small>가수명이다</small><br>
                                        <small>조회수 1천회,2020.12.18</small>
                                    </td>
                                    <td><i class="fa fa-bars"></i></td>
                                </tr>
                                <tr style="height: 150px;">
                                    <td>
                                        <iframe width="100%" src="https://www.youtube.com/embed/JkRKxxLiDNI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </td>
                                    <td style="padding-left: 10px"><b>아직도 그대로</b><br>
                                        <small>가수명이다</small><br>
                                        <small>조회수 1천회,2020.12.18</small>
                                    </td>
                                    <td><i class="fa fa-bars"></i></td>
                                </tr>
                                <tr style="height: 150px;">
                                    <td>
                                        <iframe width="100%" src="https://www.youtube.com/embed/JkRKxxLiDNI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </td>
                                    <td style="padding-left: 10px"><b>아직도 그대로</b><br>
                                        <small>가수명이다</small><br>
                                        <small>조회수 1천회,2020.12.18</small>
                                    </td>
                                    <td><i class="fa fa-bars"></i></td>
                                </tr>
                                <tr style="height: 150px;">
                                    <td>
                                        <iframe width="100%" src="https://www.youtube.com/embed/JkRKxxLiDNI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </td>
                                    <td style="padding-left: 10px"><b>아직도 그대로</b><br>
                                        <small>가수명이다</small><br>
                                        <small>조회수 1천회,2020.12.18</small>
                                    </td>
                                    <td><i class="fa fa-bars"></i></td>
                                </tr>
                                <tr style="height: 150px;">
                                    <td>
                                        <iframe width="100%" src="https://www.youtube.com/embed/JkRKxxLiDNI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </td>
                                    <td style="padding-left: 10px"><b>아직도 그대로</b><br>
                                        <small>가수명이다</small><br>
                                        <small>조회수 1천회,2020.12.18</small>
                                    </td>
                                    <td><i class="fa fa-bars"></i></td>
                                </tr>
                                </tbody>

                            </table>
                        </div>
                    </div>
                    <hr class="hr">
                </div>
            </div>
            <!-- #/ container -->
        </div>
    </div>

    <jsp:include page="../main/footer.jsp"></jsp:include>
</div>

<script src="${pageContext.request.contextPath}../resources/plugins/common/common.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/custom.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/settings.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/gleek.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/styleSwitcher.js"></script>

</body>
</html>