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
    <link href="${pageContext.request.contextPath}../resources/css/style.css" rel="stylesheet">
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
    <script>
        const videos = document.querySelectorAll('.video-preview')
        for (let i = 0; i < videos.length; i++) {
            videos[i].addEventListener('mouseover', function() {
                console.log('play')
                videos[i].play()
            })
            videos[i].addEventListener('mouseout', function() {
                console.log('pause')
                videos[i].pause()
                videos[i].currentTime = 0;
            })
        }
    </script>

</head>
<body>

<jsp:include page="../main/header.jsp"></jsp:include>

<!-- /////////////////////////////////////////Content -->
<div id="page-content">
    <br>
    <div class="container">
        <div id="main-content" >
            <!-- Tabbed Video Section -->
            <div class="flex flex-tabs">
                <div class="tab-content">
                    <div class="mainCategory">
                        NEW Musician<br>
                        <div class="subCategory">새로운 가수</div>
                        <a href="" class="btn btn-info">더보기</a>
                    </div>
                </div>
                <!--<ul class="tab-list">
                    <li><a href="#" data-tab="tab-1" class="active">Duis vestibulum tellus</a></li>
                    <li><a href="#" data-tab="tab-2">Quam tempus sodales ipsum</a></li>
                    <li><a href="#" data-tab="tab-3">Donec faucibus risus cursus</a></li>
                </ul>-->
                <div class="tabs">

                    <!-- Tab 1 -->
                    <div class="tab tab-1 flex flex-3 active">
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <iframe width="275" height="155" src="${pageContext.request.contextPath}../resources/${videoList[0].thumbnailStoredLocation}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>
                            <div>${videoList[0].title} - ${singerList[0].singerName}</div>
                            <div>조회수 ${videoList[0].viewcount}회</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoList[0].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <video class="video-preview" poster="${pageContext.request.contextPath}../resources/${videoList[3].thumbnailStoredLocation}" width="300" height="150" src="${pageContext.request.contextPath}../resources/${videoList[1].storedLocation}" controls onmouseout="this.pause()" onmouseover="this.play()" ></video>
                            </div>
                            <div>${videoList[1].title} - ${singerList[1].singerName}</div>
                            <div>조회수 ${videoList[1].viewcount}회</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoList[1].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="video-wrapper">
                                <iframe src="${pageContext.request.contextPath}../resources/${videoList[2].storedLocation}" controls></iframe>
                            </div>
                            <div>${videoList[2].title} - ${singerList[2].singerName}</div>
                            <div>조회수 ${videoList[2].viewcount}회</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoList[2].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/${videoList[3].thumbnailStoredLocation}" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <div>${videoList[3].title} - ${singerList[3].singerName}</div>
                            <div>조회수 ${videoList[3].viewcount}회</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoList[3].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/${videoList[4].thumbnailStoredLocation}" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <div>${videoList[4].title} - ${singerList[4].singerName}</div>
                            <div>조회수 ${videoList[4].viewcount}회</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoList[4].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/${videoList[5].thumbnailStoredLocation}" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <div>${videoList[5].title} - ${singerList[5].singerName}</div>
                            <div>조회수 ${videoList[5].viewcount}회</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoList[5].id}" class="link"><span>Click Me</span></a>
                        </div>
                    </div>

                    <!-- Tab 2 -->
                    <div class="tab tab-2 flex flex-3">
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoList[6].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/videoPlay/7" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic04.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/videoPlay/7" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic03.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/videoPlay/7" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic02.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/videoPlay/7" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic01.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                    </div>

                    <!-- Tab 3 -->
                    <div class="tab tab-3 flex flex-3">
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic03.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic02.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic01.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic04.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                    </div>

                </div>
            </div>
            <hr  color="gray">
            <!-- Tabbed Video Section -->
            <div class="flex flex-tabs">
                <div class="tab-content">
                    <div class="mainCategory">
                        HOT Musician<br>
                        <div class="subCategory">인기 가수</div>
                        <a href="" class="btn btn-info">더보기</a>
                    </div>
                </div>
                <!--<ul class="tab-list">
                    <li><a href="#" data-tab="tab-1" class="active">Duis vestibulum tellus</a></li>
                    <li><a href="#" data-tab="tab-2">Quam tempus sodales ipsum</a></li>
                    <li><a href="#" data-tab="tab-3">Donec faucibus risus cursus</a></li>
                </ul>-->
                <div class="tabs">

                    <!-- Tab 1 -->
                    <div class="tab tab-1 flex flex-3 active">
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/${videoListViewCount[0].thumbnailStoredLocation}" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <div>${videoListViewCount[0].title} - ${singerListViewCount[0].singerName}</div>
                            <div>조회수 ${videoListViewCount[0].viewcount}회</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[0].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/${videoListViewCount[1].thumbnailStoredLocation}" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <div>${videoListViewCount[1].title} - ${singerListViewCount[1].singerName}</div>
                            <div>조회수 ${videoListViewCount[1].viewcount}회</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[1].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/${videoListViewCount[2].thumbnailStoredLocation}" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <div>${videoListViewCount[2].title} - ${singerListViewCount[2].singerName}</div>
                            <div>조회수 ${videoListViewCount[2].viewcount}회</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[2].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/${videoListViewCount[3].thumbnailStoredLocation}" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <div>${videoListViewCount[3].title} - ${singerListViewCount[3].singerName}</div>
                            <div>조회수 ${videoListViewCount[3].viewcount}회</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[3].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/${videoListViewCount[4].thumbnailStoredLocation}" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <div>${videoListViewCount[4].title} - ${singerListViewCount[4].singerName}</div>
                            <div>조회수 ${videoListViewCount[4].viewcount}회</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[4].id}" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/${videoListViewCount[5].thumbnailStoredLocation}" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <div>${videoListViewCount[5].title} - ${singerListViewCount[5].singerName}</div>
                            <div>조회수 ${videoListViewCount[5].viewcount}회</div>
                            <a href="${pageContext.request.contextPath}/videoPlay/${videoListViewCount[5].id}" class="link"><span>Click Me</span></a>
                        </div>
                    </div>
                    <!-- Tab 2 -->
                    <div class="tab tab-2 flex flex-3">
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic04.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic03.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic02.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic01.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                    </div>

                    <!-- Tab 3 -->
                    <div class="tab tab-3 flex flex-3">
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic03.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic02.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic01.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/pic06.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic05.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
                        </div>
                        <!-- Video Thumbnail -->
                        <div class="video col">
                            <div class="image fit">
                                <img src="${pageContext.request.contextPath}../resources/images/pic04.jpg" alt="" />
                                <div class="arrow">
                                    <div class="icon fa-play"></div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/generic" class="link"><span>Click Me</span></a>
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

<!--다른 템플릿-->
<script src="${pageContext.request.contextPath}../resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/jquery.scrolly.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/skel.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/util.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/main.js"></script>
</body>
</html>