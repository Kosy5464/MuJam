<%--
  Created by IntelliJ IDEA.
  User: kijk6
  Date: 2020-12-26
  Time: 오후 1:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta HTTP-EQUIV="Refresh" CONTENT="4;URL=.${pageContext.request.contextPath}/main">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>MuJam</title>

    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}../resources/images/logo_M.png">
    <!-- Custom Stylesheet -->
    <link href="${pageContext.request.contextPath}../resources/css/style.css" rel="stylesheet">
    <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js'></script>
</head>
<body class="main">
<center>
    <video id="loadingVideo" style="display: none;margin-top:120px;margin-botton:120px;" src="${pageContext.request.contextPath}../resources/video/mu_Intro.mp4" autoplay></video>
</center>
<script>

    $(document).ready(function () {

        setTimeout(function() {

            $("#loadingVideo").fadeIn(1500);

        });

    });

</script>
</body>
</html>
