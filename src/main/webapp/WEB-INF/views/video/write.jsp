<%--
  Created by IntelliJ IDEA.
  User: chlee
  Date: 2020-09-20
  Time: 오전 2:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/writevideo" method="post">
        제목 : <input type="text" name="title"/> <br>
        작성자 : <input type="number" name="singerId"/> <br>
        저장장소 : <input type="text" name="storedLocation"/> <br>
        <textarea name="content"></textarea> <br>
        <input type="submit" value="등록" />
    </form>
</body>
</html>
