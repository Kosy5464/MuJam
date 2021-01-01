<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="h-100" lang="ko">

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
                            <hr class="hr3">
                            <form class="mt-5 mb-5">
                                <div class="form-group">
                                    <div>나는 내 노래를 알리고 싶은 <b style="color: yellow">싱어송라이터</b>다!</div><br>
                                    <button type="button"  class="btn register-form__btn w-100" onclick="location.href='${pageContext.request.contextPath}/singerSignUp'">뮤지션으로 가입하기</button>
                                </div>
                                <br>
                                <hr class="hr2">
                                <br>
                                <div class="form-group">
                                    <div>숨겨진 좋은 가수와 노래을 찾고 즐기고 싶은 <b style="color: yellow">누구나</b>!</div><br>
                                    <button type="button" class="btn register-form__btn w-100" onclick="location.href='${pageContext.request.contextPath}/userSignUp'">일반회원으로 가입하기</button>
                                </div>
                            </form>
                            <hr class="hr3">
                            <p class="mt-5 login-form__footer"> <a href="${pageContext.request.contextPath}/login">로그인</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">개인정보처리방침</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="page-register.html">고객센터</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




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





