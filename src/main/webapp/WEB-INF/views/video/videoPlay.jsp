<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>MuJaM</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}../resources/images/logo_M.png">
    <!-- Custom Stylesheet -->
    <link href="${pageContext.request.contextPath}../resources/css/style.css" rel="stylesheet">
</head>
<!--*******************
       Preloader start
   ********************-->
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
<!--**********************************
    Main wrapper start
***********************************-->
<div id="main-wrapper">
    <jsp:include page="../main/header.jsp"></jsp:include>
    <!--**********************************
        Content body start
    ***********************************-->
    <div class="content-body">
        <!-- row -->

        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-xl-12">

                    <div class="card">
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
                                <img class="mr-3" src="${pageContext.request.contextPath}../resources/images/avatar/11.png" width="50" height="50" alt="">
                                <div class="media-body">
                                    <h4 class="mb-0">젤리피쉬 뮤직</h4>
                                </div>
                            </div>
                            <p class="card-text">다가오는 크리스마스에 여러분들에게 좋은 노래를 들려드리고 싶어. 기획한 곡입니다.<br>
                                많은 훌륭한 가수들이 열심히 참여한 곡이니 잘 들어주세요. 박효신, 서인국, 성시경, 빅스, 엘렐레 엘안ㅇㄴ러ㄴ아ㅣ런ㅇ리ㅓㄴㄹ이넝ㄹㄴㅇ러ㅣㅇㄹㅇㄹ
                                <br> 그럼 모두들 미리 메리크리스마스~
                            </p>
                        </div>
                        <hr class="hr">
                        <div class="card-body">
                            <div class="media media-reply">
                                <img class="mr-3 circle-rounded" src="${pageContext.request.contextPath}../resources/images/avatar/2.jpg" width="50" height="50" alt="Generic placeholder image">
                                <div class="media-body">
                                    <h5 class="mb-sm-0">핫도그</h5><br>
                                    <div class="row">
                                        <div class="col-sm-11">
                                            <textarea class="form-control" name="textarea" cols="30" rows="2" placeholder="댓글 입력하기.."></textarea>
                                        </div>
                                        <div class="col-sm-1">
                                            <button class="btn btn-primary">Send</button>
                                        </div>
                                    </div>
                                </div>
                            </div><br>
                            <div class="media media-reply">
                                <img class="mr-3 circle-rounded" src="${pageContext.request.contextPath}../resources/images/avatar/2.jpg" width="50" height="50" alt="Generic placeholder image">
                                <div class="media-body">
                                    <div class="d-sm-flex justify-content-between mb-2">
                                        <h5 class="mb-sm-0">핫도그<small class="text-muted ml-3">about 3 days ago</small></h5>
                                        <div class="media-reply__link">
                                            <button class="btn btn-transparent p-0 mr-3"><i class="fa fa-thumbs-up"></i></button>
                                            <button class="btn btn-transparent p-0 mr-3"><i class="fa fa-thumbs-down"></i></button>
                                            <button class="btn btn-transparent text-dark font-weight-bold p-0 ml-2">답글</button>
                                        </div>
                                    </div>

                                    <p>노래가 너무 좋은거 같아요!</p>


                                    <div class="media mt-3">
                                        <img class="mr-3 circle-rounded circle-rounded" src="${pageContext.request.contextPath}../resources/images/avatar/4.jpg" width="50" height="50" alt="Generic placeholder image">
                                        <div class="media-body">
                                            <div class="d-sm-flex justify-content-between mb-2">
                                                <h5 class="mb-sm-0">김케찹<small class="text-muted ml-3">about 3 days ago</small></h5>
                                                <div class="media-reply__link">
                                                    <button class="btn btn-transparent p-0 mr-3"><i class="fa fa-thumbs-up"></i></button>
                                                    <button class="btn btn-transparent p-0 mr-3"><i class="fa fa-thumbs-down"></i></button>
                                                    <button class="btn btn-transparent p-0 ml-3 font-weight-bold">답글</button>
                                                </div>
                                            </div>
                                            <p>맞아요, 노래 너무너무 좋아용~!</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="media media-reply">
                                <img class="mr-3 circle-rounded" src="${pageContext.request.contextPath}../resources/images/avatar/3.jpg" width="50" height="50" alt="Generic placeholder image">
                                <div class="media-body">
                                    <div class="d-sm-flex justify-content-between mb-2">
                                        <h5 class="mb-sm-0">그린이<small class="text-muted ml-3">about 3 days ago</small></h5>
                                        <div class="media-reply__link">
                                            <button class="btn btn-transparent p-0 mr-3"><i class="fa fa-thumbs-up"></i></button>
                                            <button class="btn btn-transparent p-0 mr-3"><i class="fa fa-thumbs-down"></i></button>
                                            <button class="btn btn-transparent p-0 ml-3 font-weight-bold">답글</button>
                                        </div>
                                    </div>

                                    <p>친구한테 추천해줘야겠어요~! 잘 듣고 갑니당!</p>
                                </div>
                            </div>

                            <div class="media media-reply">
                                <img class="mr-3 circle-rounded" src="${pageContext.request.contextPath}../resources/images/avatar/6.jpg" width="50" height="50" alt="Generic placeholder image">
                                <div class="media-body">
                                    <div class="d-sm-flex justify-content-between mb-2">
                                        <h5 class="mb-sm-0">박산타<small class="text-muted ml-3">about 3 days ago</small></h5>
                                        <div class="media-reply__link">
                                            <button class="btn btn-transparent p-0 mr-3"><i class="fa fa-thumbs-up"></i></button>
                                            <button class="btn btn-transparent p-0 mr-3"><i class="fa fa-thumbs-down"></i></button>
                                            <button class="btn btn-transparent p-0 ml-3 font-weight-bold">답글</button>
                                        </div>
                                    </div>

                                    <p>썰매 운전할 때 듣기 좋겠어요. 좋아요 꾹!</p>
                                </div>
                            </div>
                        </div>
                        <hr class="hr"><br>
                        <h3 style="text-align: center;">같은 Genre 추천 영상</h3>
                        <br>
                        <div class="card-deck">
                            <div class="card">
                                <iframe width="auto" height="250" src="https://www.youtube.com/embed/nPlNf7bJfXY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                <div class="card-body">
                                    <h5 class="card-title">크리스마스 캐롤 - 모음집</h5>
                                    <p class="card-text"></p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">Last updated 3 mins ago</small>
                                </div>
                            </div>
                            <div class="card">
                                <iframe width="auto" height="250" src="https://www.youtube.com/embed/nPlNf7bJfXY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                <div class="card-body">
                                    <h5 class="card-title">크리스마스 캐롤 - 모음집</h5>
                                    <p class="card-text"></p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">Last updated 3 mins ago</small>
                                </div>
                            </div>
                            <div class="card">
                                <iframe width="auto" height="250" src="https://www.youtube.com/embed/nPlNf7bJfXY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                <div class="card-body">
                                    <h5 class="card-title">크리스마스 캐롤 - 모음집</h5>
                                    <p class="card-text"></p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">Last updated 3 mins ago</small>
                                </div>
                            </div>
                        </div><br>
                    </div>
                </div>
            </div>
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