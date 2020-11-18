<%@ page import="com.sample.video.domain.entity.User" %>
<%@ page import="com.sample.video.dto.UserDto" %><%--
  Created by IntelliJ IDEA.
  User: chlee
  Date: 2020-09-29
  Time: 오전 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <title>MuJam</title>

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

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}../resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}../resources/css/style2.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}../resources/css/main.css" rel="stylesheet"/>

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}../resources/font-awesome/css/font-awesome.min.css" rel="stylesheet"
          type="text/css">
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
                    <iframe width="560" height="315"
                            src="${pageContext.request.contextPath}../resources/${videoDto.storedLocation}"
                            frameborder="0" allowfullscreen></iframe>
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
                <%--                <form name="form2" id="replyUploadForm" method="post" action="/replyUpload"--%>
                <%--                      enctype="multipart/form-data">--%>
                <%--                    <label>--%>
                <%--                        <span>댓글</span>--%>
                <%--                        <textarea name="comments" id="comments" placeholder="댓글을 입력하세요" style="resize:none;"></textarea>--%>
                <%--                    </label>--%>
                <%--                    <input type="hidden" id="videoId" name="videoId" value="${videoDto.id}">--%>
                <%--                    <c:catch>--%>
                <%--                        <c:choose>--%>
                <%--                            <c:when test="${empty user && empty singer}">--%>
                <%--                                <input type="button" id="replyButton" value="Submit"></input>--%>
                <%--                            </c:when>--%>
                <%--                            <c:otherwise>--%>
                <%--                                <input id="replyButton" class="sendButton" type="submit" name="Submit" value="Submit">--%>
                <%--                            </c:otherwise>--%>
                <%--                        </c:choose>--%>
                <%--                    </c:catch>--%>
                <%--                </form>--%>
                <div>
                    <!-- 원글에 댓글을 작성할 수 있는 폼 -->
                    <div class="comment_form">
                        <h2>댓글</h2>
                        <form name="form3" id="replyUploadForm" action="/replyUpload" method="post"
                              enctype="multipart/form-data">
                            <!-- 댓글의 그룹번호는 원글의 글번호가 된다. -->
                            <input type="hidden" id="videoId" name="videoId" value="${videoDto.id}"/>
                            <!-- 댓글의 대상자는 원글의 작성자가 된다. -->
                            <textarea rows="content" name="comments" id="comments" placeholder="댓글을 입력하세요"></textarea>
                            <c:catch>
                                <c:choose>
                                    <c:when test="${empty user && empty singer}">
                                        <input type="button" id="replyButton" value="Submit"></input>
                                    </c:when>
                                    <c:otherwise>
                                        <input id="replyButton" class="sendButton" type="submit" name="Submit"
                                               value="Submit">
                                    </c:otherwise>
                                </c:choose>
                            </c:catch>
                        </form>
                    </div>
                </div>
                <%--                                <div id="disqus_thread"></div>--%>
                <%--                                <script>--%>

                <%--                                    /**--%>
                <%--                                     *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.--%>
                <%--                                     *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/--%>
                <%--                                    /*--%>
                <%--                                    var disqus_config = function () {--%>
                <%--                                    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable--%>
                <%--                                    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable--%>
                <%--                                    };--%>
                <%--                                    */--%>
                <%--                                    (function() { // DON'T EDIT BELOW THIS LINE--%>
                <%--                                        var d = document, s = d.createElement('script');--%>
                <%--                                        s.src = 'https://web1-ctctwodayx.disqus.com/embed.js';--%>
                <%--                                        s.setAttribute('data-timestamp', +new Date());--%>
                <%--                                        (d.head || d.body).appendChild(s);--%>
                <%--                                    })();--%>
                <%--                                </script>--%>
                <%--                                <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>--%>


                <br>
                <


                <div id="main-content">
                    <div class="col" style="overflow-y: auto;  height: 100%;">
                        <table>
                            <tbody>
                            <tr>
                                <c:forEach var="reply" items="${replyDtoList}" varStatus="status">
                                <c:if test="${reply.groupId == 0 && reply.classNo == 0}">
                                <td><span><h2>${reply.comment}</h2></span></td>
                                <td>
                                    <c:choose>
                                    <c:when test="${reply.userId == userDtoList[status.index].id}">
                                    <span><h2>작성자 : ${userDtoList[status.index].nickname}</h2></span>
                                <td><img width="100" height="105"
                                         src="${pageContext.request.contextPath}../resources/${userDtoList[status.index].profileImageStoredLocation}"
                                         frameborder="0" allowfullscreen></img></td>
                                </c:when>
                                <c:when test="${reply.singerId == singerDtoList[status.index].id}">
                                    <span><h2>작성자 : ${singerDtoList[status.index].singerName}</h2></span>
                                    <img width="100" height="105"
                                         src="${pageContext.request.contextPath}../resources/${singerDtoList[status.index].profileImageStoredLocation}"
                                         frameborder="0" allowfullscreen></img></td>
                                </c:when>
                                </c:choose>
                                </td>
                                <td>

                                        <%--                                <button id="rereply" onclick = "dis()" name="rereply" value="rereply">대댓글달기</button>--%>
                                    <form name="form3" id="replyUploadForm2" action="/replyUpload2" method="post"
                                          enctype="multipart/form-data">
                                        <!-- 댓글의 그룹번호는 원글의 글번호가 된다. -->
                                        <input type="hidden" id="videoId" name="videoId" value="${videoDto.id}"/>
                                        <input type="hidden" id="groupId" name="groupId" value="${reply.replyId}"/>
                                        <!-- 댓글의 대상자는 원글의 작성자가 된다. -->
                                        <textarea rows="content" name="comments" id="comments"
                                                  placeholder="댓글을 입력하세요"></textarea>


                                        <c:catch>
                                            <c:choose>
                                                <c:when test="${empty user && empty singer}">
                                                    <input type="button" id="replyButton2" value="Submit"></input>
                                                </c:when>
                                                <c:otherwise>
                                                    <input id="replyButton" class="sendButton" type="submit"
                                                           name="Submit"
                                                           value="Submit">
                                                </c:otherwise>
                                            </c:choose>
                                        </c:catch>
                                    </form>
                                    </c:if>

                                </td>
                            </tr>
                            <tr>
                                <c:forEach var="replys" items="${replyDtoList}" varStatus="status">
                                <c:if test="${replys.groupId == reply.replyId}">
                                <td><span><h2 style="color : black">${replys.comment}</h2></span></td>
                                <td>
                                    <c:choose>
                                    <c:when test="${reply.userId == userDtoList[status.index].id}">
                                    <span><h2
                                            style="color : black">작성자 : ${userDtoList[status.index].nickname}</h2></span>
                                <td><img width="100" height="105"
                                         src="${pageContext.request.contextPath}../resources/${userDtoList[status.index].profileImageStoredLocation}"
                                         frameborder="0" allowfullscreen></img></td>
                                </c:when>
                                <c:when test="${reply.singerId == singerDtoList[status.index].id}">
                                <span><h2
                                        style="color : black">작성자 : ${singerDtoList[status.index].singerName}</h2></span>
                                <td><img width="100" height="105"
                                         src="${pageContext.request.contextPath}../resources/${singerDtoList[status.index].profileImageStoredLocation}"
                                         frameborder="0" allowfullscreen></img></td>
                                </c:when>
                                </c:choose>
                                </td>
                                </c:if>
                                </c:forEach>
                            </tbody>
                            </tr>

                            </c:forEach>
                        </table>

                    </div>
                </div>
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

<script>

    function dis() {
        if ($('#replyUploadForm2').css('display') == 'none') {
            $('#replyUploadForm2').show();
        } else {
            $('#replyUploadForm2').hide();
        }
    }
</script>
</body>
<c:if test="${empty user && empty singer}">
    <script>
        const replyButton = document.getElementById("replyButton");
        replyButton.setAttribute("onclick", "location.href='${pageContext.request.contextPath}/login'; alert('로그인창으로 이동합니다.')");
    </script>
</c:if>
<c:if test="${empty user && empty singer}">
    <script>
        const replyButton = document.getElementById("replyButton2");
        replyButton.setAttribute("onclick", "location.href='${pageContext.request.contextPath}/login'; alert('로그인창으로 이동합니다.')");
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