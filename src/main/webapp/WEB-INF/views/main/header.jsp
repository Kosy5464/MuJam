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

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>MuJam</title>

    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}../resources/images/logo_M.png">
    <!-- Custom Stylesheet -->
    <link href="${pageContext.request.contextPath}../resources/css/style.css?ver=1" rel="stylesheet">

</head>
<body>
<!--**********************************
            Nav header start
        ***********************************-->
<div class="nav-header">
    <div class="brand-logo">
        <a href="${pageContext.request.contextPath}/main">
            <b class="logo-abbr"><img src="${pageContext.request.contextPath}../resources/images/logo_M.png" alt=""> </b>
            <span class="logo-compact"><img src="${pageContext.request.contextPath}../resources/images/logo-compact.png" alt=""></span>
            <span class="brand-title">
                        <img src="${pageContext.request.contextPath}../resources/images/logo_mujam.png" width="150" alt="">
                    </span>
        </a>
    </div>
</div>
<!--**********************************
    Nav header end
***********************************-->

<!--**********************************
    Header start
***********************************-->
<div class="header">
    <div class="header-content clearfix">

        <div class="nav-control">
            <div class="hamburger">
                <span class="toggle-icon"><i class="icon-menu"></i></span>
            </div>
        </div>
        <!--<div class="header-left">
        </div>-->
        <div class="header-right">
            <ul class="clearfix">
                <li class="icons">
                    <div class="search">
                        <input type="search" class="search-input" placeholder="Search..." name=""> <a href="#" class="search-icon"> <i class="fa fa-2x fa-search"></i> </a>
                    </div>
                </li>

                <c:catch>
                    <c:choose>
                        <c:when test="${empty user && empty singer}">
                            <li class="icons">
                                <button type="button" class="btn mb-1 btn-outline-light" onclick="location.href='${pageContext.request.contextPath}/login'">LOGIN</button>
                            </li>
                            <li class="icons">
                                <button type="button" class="btn mb-1 btn-outline-light" onclick="location.href='${pageContext.request.contextPath}/signUp'">SIGN UP</button>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="icons">
                                <button type="button" class="btn mb-1 btn-outline-light" onclick="location.href='${pageContext.request.contextPath}/logout'">LOGOUT</button>
                            </li>
                            <li class="icons">
                                    ${user.userId}
                                    ${singer.singerId}
                            </li>

                        </c:otherwise>
                    </c:choose>
                </c:catch>
                <li class="icons dropdown d-none d-md-flex">
                    <a href="javascript:void(0)" class="list-group"  data-toggle="dropdown">
                        <i class="fa fa-ellipsis-v f-s-14" aria-hidden="true"></i>
                    </a>
                    <div class="drop-down dropdown-language animated fadeIn  dropdown-menu">
                        <div class="dropdown-content-body">
                            <ul>
                                <li><a href="">이용약관</a></li>
                                <li><a href="">이벤트</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--**********************************
    Header end ti-comment-alt
***********************************-->
<!--**********************************
    Sidebar start
***********************************-->
<div class="nk-sidebar">
    <div class="nk-nav-scroll">
        <ul class="metismenu" id="menu">
            <li class="nav-label">Public</li>
            <li>
                <a  aria-expanded="false" href="${pageContext.request.contextPath}/new">
                    <i class="icon-star menu-icon"></i><span class="nav-text">NEW Music</span>
                </a>
            </li>
            <li>
                <a  aria-expanded="false" href="${pageContext.request.contextPath}/hot">
                    <i class="icon-fire menu-icon"></i><span class="nav-text">HOT Music</span>
                </a>
            </li>
            <li>
                <a  aria-expanded="false" href="${pageContext.request.contextPath}/musician">
                    <i class="icon-people menu-icon"></i><span class="nav-text">MUSICIAN</span>
                </a>
            </li>
            <li>
                <a  aria-expanded="false" href="${pageContext.request.contextPath}/backstage">
                    <i class="icon-diamond menu-icon"></i><span class="nav-text">BACKSTAGE</span>
                </a>
            </li>
            <li class="nav-label"><hr/></li>
            <li class="nav-label">User</li>
            <li>
                <a  aria-expanded="false" id="likeLink" onclick="" href="${pageContext.request.contextPath}/like">
                    <i class="icon-like menu-icon"></i><span class="nav-text">LIKE</span>
                </a>
            </li>
            <li>
                <a  aria-expanded="false" id="followLink" onclick="" href="${pageContext.request.contextPath}/follow">
                    <i class="icon-heart menu-icon"></i><span class="nav-text">FOLLOW</span>
                </a>
            </li>
            <li>
                <a  aria-expanded="false" id="playListLink" href="${pageContext.request.contextPath}/playList">
                    <i class="icon-playlist menu-icon"></i><span class="nav-text">My PlayList</span>
                </a>
            </li>
        </ul>
    </div>
</div>

</body>
<!-- jQuery -->
<c:if test="${empty user && empty singer}">
    <script>
        const followLink = document.getElementById("followLink");
        followLink.setAttribute("href","${pageContext.request.contextPath}/login");
        followLink.setAttribute("onclick","alert('로그인창으로 이동합니다.')");

        const likeLink = document.getElementById("likeLink");
        likeLink.setAttribute("href","${pageContext.request.contextPath}/login");
        likeLink.setAttribute("onclick","alert('로그인창으로 이동합니다.')");

        const playListLink = document.getElementById("playListLink");
        playListLink.setAttribute("href","${pageContext.request.contextPath}/login");
        playListLink.setAttribute("onclick","alert('로그인창으로 이동합니다.')");
    </script>
</c:if>
<script src="${pageContext.request.contextPath}../resources/js/jquery-1.11.3.min.js"></script>
</html>