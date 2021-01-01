<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html class="h-100" lang="ko">

<head>
    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>MuJaM</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}../resources/images/logo_M.png">
    <!-- Custom Stylesheet -->
    <link href="${pageContext.request.contextPath}../resources/css/style.css" rel="stylesheet">

</head>
<body class="h-100">

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





<div class="login-form-bg h-100">
    <div class="container h-100">
        <div class="row justify-content-center h-100">
            <div class="col-xl-6">
                <div class="form-input-content">
                    <div class="card login-form mb-0">
                        <div class="card-body pt-5" style="text-align: center">
                            <a href="${pageContext.request.contextPath}/main"><img src="${pageContext.request.contextPath}../resources/images/logo_mujam.png" width="300" alt=""></a>
                            <form class="mt-5 mb-5 login-input" id="singerSignUpForm" action="${pageContext.request.contextPath}/submitSingerSignUp" method="post" enctype="multipart/form-data">
                                <div class="form-group row">
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" placeholder="아이디" id="singerId" name="singerId">
                                    </div>
                                    <button type="button" name="checkIDbtn" id="checkIDbtn" class="btn mb-1 btn-rounded btn-outline-primary" >중복확인</button>
                                </div>
                                <div id="idCheckMsg"></div>
                                <div class="form-group">
                                    <input type="password" class="form-control" id="pw1" name="password" placeholder="비밀번호">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control"  id="pw2" placeholder="비밀번호 확인">
                                    <div id="passwordCheckMsg"></div>
                                </div>
                                <div class="form-group">
                                    <p style="float: left">프로필 이미지 설정</p><br>
                                    <div id="image_container"></div>
                                    <input type="file" id="image" name="image" style="float: left" accept="image/*" onchange="setThumbnail(event);"/>

                                    <script>
                                        function setThumbnail(event) {
                                            var reader = new FileReader();
                                            reader.onload = function(event) {
                                                var img = document.createElement("img");
                                                img.setAttribute("width","200px");
                                                img.setAttribute("height","200px");
                                                img.setAttribute("src", event.target.result);
                                                document.querySelector("div#image_container").appendChild(img);
                                            };

                                            reader.readAsDataURL(event.target.files[0]);
                                        }
                                    </script>
                                </div>
                                <input type="hidden" name="imageCheck" id="imageCheck" value=2>
                                <br>
                                <div class="form-group">
                                    <input type="text" id="name" name="name" class="form-control col-sm-5" placeholder="사용자 이름">
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" id="singerName" name="singerName" placeholder="닉네임"></div>
                                    <button type="button" class="btn mb-1 btn-rounded btn-outline-primary" name="checkNicknamebtn" id="checkNicknamebtn">중복확인</button>
                                    <div id="nicknameCheckMsg"></div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" name="phoneNumber" id="phoneNumber" placeholder="010-1234-5678">
                                    </div>
                                    <button type="button" class="btn mb-1 btn-rounded btn-danger" >휴대폰 인증</button>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" name="emailAddress" id="emailAddress" placeholder="이메일 주소">
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" name="instagramAccount" id="instagramAccount" placeholder="instagram 계정">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" name="youtubeChannel" id="youtubeChannel" placeholder="youtube URL">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control h-150px" form="singerSignUpForm" name="description" id="description" rows="4" placeholder="자기소개"></textarea>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <select id="genre" name="genre" form="singerSignUpForm" class="form-control">
                                            <option selected="selected">* Genre(필수)</option>
                                            <option>Balad</option>
                                            <option>Jazz</option>
                                            <option>Acoustic</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <select id="concept" name="concept" form="singerSignUpForm" class="form-control">
                                            <option selected="selected">* Concept(선택)</option>
                                            <option>신나는</option>
                                            <option>울적한</option>
                                            <option>잔잔한</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="homeAddress" id="homeAddress"  placeholder="집 주소(선택)">
                                </div>

                                <button class="btn login-form__btn submit w-100">Sign Up</button>
                            </form>
                            <p class="mt-5 login-form__footer"> <a href="${pageContext.request.contextPath}/signUp">뒤로가기</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/login">로그인</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $('#checkIDbtn').click(function () {
        console.log("hi1");
        let userId = $('#singerId').val();
        $.ajax({
            type:'POST',
            url: '${pageContext.request.contextPath}/idCheck',
            data:{userId : userId},
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

    $('#checkNicknamebtn').click(function () {
            console.log("hi1");
            console.log($('#singerName').val());
            let nickname = $('#singerName').val();
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

    $("#pw2").blur(function () {
        if($("#pw1").val()!=$("#pw2").val()) {
            if($("#pw2").val()!="") {
                $("#passwordCheckMsg").text("비밀번호가 일치하지 않습니다.");
                $("#passwordCheckMsg").css("color", "red");
            } else {
                $("#passwordCheckMsg").text("");
            }
        }
        else{
            if($("#pw2").val()!=""){
                $("#passwordCheckMsg").text("비밀번호가 일치합니다.");
                $("#passwordCheckMsg").css("color", "blue");
            }
            else{
                $("#passwordCheckMsg").text("");
            }
        }
    })
    $("#defaultImage").click(function(){
        $("#profileImage").hide();
        $("#imageCheck").val(1);
    })
    $("#getImage").click(function(){
        $("#profileImage").show();
        $("#imageCheck").val(2);
    })

</script>



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





