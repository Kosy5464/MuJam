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
<header id="page-top">
    <div class="wrap-header">
        <div class="container">
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="container">
                    <div class="row">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <h5><a class="page-scroll" href="${pageContext.request.contextPath}/login">로그인&nbsp;&nbsp;&nbsp;</a></h5>
                            </li>
                            <li>
                                <h5><a class="page-scroll" href="${pageContext.request.contextPath}/signUp">회원가입 &nbsp;&nbsp;&nbsp;</a></h5>
                            </li>
                        </ul>
                    </div>
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header page-scroll">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand page-scroll" href="${pageContext.request.contextPath}/main">MuJam&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
                        <ul class="nav navbar-nav">
                            <li>
                                <a class="page-scroll" href="${pageContext.request.contextPath}/main">NEW</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="${pageContext.request.contextPath}/single">HOT</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="${pageContext.request.contextPath}/gallery">Musician</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="${pageContext.request.contextPath}/contact">Backstage</a>
                            </li>
                            <li><a>|</a></li>
                            <li>
                                <a class="page-scroll" href="${pageContext.request.contextPath}contact">Follow</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="${pageContext.request.contextPath}/contact">Like</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="${pageContext.request.contextPath}/contact">PlayList</a>
                            </li>
                            <li>
                                <form class="form-inline d-flex justify-content-center md-form form-sm active-pink active-pink-2 mt-2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input class="form-control form-control-sm ml-3 w-75" type="text" placeholder="Search"
                                           aria-label="Search">
                                    <i class="fas fa-search" aria-hidden="true"></i>
                                </form>
                            </li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container-fluid -->
            </nav>

        </div>
    </div>
</header>
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
                                <form id="login-form" action="${pageContext.request.contextPath}/submitLogin" method="post" role="form" style="display: none;">
                                    <div class="form-group" style="text-align: left">
                                        <div class="radio-inline">
                                            <input type="radio" class="radio" id="member" name="user">
                                            <label class="control-label" for="member"style="color: black;font-weight: bold">일반회원</label>
                                        </div>

                                        <div class="radio-inline">
                                            <input type="radio" class="radio" id="musician" name="user">
                                            <label class="control-label" for="musician"style="color: black;font-weight: bold">뮤지션</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="userId" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
                                        <br>${msg1}
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
                                        <br>${msg2}
                                    </div>
                                    <div class="form-group text-center">
                                        <input type="checkbox" tabindex="3" class="" name="remember" id="remember">
                                        <label for="remember">Remember Me</label>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-6 col-sm-offset-3">
                                                <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="LOGIN">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="text-center">
                                                    <a href="" tabindex="5" class="forgot-password">Forgot Password?</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <form id="register-form" action="${pageContext.request.contextPath}/submitSignUp" method="post" role="form" style="display: block;">
                                    <div class="form-group col-sm-8">
                                        <input type="text" name="userId" id="userId" tabindex="1" class="form-control" placeholder="UserID" value="">
                                    </div>
                                    <div class="form-group col-sm-4">
                                        <input type="button" name="checkIDbtn" id="checkIDbtn" tabindex="1" class="form-control" value="중복확인">
                                    </div>
                                    <div id="idCheckMsg"></div>
                                    <div class="form-group col-sm-12">
                                        <input type="password" name="password" id="password2" tabindex="2" class="form-control" placeholder="Password">
                                    </div>
                                    <div class="form-group col-sm-12">
                                        <input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirm Password">
                                    </div>
                                    <div id="passwordCheckMsg"></div>

                                    <div class="form-group col-sm-8">
                                        <input type="text" name="nickname" id="nickname" tabindex="1" class="form-control" placeholder="nickname" value="">
                                    </div>
                                    <div class="form-group col-sm-4">
                                        <input type="button" name="checkNicknamebtn" id="checkNicknamebtn" tabindex="1" class="form-control" value="중복확인">
                                    </div>
                                    <div id="nicknameCheckMsg"></div>

                                    <div class="form-group col-sm-12">
                                        <input type="text" name="name" id="username2" tabindex="1" class="form-control" placeholder="Username" value="">
                                    </div>
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
        let userId = $('#userId').val();
        $.ajax({
            type:'POST',
            url: '${pageContext.request.contextPath}/idCheck',
            data:{userId : userId},
            success:function(data) {
                console.log(data + "data입니다.")
                if(userId == "" && data == '0') {
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

    $('#checkNicknamebtn').click(function () {
            console.log("hi1");
            let nickname = $('#nickname').val();
            $.ajax({
                type:'POST',
                url: '${pageContext.request.contextPath}/nicknameCheck',
                data:{nickname : nickname},
                success:function(data) {
                    console.log(data + "data입니다.")
                    if(nickname == "" && data == '0') {
                        $("#nicknameCheckMsg").css("color", "red");
                        $("#nicknameCheckMsg").text("닉네임을 입력해주세요.");
                    }else if (data == '0') {
                        $("#nicknameCheckMsg").css("color", "blue");
                        $("#nicknameCheckMsg").text("닉네임 사용 가능");
                    }else if(data == '1') {
                        $("#nicknameCheckMsg").css("color", "red");
                        $("#nicknameCheckMsg").text("이미 사용중인 닉네임입니다.");
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
        if($("#password2").val()!=$("#confirm-password").val()) {
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