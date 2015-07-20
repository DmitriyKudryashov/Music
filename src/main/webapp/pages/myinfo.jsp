<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="layout.jsp"%>
<html>
<head>
    <title>Моя информация</title>
    <style><%@include file="/css/profileInfo.css"%></style>

</head>
<body>


    <div class="container">
        <div class="jumbotron" id="jumbotronColor">

            <div class=" col-xs-3">
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
                    <div class=" col-md-5 col-lg-5">
                        <table class="table table-user-information table-style">
                            <tbody>
                            <tr>
                                <td>Имя:</td> <td>${userinfo.firstName}</td>
                            </tr>
                            <tr>
                                <td>Фамилия:</td><td>${userinfo.lastName}</td>
                            </tr>
                            <tr>
                                <td>Дата регистрации:</td><td>${userinfo.dateRegistration}</td>
                            </tr>
                            <tr>
                                <td>Дата рождения:</td><td>${userinfo.dateBirth}</td>
                            </tr>
                            <tr>
                                <td>Пол:</td><td>${userinfo.sex}</td>
                            </tr>
                            <tr>
                                <td>Город:</td><td>${userinfo.city}</td>
                            </tr>
                            <tr>
                                <td>Email:</td><td><a href="${userinfo.email}">${userinfo.email}</a></td>
                            </tr>
                            <tr>
                                <td>Мобильный телефон:</td><td><a href="tel:">${userinfo.phone}</a></td>
                            </tr>
                            </tbody>
                        </table>


                        <a href="<c:url value="/editpage"/> " class="btn btn-sm btn-warning">Изменить информацию</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
