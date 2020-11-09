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
                <h2>영상 ${videoDto.title}</h2>
                <p>가수이름 ${singerDto.singerName}</p>
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
                            <h3>가수 ${singerDto.singerName}</h3>
                            <p>장르 1 ${videoDto.genre1}</p>
                            <p>장르 2 ${videoDto.genre2}</p>
                        </div>
                    </div>
            </div>
            <p>내용 ${videoDto.content}</p>
            <button type="button" id="followButton" onclick=""></button>
            <button type="button" id="playListButton" onclick=""></button>
            <button type="button" id="likeListButton" onclick=""></button>
            </div>
        </div>
    </section>
</div>

<!-- /////////////////////////////////////////Footer -->

<jsp:include page="../main/footer.jsp"></jsp:include>
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
    <c:if test="${empty user && empty singer}">
        <script>
            const followButton = document.getElementById("followButton");
            followButton.setAttribute("onclick","location.href='${pageContext.request.contextPath}/login'; alert('로그인창으로 이동합니다.')");

            const likeListButton = document.getElementById("likeListButton");
            likeListButton.setAttribute("onclick","location.href='${pageContext.request.contextPath}/login'; alert('로그인창으로 이동합니다.')");

            const playListButton = document.getElementById("playListButton");
            playListButton.setAttribute("onclick","location.href='${pageContext.request.contextPath}/login'; alert('로그인창으로 이동합니다.')");
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
            $('#followButton').click(function(){
                let userId = ${user.id};
                let singerId = ${singerDto.id};
                if($('#followButton').html() == 'FOLLOW'){
                    $.ajax({
                        type:'POST',
                        url:'${pageContext.request.contextPath}/userAddFollowing',
                        data: {userId : userId, singerId : singerId},
                        success:function(data){
                            $('#followButton').html('FOLLOW 취소');
                        },
                        error:function(e){
                            console.log('실패!');
                        }
                    })
                }
                else{
                    $.ajax({
                        type:'POST',
                        url:'${pageContext.request.contextPath}/userRemoveFollowing',
                        data: {userId : userId, singerId : singerId},
                        success:function(data){
                            $('#followButton').html('FOLLOW');
                        },
                        error:function(e){
                            console.log('실패!');
                        }
                    })
                }
            });

            $('#likeListButton').click(function(){
                let userId = ${user.id};
                let videoId = ${videoDto.id};
                if($('#likeListButton').html() == '좋아요'){
                    $.ajax({
                        type:'POST',
                        url:'${pageContext.request.contextPath}/userAddLikeList',
                        data: {userId : userId, videoId : videoId},
                        success:function(data){
                            $('#likeListButton').html('좋아요 취소');
                        },
                        error:function(e){
                            console.log('실패!');
                        }
                    })
                }
                else{
                    $.ajax({
                        type:'POST',
                        url:'${pageContext.request.contextPath}/userRemoveLikeList',
                        data: {userId : userId, videoId : videoId},
                        success:function(data){
                            $('#likeListButton').html('좋아요');
                        },
                        error:function(e){
                            console.log('실패!');
                        }
                    })
                }
            });

            $('#playListButton').click(function(){
                let userId = ${user.id};
                let videoId = ${videoDto.id};
                if($('#playListButton').html() == '플레이리스트 추가'){
                    $.ajax({
                        type:'POST',
                        url:'${pageContext.request.contextPath}/userAddPlaylist',
                        data: {userId : userId, videoId : videoId},
                        success:function(data){
                            $('#playListButton').html('플레이리스트 제거');
                        },
                        error:function(e){
                            console.log('실패!');
                        }
                    })
                }
                else{
                    $.ajax({
                        type:'POST',
                        url:'${pageContext.request.contextPath}/userRemovePlaylist',
                        data: {userId : userId,videoId : videoId},
                        success:function(data){
                            $('#playListButton').html('플레이리스트 추가');
                        },
                        error:function(e){
                            console.log('실패!');
                        }
                    })
                }
            });
        </script>
    </c:if>

    <c:if test="${not empty singer}">
        <script type="text/javascript">
            $('#followButton').click(function(){
                let userId = ${singer.id};
                let singerId = ${singerDto.id};
                if($('#followButton').html() == 'FOLLOW'){
                    $.ajax({
                        type:'POST',
                        url:'${pageContext.request.contextPath}/singerAddFollowing',
                        data: {userId : userId, singerId : singerId},
                        success:function(data){
                            $('#followButton').html('FOLLOW 취소');
                        },
                        error:function(e){
                            console.log('실패!');
                        }
                    })
                }
                else{
                    $.ajax({
                        type:'POST',
                        url:'${pageContext.request.contextPath}/singerRemoveFollowing',
                        data: {userId : userId, singerId : singerId},
                        success:function(data){
                            $('#followButton').html('FOLLOW');
                        },
                        error:function(e){
                            console.log('실패!');
                        }
                    })
                }
            });

            $('#likeListButton').click(function(){
                let userId = ${singer.id};
                let videoId = ${videoDto.id};
                if($('#likeListButton').html() == '좋아요'){
                    $.ajax({
                        type:'POST',
                        url:'${pageContext.request.contextPath}/singerAddLikeList',
                        data: {userId : userId, videoId : videoId},
                        success:function(data){
                            $('#likeListButton').html('좋아요 취소');
                        },
                        error:function(e){
                            console.log('실패!');
                        }
                    })
                }
                else{
                    $.ajax({
                        type:'POST',
                        url:'${pageContext.request.contextPath}/singerRemoveLikeList',
                        data: {userId : userId, videoId : videoId},
                        success:function(data){
                            $('#likeListButton').html('좋아요');
                        },
                        error:function(e){
                            console.log('실패!');
                        }
                    })
                }
            });

            $('#playListButton').click(function(){
                let userId = ${singer.id};
                let videoId = ${videoDto.id};
                if($('#playListButton').html() == '플레이리스트 추가'){
                    $.ajax({
                        type:'POST',
                        url:'${pageContext.request.contextPath}/singerAddPlaylist',
                        data: {userId : userId, videoId : videoId},
                        success:function(data){
                            $('#playListButton').html('플레이리스트 제거');
                        },
                        error:function(e){
                            console.log('실패!');
                        }
                    })
                }
                else{
                    $.ajax({
                        type:'POST',
                        url:'${pageContext.request.contextPath}/singerRemovePlaylist',
                        data: {userId : userId, videoId : videoId},
                        success:function(data){
                            $('#playListButton').html('플레이리스트 추가');
                        },
                        error:function(e){
                            console.log('실패!');
                        }
                    })
                }
            });
        </script>
    </c:if>
</html>