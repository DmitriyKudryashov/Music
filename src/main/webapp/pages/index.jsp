<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="utf8" contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"  %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>

<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="<c:url value="webjars/bootstrap/3.3.4/css/bootstrap.min.css" />" />

    <script type="text/javascript" src="webjars/jquery/2.1.4/jquery.min.js"></script>
    <script type="text/javascript" src="webjars/bootstrap/3.3.4/js/bootstrap.min.js"></script>

    <style>
        body {
            position: relative;
        }
        ul.nav-pills {
            top: 20px;
            position: fixed;
        }
        div.col-sm-9 div {
            height: 100%;
            font-size: 28px;
        }
        #section1 {color: #fff; background-color: #1E88E5;}
        #section2 {color: #fff; background-color: #673ab7;}
        #section3 {color: #fff; background-color: #ff9800;}
        #section41 {color: #fff; background-color: #00bcd4;}
        #section42 {color: #fff; background-color: #009688;}

        @media screen and (max-width: 810px) {
            #section1, #section2, #section3, #section41, #section42  {
                margin-left: 150px;
            }
        }
    </style>
</head>
<body data-spy="scroll" data-target="#myScrollspy" data-offset="20">

<div class="container">
    <div class="row">
        <nav class="col-sm-3" id="myScrollspy">
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="#section1">Section 1</a></li>
                <li><a href="#section2">Section 2</a></li>
                <li><a href="#section3">Section 3</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Section 4 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#section41">Section 4-1</a></li>
                        <li><a href="#section42">Section 4-2</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div class="col-sm-9">
            <div id="section1">
                <h1>Section 1</h1>
                <p>Try to scroll this section and look at the navigation list while scrolling!</p>
            </div>
            <div id="section2">
                <h1>Section 2</h1>
                <p>Try to scroll this section and look at the navigation list while scrolling!</p>
            </div>
            <div id="section3">
                <h1>Section 3</h1>
                <p>Try to scroll this section and look at the navigation list while scrolling!</p>
            </div>
            <div id="section41">
                <h1>Section 4-1</h1>
                <p>Try to scroll this section and look at the navigation list while scrolling!</p>
            </div>
            <div id="section42">
                <h1>Section 4-2</h1>
                <p>Try to scroll this section and look at the navigation list while scrolling!</p>
            </div>
        </div>
    </div>
</div>

</body>


<%--<head>--%>
    <%--<title>Музыкальный портал</title>--%>
    <%--<style><%@include file="/css/profileInfo.css"%></style>--%>
<%--</head>--%>

<%--<body>--%>

    <%--<div class="container">--%>
        <%--<div class="jumbotron" id="jumbotronColor">--%>

        <%--<sec:authorize access="!isAuthenticated()">--%>
            <%--<span style="align-items: center; font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #ffffff;">--%>
                <%--Добро пожаловать на музыкальный портал--%>
            <%--</span>--%>
            <%--<br/>--%>
            <%--<br/>--%>
            <%--<span style="align-items: center; font-family: Arial, Helvetica, sans-serif; font-size: 20px; color: #ffffff;">--%>
                <%--Чтобы продолжить разегистрируйтесь пожалуйста.--%>
            <%--</span>--%>

        <%--</sec:authorize>--%>


        <%--</div>--%>
    <%--</div>--%>

<%--<script type="text/javascript" src="webjars/jquery/2.1.4/jquery.min.js"></script>--%>
<%--<script type="text/javascript" src="webjars/bootstrap/3.3.4/js/bootstrap.min.js"></script>--%>


<%--</body>--%>


</html>
