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
<section id="banner" data-video="${pageContext.request.contextPath}../resources/images/banner">
    <div class="inner">

        <h1>Welcome Backstage</h1>
        <p>Let me introduce <b>Kim Nugu</b>, a popular singer these days.<br />
            Shall we find out about him?</p>

        <a href="#myCarousel" class="button big alt scrolly">Let's see!</a>
    </div>

</section>
<div id="page-content">
    <div class="container">
        <br>
        <div id="main-content" >
            <br>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">

                    <div class="item active">
                        <iframe width="100%" height="400" src="https://www.youtube.com/embed/3HKnF5ahGdg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                        </iframe>
                    </div>

                    <div class="item">
                        <!--  <img src="images/2.jpg" alt="Chicago" style="width:100%;">
                          <div class="carousel-caption">
                              <h3>Chicago</h3>
                              <p>Thank you, Chicago!</p>
                          </div>-->
                        <iframe width="100%" height="400" src="https://www.youtube.com/embed/3HKnF5ahGdg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                        </iframe>
                    </div>


                    <div class="item">
                        <iframe width="100%" height="400" src="https://www.youtube.com/embed/3HKnF5ahGdg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                        </iframe>
                    </div>

                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <hr color="gray">
            <h2 style="color: black">Nugu의 interview</h2>
            <p><span class="image left"><img src="images/pic02.jpg" alt="" /></span>
                니눈앞에 왔잖아 내가 여기있잖아 너의 입술로 말을 해줘 say yes say yes 나도 모르게 너에게 가고 있나봐 부는 바람에 내 맘 전할래 love is true. 내 어깨 위에 네 손이 포옥 감싸 안으면 나의 얘기에 네가 빤히 날 보고 있으며 크게 두근거리는 심장 소리에 나의 계절은 봄 이 밤 너무 길어요 네 생각에 잠 못들어요 너에 대한 떨림 나를 고립 시켜버린 니 미소느느 그림. 그냥 너를 따라 나는 웃지 니 눈 앞에 왔잖아 내가 여기 있잖아 너의 입술로 말을 해줘 부는 바람에 내맘 전할래 내가 바라는 단 한가지 니가 내곁에 있어주는 것 니가 날 보며 웃어주는 것도 내 얘길 들어주는 것도 난 그걸로도 충분한데 너를 보며 웃잖아 두 눈이 말하잖아 너도 이렇게 대답해줘 너라서 좋아 니가 날 울려도 좋아 너는 난의 전부니까너에게하고픈말 내가 못다한 말다음 노래 뭐야 널 사랑할리 없어 아니 난 몰랐던거야 이토록 눈이 부신 너라는 사람이 내 곁에 꼭 있어주었는데 늘 따뜻했던거야 난 너 하나만으로 웃을 수 있던거야 늘 따뜻했던거야 난 너 하나만으로 웃을 수 있던거야 힘이 들던 날도 언제나 니가 있었기에 내 맘 나조차 내 맘 몰라 어쩌면 항상 내 곁에 있어서 언제부터였었는지 어떻게 시작된건지 너와 나 우리 아무도 모르게 늘 아니라고 했어 내 바보같은 마음이 두근대는 것 조차 모른척 할 만큼 우리는 편했던거야 니가 이제야 니가 보여 미안해 너무 기다리게 해서 함께한 수많은 날이 차곡히 쌓인 추억이 사랑이란 걸 그게 사랑이란 걸 알았어 나ㅇ너의 앞에 서려해 어제와 다른 우리 모습이 어색해도 내손을 잡아줄래 항상 널 사랑했던 거야 우리가 지나온 모든 시간은 언제나 뒤돌아보면 따라와주던 네 걸음 우리가 사랑했던 시간이야 겁나 기네;;</p>
            <br>
            <hr color="gray">
            <div>
                <h2 style="color: black">Kim Nugu의 masterpiece</h2>
            </div>

            <!-- 3 Column Video Section -->
            <div class="flex flex-3">

                <div class="video col">
                    <div class="video-wrapper">
                        <iframe width="275" height="155" src="https://www.youtube.com/embed/3HKnF5ahGdg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                    <div class="caption">내 마음이 움찔했던 순간 - 규현</div>
                    <p class="content">
                        김누구의 대표곡으로 뭐라뭐라먼어만우러마어남넝맘니
                    </p>
                    <a href="generic.html" class="link"><span>Click Me</span></a>
                </div>
                <div class="video col">
                    <div class="video-wrapper">
                        <iframe width="275" height="155" src="https://www.youtube.com/embed/3HKnF5ahGdg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                    <div class="caption">내 마음이 움찔했던 순간 - 규현</div>
                    <p class="content">
                        김누구의 대표곡으로 뭐라뭐라먼어만우러마어남넝맘니
                    </p>
                    <a href="generic.html" class="link"><span>Click Me</span></a>
                </div>
                <div class="video col">
                    <div class="video-wrapper">
                        <iframe width="275" height="155" src="https://www.youtube.com/embed/3HKnF5ahGdg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                    <div class="caption">내 마음이 움찔했던 순간 - 규현</div>
                    <p class="content">
                        김누구의 대표곡으로 뭐라뭐라먼어만우러마어남넝맘니
                    </p>
                    <a href="generic.html" class="link"><span>Click Me</span></a>
                </div>
                <div class="video col">
                    <div class="video-wrapper">
                        <iframe width="275" height="155" src="https://www.youtube.com/embed/3HKnF5ahGdg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                    <div class="caption">내 마음이 움찔했던 순간 - 규현</div>
                    <p class="content">
                        김누구의 대표곡으로 뭐라뭐라먼어만우러마어남넝맘니
                    </p>
                    <a href="generic.html" class="link"><span>Click Me</span></a>
                </div>
                <div class="video col">
                    <div class="video-wrapper">
                        <iframe width="275" height="155" src="https://www.youtube.com/embed/3HKnF5ahGdg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                    <div class="caption">내 마음이 움찔했던 순간 - 규현</div>
                    <p class="content">
                        김누구의 대표곡으로 뭐라뭐라먼어만우러마어남넝맘니
                    </p>
                    <a href="generic.html" class="link"><span>Click Me</span></a>
                </div>
                <div class="video col">
                    <div class="video-wrapper">
                        <iframe width="275" height="155" src="https://www.youtube.com/embed/3HKnF5ahGdg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                    <div class="caption">내 마음이 움찔했던 순간 - 규현</div>
                    <p class="content">
                        김누구의 대표곡으로 뭐라뭐라먼어만우러마어남넝맘니
                    </p>
                    <a href="generic.html" class="link"><span>Click Me</span></a>
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