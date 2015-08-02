<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Музыкальный портал</title>

    <link rel="stylesheet" href="<c:url value="webjars/bootstrap/3.3.4/css/bootstrap.min.css" />" />
    <style><%@include file="/css/index.css"%></style>
    <style><%@include file="/css/login.css"%></style>

    <script type="text/javascript" src="webjars/jquery/2.1.4/jquery.min.js"></script>
    <script type="text/javascript" src="webjars/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script><%@include file="/javascript/login.js"%></script>
</head>

<body data-spy="scroll" data-target=".navbar" data-offset="50">

    <%--Шапка сайта--%>
    <nav class="navbar navbar-default navbar-fixed-top" id="nav">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar"></button>
                <a class="navbar-brand" href="/">Музыкальный портал</a>
            </div>

            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li><a href="#topmusic">Популярная музыка</a></li>
                    <li><a href="#topartist">Популярные артисты</a></li>
                    <li><a href="#topalbums">Популярные альбомы</a></li>
                    <li><a href="#newmusic">Новая музыка</a></li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li><a href="" data-toggle="modal" data-target="#myModal">Войти</a></li>
                </ul>

            </div>


        </div>
    </nav>
    <%--!Шапка сайта--%>

    <%--Форма авторизации и регистрации--%>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="myModalLabel">Войти в учётную запись</h4>
                </div> <!-- /.modal-header -->

                <div class="modal-body">
                    <form role="form">
                        <div class="form-group">
                            <div class="input-group">
                                <label for="uLogin" class="input-group-addon glyphicon glyphicon-user"></label>
                                <input type="text" class="form-control" id="uLogin" placeholder="Логин">
                            </div>
                        </div> <!-- /.form-group -->

                        <div class="form-group">
                            <div class="input-group">
                                <label for="uPassword" class="input-group-addon glyphicon glyphicon-lock"></label>
                                <input type="password" class="form-control" id="uPassword" placeholder="Пароль">
                            </div> <!-- /.input-group -->
                        </div> <!-- /.form-group -->

                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> Не запоминать
                            </label>
                        </div> <!-- /.checkbox -->
                    </form>

                </div> <!-- /.modal-body -->

                <div class="modal-footer">
                    <button class="form-control btn btn-primary">Ok</button>

                    <div class="progress">
                        <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="1" aria-valuemin="1" aria-valuemax="100" style="width: 0%;">
                            <span class="sr-only">progress</span>
                        </div>
                    </div>
                </div> <!-- /.modal-footer -->

            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <%--!Форма авторизации и регистрации--%>

    <%--Центральная часть сайта--%>

        <div id="topmusic" class="container-fluid">
            <h2>Популярная музыка</h2>
        </div>

        <div id="topartist" class="container-fluid">
            <h1>Популярные артисты</h1>
        </div>

        <div id="topalbums" class="container-fluid">
            <h1>Популярные альбомы</h1>
        </div>

        <div id="newmusic" class="container-fluid">
            <h1>Новая музыка</h1>
        </div>

    <%--!Центральная часть сайта--%>

    <%--Авторы сайта --%>
    <nav class="navbar">
    <div class="collapse navbar-collapse">
        <br/>
        <p>Создатель сайта Дмитрий Кудряшов</p>
        <p>Email: dmitry.kudryashov.a@gmail.com</p>
    </div>
    </nav>
    <%--!Авторы сайта --%>

</body>


</html>
