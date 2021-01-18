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
    <style>
        /* 글 내용의 경계선 표시 */
        .content {
            border: 1px dotted #cecece;
        }

        /* 글 내용안에 있는 이미지의 크기 제한 */
        .content img {
            max-width: 100%;
        }

        /* 댓글에 관련된 css */
        .comments ul {
            padding: 0;
            margin: 0;
            list-style-type: none;
        }

        .comments ul li {
            border-top: 1px solid #888; /* li 의 윗쪽 경계선 */
        }

        .comments dt {
            margin-top: 5px;
        }

        .comments dd {
            margin-left: 26px;
        }

        .comments form textarea, .comments form button {
            float: left;
        }

        .comments li {
            clear: left;
        }

        .comments form textarea {
            width: 85%;
            height: 100px;
        }

        .comments form button {
            width: 15%;
            height: 100px;
        }

        /* 댓글에 댓글을 다는 폼과 수정폼을 일단 숨긴다. */
        .comment form {
            display: none;
        }

        .comment {
            position: relative;
        }

        .comment .reply_icon {
            width: 8px;
            height: 8px;
            position: absolute;
            top: 10px;
            left: 30px;
        }

        .comments .user-img {
            width: 20px;
            height: 20px;
            border-radius: 50%;
        }
    </style>
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
                        <iframe width="100%" height="538" src="${videoDto.storedLocation}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        <div class="card-body">
                            <div class="row">
                                <h2 class="col-sm-8">${videoDto.title}</h2>
                                <div class="col-sm-3">
                                    <div class="row">
                                        <div class="col">
                                            <h5 class="card-text">장르 1 : ${videoDto.genre1}</h5>
                                            <h5 class="card-text">장르 2 : ${videoDto.genre2}</h5>
                                        </div>
                                        <!--My PlayList 추가 버튼-->
                                        <button class="btn btn-outline-light btn-sm" id="playListButton">리스트 추가&nbsp;<i class="fa fa-list"></i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="card-text col-sm-2"><small class="text-muted">조회수 : ${videoDto.viewcount}</small></div>
                                <div class="col-sm-2"><button class="btn btn-danger p-0 mr-3" id="likeListButton" onclick="">&nbsp;좋아요&nbsp;<i class="fa fa-thumbs-up"></i>&nbsp;&nbsp;300&nbsp;</button></div>
                            </div><br>
                            <div class="media align-items-center mb-4">
                                <img class="mr-3" src="${pageContext.request.contextPath}../resources/${singerDto.profileImageStoredLocation}" width="50" height="50" alt="">
                                <div class="media-body">
                                    <h4 class="mb-0">${singerDto.singerName}</h4>&nbsp;&nbsp; &nbsp;&nbsp;
                                    <!--팔로우 버튼-->
                                    <button class="btn btn-outline-info btn-sm" id="followButton">팔로우</button>
                                </div>
                            </div>
                            <p class="card-text">${videoDto.content}</p>
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
<c:if test="${empty user && empty singer}">
    <script>
        const replyButton = document.getElementById("replyButton");
        replyButton.setAttribute("onclick", "location.href='${pageContext.request.contextPath}/login'; alert('로그인창으로 이동합니다.')");
    </script>
</c:if>
<c:if test="${empty user && empty singer}">
    <script>
        const replyButton2 = document.getElementById("replyButton2");
        replyButton2.setAttribute("onclick", "location.href='${pageContext.request.contextPath}/login'; alert('로그인창으로 이동합니다.')");
    </script>
</c:if>
<c:if test="${empty user && empty singer}">
    <script>
        const followButton = document.getElementById("followButton");
        followButton.setAttribute("onclick", "location.href='${pageContext.request.contextPath}/login'; alert('로그인창으로 이동합니다.')");

        const likeListButton = document.getElementById("likeListButton");
        likeListButton.setAttribute("onclick", "location.href='${pageContext.request.contextPath}/login'; alert('로그인창으로 이동합니다.')");

        const playListButton = document.getElementById("playListButton");
        playListButton.setAttribute("onclick", "location.href='${pageContext.request.contextPath}/login'; alert('로그인창으로 이동합니다.')");
    </script>
</c:if>
<c:if test="${follow == 0}">
    <script>
        $('#followButton').html('FOLLOW');
    </script>
</c:if>
<c:if test="${follow == 1}">
    <script>
        $('#followButton').html('FOLLOW 취소');
    </script>
</c:if>

<c:if test="${like == 0}">
    <script>
        $('#likeListButton').html('좋아요');
    </script>
</c:if>
<c:if test="${like == 1}">
    <script>
        $('#likeListButton').html('좋아요 취소');
    </script>
