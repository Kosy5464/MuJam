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
                            <form class="mt-5 mb-5 login-input" action="${pageContext.request.contextPath}/submitLogin" method="post">
                                <div class="form-group">
                                    <label class="radio-inline mr-3">
                                        <input type="radio" id="member" name="user" checked>&nbsp;&nbsp;<b>일반</b></label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <label class="radio-inline mr-3 ">
                                        <input type="radio"  id="musician" name="user">&nbsp;&nbsp;<b>뮤지션</b></label>
                                </div>
                                <input type="hidden" id="userOrSinger" name="userOrSinger" value=1>
                                <div class="form-group">
                                    <input type="text" name="userId" id="username" class="form-control" placeholder="UserID">
                                    <br>${msg1}
                                </div>
                                <div class="form-group">
                                    <input type="password" name="password" id="password" class="form-control" placeholder="Password">
                                    <br>${msg2}
                                </div>
                                <button class="btn login-form__btn submit w-100">Sign In</button>
                            </form>
                            <p class="mt-5 login-form__footer"> <a href="#">아이디 찾기</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">비밀번호 찾기</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/signUp">회원가입</a></p>
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
<script type="text/javascript">
    $('#member').click(function(){
        $('#userOrSinger').val(1);
    });
    $('#musician').click(function(){
        $('#userOrSinger').val(2);
    });
</script>
</html>