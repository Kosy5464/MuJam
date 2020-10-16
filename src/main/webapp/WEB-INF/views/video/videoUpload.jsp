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
<!-- Header -->
<!-- /////////////////////////////////////////Content -->
<div id="page-content">
    <br>
    <div class="container">
        <div id="main-content" class="col-md-12">
            <div id="upload_form">
                <form name="form1" id="videoUploadForm" method="post" action="/videoUploadFile" enctype="multipart/form-data">
                    <input type="hidden" id="singerId" name="singerId" value="${user.id}">
                    <h2>Upload your video</h2>
                    <div class="row">
                        <label class="col-sm-5">
                            <span>영상 업로드</span>
                            <div style="width: 100%; height:250px; margin-top:20px; background-color: white">
                                <video id="main-video" style="width:100%; height: 100%;" controls> //동영상 띄우는 부분
                                    <source type="video/mp4" />
                                </video>
                            </div>
                            <input type="file" id="video_upload" name="video_upload" accept="video/*" />
                        </label>
                        <div class="col-sm-7">
                            <!--여기에 썸네일 업로드 만들어주시면 됩니다!!!!!! 밑에는 복붙한 부분-->
                            <label id="video-demo-container">
                                <span>썸네일 이미지 설정 &nbsp;<i data-toggle="tooltip" class="far fa-question-circle"style="font-weight: bold"
                                                          title="step 1에서는 업로드한 영상에서 구간을 선택하여 썸네일로 설정할 이미지를 다운 받을 수 있습니다.&#10;step 2에서는 썸네일로 사용할 이미지를 업로드 합니다.">
                                </i></span>
                                <div class="row" style="margin-top:20px;">
                                    <div class="col-sm-3">
                                        <ul class="flex-tabs tab-list" style="width: 100%">
                                            <li class="active" title="업로드 영상에서 썸네일 이미지를 뽑아올 수 있는 부분 입니다."><a data-toggle="tab" href="#step1">Step 1</a></li>
                                            <li><a data-toggle="tab" title="썸네일 이미지를 첨부하는 부분 입니다." href="#step2">Step 2</a></li>
                                        </ul>
                                    </div>

                                    <div class="tab-content col-sm-9">
                                        <div id="step1" class="tab-pane fade in active">
                                            <canvas id="video-canvas" style="width: 90%;height:90%;  background-color: white;"></canvas>
                                            <div id="thumbnail-container"class="btn-group">
                                                <!--<input id="set-video-seconds" style = "color:white;background-color: #5e5e5e">-->
                                                <button id="set-video-seconds" class="btn btn-danger btn-sm">미리보기</button>
                                                <a id="get-thumbnail" class="btn btn-danger" href="#" >다운로드</a>
                                            </div>
                                        </div>
                                        <div id="step2" class="tab-pane fade">
                                            <div  style="width: 90%; height:230px; background-color: white">
                                                <img id="preview" width=100%>
                                            </div>
                                            <input type="file" name="thumbnail_upload" id="thumbnail_upload" accept="image/*">
                                        </div>
                                    </div>
                                </div>
                            </label>
                            <!--여기까지가 썸네일 부분-->
                        </div>
                    </div>
                    <br>

                    <div class="row">
                        <div class="col-sm-12">
                            <label>
                                <span>제목(필수 항목)</span>
                                <input type="text"  name="title" id="title" placeholder="제목(필수 항목)" required>
                            </label>
                            <label>
                                <span>영상 설명 :</span>
                                <textarea name="content" id="content" placeholder="영상 설명" style="resize:none;"></textarea>
                            </label>
                        </div>
                    </div>
                    <div class="row">
                        <label class="col-sm-3">
                            <span>장르1(필수 선택)</span>
                            <select name ="genre1" class="select" form="videoUploadForm">
                                <option selected>장르1 선택</option>
                                <option value="Balad">Balad</option>
                                <option value="HipHop">HipHop</option>
                                <option value="Jazz">Jazz</option>
                                <option value="Rock">Rock</option>
                            </select>
                        </label>
                        <label class="col-sm-3">
                            <span>장르2</span><br/>
                            <select name="genre2" class="select" form="videoUploadForm">
                                <option selected>장르2 선택</option>
                                <optgroup label="mood">
                                    <option value="기분 좋은 날">기분 좋은 날</option>
                                    <option value="불쾌한 날">불쾌한 날</option>
                                    <option value="우울한 날">우울한 날</option>
                                </optgroup>
                                <optgroup label="place">
                                    <option value="카페에서">카페에서</option>
                                    <option value="도서관에서">도서관에서</option>
                                    <option value="공원에서">공원에서</option>
                                </optgroup>
                            </select>
                        </label>
                    </div>
                    <!-- <label>
                         <span>장르1(필수 선택)</span><br/>
                         <div class="radio-inline">
                             <input type="radio" class="radio" id="balad" name="genre1">
                             <label class="control-label" for="balad">Balad</label>
                          </div>

                         <div class="radio-inline">
                             <input type="radio" class="radio" id="hiphop" name="genre1">
                             <label class="control-label" for="hiphop">HipHop</label>
                         </div>

                         <div class="radio-inline">
                             <input type="radio" class="radio" id="jazz" name="genre1">
                             <label class="control-label" for="jazz">Jazz</label>
                         </div>
                         <div class="radio-inline">
                             <input type="radio" class="radio" id="rock" name="genre1">
                             <label class="control-label" for="rock">Rock</label>
                         </div>
                     </label>
                     <br>-->

                    <input class="sendButton" type="submit" name="Submit" value="Submit">
                </form>
            </div>
        </div>
    </div>
</div>
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
