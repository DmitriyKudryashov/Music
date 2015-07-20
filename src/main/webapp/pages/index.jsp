<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="layout.jsp"%>

<html>
<head>
    <title>Музыкальный портал</title>
    <style><%@include file="/css/profileInfo.css"%></style>
</head>

<body>

    <div class="container">
        <div class="jumbotron" id="jumbotronColor">

        <sec:authorize access="!isAuthenticated()">
            <span style="align-items: center; font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #ffffff;">
                Добро пожаловать на музыкальный портал
            </span>
            <br/>
            <br/>
            <span style="align-items: center; font-family: Arial, Helvetica, sans-serif; font-size: 20px; color: #ffffff;">
                Чтобы продолжить разегистрируйтесь пожалуйста.
            </span>

        </sec:authorize>


        </div>
    </div>

<script type="text/javascript" src="webjars/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" src="webjars/bootstrap/3.3.4/js/bootstrap.min.js"></script>


</body>
</html>
