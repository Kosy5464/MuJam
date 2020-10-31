<%--
  Created by IntelliJ IDEA.
  User: kijk6
  Date: 2020-10-06
  Time: 오전 10:47
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
    <!--다른 템플릿-->
    <link href="${pageContext.request.contextPath}../resources/css/main.css" rel="stylesheet"/>
    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}../resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Shadows+Into+Light' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}../resources/js/html5shiv.js"></script>
    <script src="${pageContext.request.contextPath}../resources/js/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<!-- Navigation -->
<jsp:include page="../main/header.jsp"></jsp:include>
<div id="page-content">
    <br>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-login">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-6">
                                <a href="#" id="login-form-link">Login</a>
                            </div>
                            <div class="col-xs-6">
                                <a href="#" class="active"  id="register-form-link">Register</a>
                            </div>
                        </div>
                        <hr>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <form id="register-form" action="${pageContext.request.contextPath}/submitSingerSignUp" method="post" role="form" style="display: block;" enctype="multipart/form-data">
                                    <div class="form-group col-sm-8">
                                        <input type="text" name="singerId" id="singerId" tabindex="1" class="form-control" placeholder="SingerID" value="">
                                    </div>
                                    <div class="form-group col-sm-4">
                                        <input type="button" name="checkIDbtn" id="checkIDbtn" tabindex="1" class="form-control" value="중복확인">
                                    </div>
                                    <div id="idCheckMsg"></div>
                                    <div class="form-group col-sm-12">
                                        <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
                                    </div>
                                    <div class="form-group col-sm-12">
                                        <input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirm Password">
                                    </div>
                                    <div id="passwordCheckMsg"></div>

                                    <div class="form-group col-sm-8">
                                        <input type="text" name="singerName" id="singerName" tabindex="1" class="form-control" placeholder="singerName" value="">
                                    </div>
                                    <div class="form-group col-sm-4">
                                        <input type="button" name="checkSingerNamebtn" id="checkSingerNamebtn" tabindex="1" class="form-control" value="중복확인">
                                    </div>
                                    <div id="singerNameCheckMsg"></div>

                                    <div class="form-group col-sm-12">
                                        <input type="email" name="emailAddress" id="email" tabindex="1" class="form-control" placeholder="Email Address" value="">
                                    </div>
                                    <div class="form-group col-sm-8">
                                        <input type="text" name="phoneNumber" id="phoneNum" tabindex="1" class="form-control" placeholder="010-1234-5678" value="">
                                    </div>
                                    <div class="form-group col-sm-4">
                                        <input type="button" name="checkPhoneNum" id="checkPhoneNum" tabindex="1" class="form-control" value="번호인증">
                                    </div>
                                    <div class="form-group col-sm-12">
                                        <input type="text" name="homeAddress" id="homeAddress" tabindex="1" class="form-control" placeholder="Home Address" value="">
                                    </div>
                                    </div>
                                    <div class="form-group col-sm-12">
                                        <div>프로필사진등록</div>
                                        <input type="file" name="profileImage" id="profileImage" accept="image/*" tabindex="1" class="form-control">
                                    </div>
                                    <div class="form-group col-sm-12">
                                        <input type="text" name="genre1" id="genre1" tabindex="1" class="form-control" placeholder="genre1" value="">
                                    </div>
                                    <div class="form-group col-sm-12">
                                        <input type="text" name="genre2" id="genre2" tabindex="1" class="form-control" placeholder="genre2" value="">
                                    </div>
                                    <div class="form-group col-sm-12">
                                        <input type="text" name="description" id="description" tabindex="1" class="form-control" placeholder="description" value="">
                                    </div>
                                    <div class="form-group col-sm-12">
                                        <input type="text" name="instagramAccount" id="instagramAccount" tabindex="1" class="form-control" placeholder="instagramAccount" value="">
                                    </div>
                                    <div class="form-group col-sm-12">
                                        <input type="text" name="youtubeChannel" id="youtubeChannel" tabindex="1" class="form-control" placeholder="youtubeChannel" value="">
                                    </div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-6 col-sm-offset-3">
                                                <input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Register Now">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
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

<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}../resources/js/bootstrap.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="${pageContext.request.contextPath}../resources/js/agency.js"></script>

<!-- Plugin JavaScript -->
<script src="${pageContext.request.contextPath}../resources/js/jquery.easing.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/classie.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/cbpAnimatedHeader.js"></script>

<!--로그인, 회원가입 관련 -->
<script src="${pageContext.request.contextPath}../resources/js/aboutSign.js"></script>

<!--다른 템플릿-->
<script src="${pageContext.request.contextPath}../resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/jquery.scrolly.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/skel.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/util.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/main.js"></script>
</body>

<script type="text/javascript">
    $('#checkIDbtn').click(function () {
        console.log("hi1");
        let singerId = $('#singerId').val();
        console.log(singerId);
        $.ajax({
            type:'POST',
            url: '${pageContext.request.contextPath}/singerIdCheck',
            data:{singerId : singerId},
            success:function(data) {
                console.log(data + "data입니다.")
                if(singerId == "" && data == '0') {
                    $("#idCheckMsg").css("color", "red");
                    $("#idCheckMsg").text("아이디를 입력해주세요.");
                }else if (data == '0') {
                    $("#idCheckMsg").css("color", "blue");
                    $("#idCheckMsg").text("아이디 사용 가능");
                }else if(data == '1') {
                    $("#idCheckMsg").css("color", "red");
                    $("#idCheckMsg").text("이미 사용중인 아이디입니다.");
                }
            },
            error:function(e) {
                error = e;
                console.log(e);
                console.log("실패");
            }
        })
    });

    $('#checkSingerNamebtn').click(function () {
            console.log("hi1");
            let singerName = $('#singerName').val();
            $.ajax({
                type:'POST',
                url: '${pageContext.request.contextPath}/singerNameCheck',
                data:{singerName : singerName},
                success:function(data) {
                    console.log(data + "data입니다.")
                    if(singerName == "" && data == '0') {
                        $("#singerNameCheckMsg").css("color", "red");
                        $("#singerNameCheckMsg").text("가수명을 입력해주세요.");
                    }else if (data == '0') {
                        $("#singerNameCheckMsg").css("color", "blue");
                        $("#singerNameCheckMsg").text("가수명 사용 가능");
                    }else if(data == '1') {
                        $("#singerNameCheckMsg").css("color", "red");
                        $("#singerNameCheckMsg").text("이미 사용중인 가수명입니다.");
                    }
                },
                error:function(e) {
                    error = e;
                    console.log(e);
                    console.log("실패");
                }
            })
        });
    $("#confirm-password").blur(function () {
        if($("#password").val()!=$("#confirm-password").val()) {
            if($("#confirm-password").val()!="") {
                $("#passwordCheckMsg").text("비밀번호가 일치하지 않습니다.");
                $("#passwordCheckMsg").css("color", "red");
            } else {
                $("#passwordCheckMsg").text("");
            }
        }
        else{
            if($("#confirm-password").val()!=""){
                $("#passwordCheckMsg").text("비밀번호가 일치합니다.");
                $("#passwordCheckMsg").css("color", "blue");
            }
            else{
                $("#passwordCheckMsg").text("");
            }
        }
    })
</script>
</html>
