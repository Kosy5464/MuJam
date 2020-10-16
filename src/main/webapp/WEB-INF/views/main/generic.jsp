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
<!DOCTYPE HTML>
<!--
Broadcast by TEMPLATED
templated.co @templatedco
Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
    <title>Generic - Broadcast by TEMPLATED</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}../resources/css/main.css" />
    <link href="${pageContext.request.contextPath}../resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Shadows+Into+Light' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
</head>
<body class="subpage">

<jsp:include page="../main/header.jsp"></jsp:include>

<!-- Main -->
<div id="main">

    <!-- One -->
    <section class="wrapper style1">
        <div class="inner">
            <header class="align-center">
                <h2>Nam eu nisi non ante sodale</h2>
                <p>Cras sagittis turpis sit amet est tempus, sit amet consectetur purus tincidunt.</p>
            </header>
            <div class="video">
                <div class="video-wrapper">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/s6zR2T9vn2c" frameborder="0" allowfullscreen></iframe>
                </div>
                <p class="caption">
                    In luctus nunc nec lacus condimentum maximus. Nunc vestibulum urna a arcu dignissim, nec aliquam ultrices ac massa eget placerat.
                </p>
            </div>
            <p>Curabitur venenatis lorem ut finibus finibus. Ut quis eleifend libero, nec ultricies metus. Morbi magna risus, congue sit amet pellentesque eget, malesuada ut justo. Sed ac pretium quam. Ut vel ex vitae enim sagittis posuere ac id erat. Vestibulum vel ullamcorper tellus. Donec sapien massa, venenatis ac felis vel, vestibulum sagittis enim. Maecenas ut egestas lorem, nec luctus ligula. Vestibulum neque diam, aliquet non enim a, cursus lacinia metus. Aenean fringilla luctus rhoncus. Integer vulputate massa ac suscipit venenatis. Integer luctus elit non nulla fringilla, ullamcorper maximus sem congue. Integer tristique eu nisi nec fermentum. Ut malesuada quis massa at ultricies.</p>
            <p>Donec molestie tellus eu tincidunt dignissim. Sed sollicitudin bibendum ultricies. Vivamus tristique justo lacinia dui tempus consequat. Sed hendrerit justo in nisl auctor, id rutrum tortor congue. Vivamus mattis nibh et sem rutrum, vel viverra purus viverra. Donec et justo at orci euismod hendrerit vel vel neque. Donec gravida ipsum in augue volutpat laoreet. Ut lobortis turpis sit amet sodales ultrices.</p>
        </div>
    </section>

    <!-- Three -->
    <section class="wrapper ">
        <div class="inner">
            <header class="align-center">
                <h2>Aliquam ipsum purus dolor</h2>
                <p>Cras sagittis turpis sit amet est tempus, sit amet consectetur purus tincidunt.</p>
            </header>

            <!-- 3 Column Video Section -->
            <div class="flex flex-3">
                <div class="video col">
                    <div class="image fit">
                        <img src="${pageContext.request.contextPath}../resources/images/pic09.jpg" alt="" />
                        <div class="arrow">
                            <div class="icon fa-play"></div>
                        </div>
                    </div>
                    <p class="caption">
                        Cras eget lacus sed mauris scelerisque tincidunt
                    </p>
                    <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                </div>
                <div class="video col">
                    <div class="image fit">
                        <img src="${pageContext.request.contextPath}../resources/images/pic10.jpg" alt="" />
                        <div class="arrow">
                            <div class="icon fa-play"></div>
                        </div>
                    </div>
                    <p class="caption">
                        Vivamus vulputate lacus non massa auctor lobortis
                    </p>
                    <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                </div>
                <div class="video col">
                    <div class="image fit">
                        <img src="${pageContext.request.contextPath}../resources/images/pic11.jpg" alt="" />
                        <div class="arrow">
                            <div class="icon fa-play"></div>
                        </div>
                    </div>
                    <p class="caption">
                        Nam eu nisi non ante sodales interdum a vitae neque
                    </p>
                    <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                </div>
            </div>
        </div>
    </section>

</div>

<!-- /////////////////////////////////////////Footer -->

<jsp:include page="../main/footer.jsp"></jsp:include>
<!-- Footer -->


</body>
</html>
