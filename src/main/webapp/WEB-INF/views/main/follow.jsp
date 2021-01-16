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

    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}../resources/images/logo_M.png">
    <!-- Custom Stylesheet -->
    <link href="${pageContext.request.contextPath}../resources/css/style.css" rel="stylesheet">

</head>

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

        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">Dashboard</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">Home</a></li>
                </ol>
            </div>
        </div>
        <!-- row -->
        <div class="row page-titles"><h1>FOLLOW</h1></div><hr class="hr1"/>
        <div class="container-fluid">
            <div  class="follow_row profileScroll">
                <div class="profile-header-img">
                    <a  href="">
                        <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/profile/profile.png"/>
                    </a>
                    <!-- badge -->
                    <div class="rank-label-container">
                        <span class="label label-default rank-label">건우 gunwoo</span>
                        <div style="padding-top:5px; font-size:small">힙합, 재즈</div>
                    </div>
                </div>
                <div class="profile-header-img">
                    <a  href="">
                        <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/profile/2.jpg" />
                    </a>
                    <!-- badge -->
                    <div class="rank-label-container">
                        <span class="label label-default rank-label">소울킹(SoulKing)</span>
                        <div style="padding-top:5px; font-size:small">R&B, 발라드</div>
                    </div>
                </div>
                <div class="profile-header-img">
                    <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/profile/3.jpg" />
                    <!-- badge -->
                    <div class="rank-label-container">
                        <span class="label label-default rank-label">Nokksi</span>
                        <div style="padding-top:5px; font-size:small">어쿠스틱</div>
                    </div>
                </div>
                <div class="profile-header-img">
                    <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/profile/4.jpg" />
                    <!-- badge -->
                    <div class="rank-label-container">
                        <span class="label label-default rank-label">7raum</span>
                        <div style="padding-top:5px; font-size:small">동요, 발라드, 재즈</div>
                    </div>
                </div>
                <div class="profile-header-img">
                    <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/profile/5.jpg"  />
                    <!-- badge -->
                    <div class="rank-label-container">
                        <span class="label label-default rank-label">이날치</span>
                        <div style="padding-top:5px; font-size:small">국악 뺴앰!</div>
                    </div>
                </div>
                <div class="profile-header-img">
                    <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/profile/6.jpg" />
                    <!-- badge -->
                    <div class="rank-label-container">
                        <span class="label label-default rank-label">김민수</span>
                        <div style="padding-top:5px; font-size:small">어쿠스틱 밴드</div>
                    </div>
                </div>
                <div class="profile-header-img">
                    <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/profile/7.jpg" />
                    <!-- badge -->
                    <div class="rank-label-container">
                        <span class="label label-default rank-label">핫도그</span>
                        <div style="padding-top:5px; font-size:small">귀여워어어어</div>
                    </div>
                </div>
                <div class="profile-header-img">
                    <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/profile/8.jpg" />
                    <!-- badge -->
                    <div class="rank-label-container">
                        <span class="label label-default rank-label">다주라밴드</span>
                        <div style="padding-top:5px; font-size:small">동요, 발라드, 재즈</div>
                    </div>
                </div>
                <div class="profile-header-img">
                    <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/profile/9.jpg" />
                    <!-- badge -->
                    <div class="rank-label-container">
                        <span class="label label-default rank-label">Nell</span>
                        <div style="padding-top:5px; font-size:small">동요, 발라드, 재즈</div>
                    </div>
                </div>
                <div class="profile-header-img">
                    <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/profile/cover.jpg" />
                    <!-- badge -->
                    <div class="rank-label-container">
                        <span class="label label-default rank-label">이수근수근</span>
                        <div style="padding-top:5px; font-size:small">동요, 발라드, 재즈</div>
                    </div>
                </div>
                <div class="profile-header-img">
                    <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/profile/profile.png" />
                    <!-- badge -->
                    <div class="rank-label-container">
                        <span class="label label-default rank-label">호도도롱롱</span>
                        <div style="padding-top:5px; font-size:small">동요, 발라드, 재즈</div>
                    </div>
                </div>
                <div class="profile-header-img">
                    <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/profile/1.jpg" />
                    <!-- badge -->
                    <div class="rank-label-container">
                        <span class="label label-default rank-label">안됩니다!</span>
                        <div style="padding-top:5px; font-size:small">동요, 발라드, 재즈</div>
                    </div>
                </div>
                <div class="profile-header-img">
                    <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/profile/4.jpg" />
                    <!-- badge -->
                    <div class="rank-label-container">
                        <span class="label label-default rank-label">7raum</span>
                        <div style="padding-top:5px; font-size:small">동요, 발라드, 재즈</div>
                    </div>
                </div>
                <div class="profile-header-img">
                    <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/profile/5.jpg"  />
                    <!-- badge -->
                    <div class="rank-label-container">
                        <span class="label label-default rank-label">이날치</span>
                        <div style="padding-top:5px; font-size:small">국악 뺴앰!</div>
                    </div>
                </div>
                <div class="profile-header-img">
                    <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/profile/6.jpg" />
                    <!-- badge -->
                    <div class="rank-label-container">
                        <span class="label label-default rank-label">김민수</span>
                        <div style="padding-top:5px; font-size:small">어쿠스틱 밴드</div>
                    </div>
                </div>
                <div class="profile-header-img">
                    <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/profile/7.jpg" />
                    <!-- badge -->
                    <div class="rank-label-container">
                        <span class="label label-default rank-label">핫도그</span>
                        <div style="padding-top:5px; font-size:small">귀여워어어어</div>
                    </div>
                </div>
                <div class="profile-header-img">
                    <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/profile/8.jpg" />
                    <!-- badge -->
                    <div class="rank-label-container">
                        <span class="label label-default rank-label">다주라밴드</span>
                        <div style="padding-top:5px; font-size:small">동요, 발라드, 재즈</div>
                    </div>
                </div>
                <div class="profile-header-img">
                    <img class="img-circle" src="${pageContext.request.contextPath}../resources/images/profile/9.jpg" />
                    <!-- badge -->
                    <div class="rank-label-container">
                        <span class="label label-default rank-label">Nell</span>
                        <div style="padding-top:5px; font-size:small">동요, 발라드, 재즈</div>
                    </div>
                </div>
            </div>
            <br><br>
            <h2>RECENT UPDATES</h2>
            <div class="row">
                <div class="card-deck">
                    <div class="card">
                        <iframe width="auto" height="250" src="https://www.youtube.com/embed/4tJ7cVpONo4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        <div class="card-footer">
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
                    </div>
                    <div class="card">
                        <iframe width="auto" height="250" src="https://www.youtube.com/embed/4tJ7cVpONo4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        <div class="card-footer">
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
                    </div>
                    <div class="card">
                        <iframe width="auto" height="250" src="https://www.youtube.com/embed/4tJ7cVpONo4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        <div class="card-footer">
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
                    </div>
                    <div class="card">
                        <iframe width="auto" height="250" src="https://www.youtube.com/embed/4tJ7cVpONo4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        <div class="card-footer">
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
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