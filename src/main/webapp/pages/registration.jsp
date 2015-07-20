<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="layout.jsp"%>

<html>
<head>
    <title>Регистрация</title>
</head>
<body>

    <div class="container">
        <div class="jumbotron" id="jumbotronColor">
            <form id="loginForm" class="form-horizontal" action="addnewuser" method="post">

                <div class="form-group">
                    <label class="control-label col-xs-2" for="login">Логин:</label>
                    <div class="col-xs-3">
                        <form:input type="text" path="user.login" name="login" class="form-control inputColor" id="login" placeholder="Придумайте логин" required=""/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-xs-2" for="password">Пароль:</label>
                    <div class="col-xs-3">
                        <form:input type="password" path="user.password" name="psw1" class="form-control inputColor" id="password" placeholder="Придумайте пароль" required=""/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-xs-2" for="password2">Повторите пароль:</label>
                    <div class="col-xs-3">
                        <input type="password" name="psw2" class="form-control inputColor" id="password2" placeholder="Повторите пароль" required=""/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-xs-2" for="email">Email:</label>
                    <div class="col-xs-3">
                        <form:input type="text" path="userinfo.email" class="form-control inputColor" id="email" placeholder="Введите ваш email" required=""/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-offset-2 col-xs-3">
                        <input type="submit" class="btn btn-primary" value="Зарегистрироваться">
                    </div>
                </div>

            </form>
        </div>
    </div>

    <script type="text/javascript" src="webjars/jquery/2.1.4/jquery.min.js"></script>
    <script type="text/javascript" src="webjars/bootstrap/3.3.4/js/bootstrap.min.js"></script>

</body>
</html>
