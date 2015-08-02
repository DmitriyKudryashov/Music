<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"  %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" href="<c:url value="webjars/bootstrap/3.3.4/css/bootstrap.min.css" />" />
    <style><%@include file="/css/index.css"%></style>

</head>
<body>
<div class="container">

    <nav class="navbar navbar-inverse">
        <div class="container-fluid">

            <div class="navbar-header">
                <sec:authorize access="!isAuthenticated()">
                    <a class="navbar-brand" href="<c:url value="/"/> ">Музыкальный портал</a>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <a class="navbar-brand" href="<c:url value="/myinfo"/> ">Музыкальный портал</a>
                </sec:authorize>
            </div>

            <ul class="nav navbar-nav navbar-right">

                <c:url value="/j_spring_security_check" var="loginUrl" />

                <sec:authorize access="isAuthenticated()">
                    <li><a href="<c:url value="/logout" />">Выйти</a></li>
                </sec:authorize>

                <sec:authorize access="!isAuthenticated()">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown">
                            <b class="cursor_login">Войти</b><span class="caret"></span>
                        </a>
                        <ul id="login-dp" class="dropdown-menu">
                            <li>
                                <div class="row">
                                    <div class="col-md-12">
                                        <p>Войти через:</p>
                                        <div class="social-buttons">
                                            <a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
                                            <a href="#" class="btn btn-vk"><i class="fa fa-vk"></i> VKontakte</a>
                                        </div>
                                        <p>Введите свой логин и пароль:</p>
                                        <form class="form login-nav" role="form" method="post" action="${loginUrl}" accept-charset="UTF-8" id="loginForm">
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="j_username" placeholder="Введите свой логин">
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control" name="j_password" placeholder="Введите свой пароль">
                                            </div>
                                            <p id="error_text">${login_error}</p>
                                            <div class="form-group">
                                                <button type="submit" class="btn btn-primary btn-block">Войти</button>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Запомнить
                                                </label>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="bottom text-center">
                                        <a href="<c:url value="/registration"/>"><b>Зарегистрироваться</b></a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                </sec:authorize>

            </ul>

        </div>
    </nav>

</div>


</body>
</html>