</c:if>

<c:if test="${play == 0}">
    <script>
        $('#playListButton').html('플레이리스트 추가');
    </script>
</c:if>
<c:if test="${play == 1}">
    <script>
        $('#playListButton').html('플레이리스트 제거');
    </script>
</c:if>

<c:if test="${not empty user}">
    <script type="text/javascript">
        $('#followButton').click(function () {
            let userId = ${user.id};
            let singerId = ${singerDto.id};
            if ($('#followButton').html() == 'FOLLOW') {
                $.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/userAddFollowing',
                    data: {userId: userId, singerId: singerId},
                    success: function (data) {
                        $('#followButton').html('FOLLOW 취소');
                    },
                    error: function (e) {
                        console.log('실패!');
                    }
                })
            } else {
                $.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/userRemoveFollowing',
                    data: {userId: userId, singerId: singerId},
                    success: function (data) {
                        $('#followButton').html('FOLLOW');
                    },
                    error: function (e) {
                        console.log('실패!');
                    }
                })
            }
        });

        $('#likeListButton').click(function () {
            let userId = ${user.id};
            let videoId = ${videoDto.id};
            if ($('#likeListButton').html() == '좋아요') {
                $.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/userAddLikeList',
                    data: {userId: userId, videoId: videoId},
                    success: function (data) {
                        $('#likeListButton').html('좋아요 취소');
                    },
                    error: function (e) {
                        console.log('실패!');
                    }
                })
            } else {
                $.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/userRemoveLikeList',
                    data: {userId: userId, videoId: videoId},
                    success: function (data) {
                        $('#likeListButton').html('좋아요');
                    },
                    error: function (e) {
                        console.log('실패!');
                    }
                })
            }
        });

        $('#playListButton').click(function () {
            let userId = ${user.id};
            let videoId = ${videoDto.id};
            if ($('#playListButton').html() == '플레이리스트 추가') {
                $.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/userAddPlaylist',
                    data: {userId: userId, videoId: videoId},
                    success: function (data) {
                        $('#playListButton').html('플레이리스트 제거');
                    },
                    error: function (e) {
                        console.log('실패!');
                    }
                })
            } else {
                $.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/userRemovePlaylist',
                    data: {userId: userId, videoId: videoId},
                    success: function (data) {
                        $('#playListButton').html('플레이리스트 추가');
                    },
                    error: function (e) {
                        console.log('실패!');
                    }
                })
            }
        });
    </script>
</c:if>

<c:if test="${not empty singer}">
    <script type="text/javascript">
        $('#followButton').click(function () {
            let userId = ${singer.id};
            let singerId = ${singerDto.id};
            if ($('#followButton').html() == 'FOLLOW') {
                $.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/singerAddFollowing',
                    data: {userId: userId, singerId: singerId},
                    success: function (data) {
                        $('#followButton').html('FOLLOW 취소');
                    },
                    error: function (e) {
                        console.log('실패!');
                    }
                })
            } else {
                $.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/singerRemoveFollowing',
                    data: {userId: userId, singerId: singerId},
                    success: function (data) {
                        $('#followButton').html('FOLLOW');
                    },
                    error: function (e) {
                        console.log('실패!');
                    }
                })
            }
        });

        $('#likeListButton').click(function () {
            let userId = ${singer.id};
            let videoId = ${videoDto.id};
            if ($('#likeListButton').html() == '좋아요') {
                $.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/singerAddLikeList',
                    data: {userId: userId, videoId: videoId},
                    success: function (data) {
                        $('#likeListButton').html('좋아요 취소');
                    },
                    error: function (e) {
                        console.log('실패!');
                    }
                })
            } else {
                $.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/singerRemoveLikeList',
                    data: {userId: userId, videoId: videoId},
                    success: function (data) {
                        $('#likeListButton').html('좋아요');
                    },
                    error: function (e) {
                        console.log('실패!');
                    }
                })
            }
        });

        $('#playListButton').click(function () {
            let userId = ${singer.id};
            let videoId = ${videoDto.id};
            if ($('#playListButton').html() == '플레이리스트 추가') {
                $.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/singerAddPlaylist',
                    data: {userId: userId, videoId: videoId},
                    success: function (data) {
                        $('#playListButton').html('플레이리스트 제거');
                    },
                    error: function (e) {
                        console.log('실패!');
                    }
                })
            } else {
                $.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/singerRemovePlaylist',
                    data: {userId: userId, videoId: videoId},
                    success: function (data) {
                        $('#playListButton').html('플레이리스트 추가');
                    },
                    error: function (e) {
                        console.log('실패!');
                    }
                })
            }
        });
    </script>
</c:if>
</html>