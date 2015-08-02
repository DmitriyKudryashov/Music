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

        <sec:authorize access="isAuthenticated()">

            <div class="col-xs-3">
                <ul class="nav nav-pills nav-stacked admin-menu">
                    <li><a href="<c:url value="/myinfo"/>"> Личный кабинет </a></li>
                    <li><a href="#"> Моя музыка </a></li>
                    <li><a href="#"> Вся музыка </a></li>
                </ul>
            </div>


            <div class="panel-body">
                <div class="row">
                    <div class="col-md-2 col-lg-2" align="center">
                        <img src="http://babyinfoforyou.com/wp-content/uploads/2014/10/avatar-300x300.png" class="img-circle img-responsive">
                        <br/>
                        <br/>
                        <p class="h3-style"><sec:authentication property="principal.username"/></p>
                    </div>

                    <form id="loginForm" class="form-horizontal" action="myinfoedit" method="post">
                        <div class=" col-md-5 col-lg-5">
                            <table class="table table-user-information table-style">
                                <tbody>
                                <tr>
                                    <td>Имя:</td>
                                    <td>
                                        <form:input type="text" path="userinfonew.firstName" class="input-sm inputColor" value="${userinfo.firstName}"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Фамилия:</td>
                                    <td>
                                        <form:input type="text" path="userinfonew.lastName" class="input-sm inputColor" value="${userinfo.lastName}"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Дата регистрации:</td><td>${userinfo.dateRegistration}</td>
                                </tr>
                                <tr>
                                    <td>Дата рождения:</td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Пол:</td>
                                    <td>
                                        <form:select class="form-control input-sm" path="userinfonew.sex">
                                            <option value="Мужской">Мужской</option>
                                            <option value="Женский">Женский</option>
                                        </form:select>

                                    </td>
                                </tr>
                                <tr>
                                    <td>Город:</td>
                                    <td>
                                        <form:input path="userinfonew.city" type="text" class="input-sm inputColor" value="${userinfo.city}"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Email:</td><td>${userinfo.email}</td>
                                </tr>
                                <tr>
                                    <td>Мобильный телефон:</td>
                                    <td>
                                        <form:input path="userinfonew.phone" type="text" class="input-sm inputColor" value="${userinfo.phone}"/>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                            <input type="submit" class="btn btn-primary" value="Принять изменения">

                        </div>
                    </form>
                </div>
            </div>
        </sec:authorize>

    </div>
</div>


<script type="text/javascript" src="webjars/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" src="webjars/bootstrap/3.3.4/js/bootstrap.min.js"></script>


</body>
</html>
