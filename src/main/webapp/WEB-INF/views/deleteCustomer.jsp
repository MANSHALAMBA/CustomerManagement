
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "springform"%>

<html>

<head>
    <meta charset="utf-8">
    <title>Success Update</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<style>
    body {
        width: 100%;
        background-image: linear-gradient(to top, #ff8692 25%, #c7bebf 100%);
    }

    .center {
        text-align: center;
    }

    .main-box-search-page {
        /* height: 8vh; */
        width: 90%;
        box-shadow: 0px 5px 18px 5px #5e5b5bc9;
        margin-left: auto;
        margin-right: auto;
        border-radius: 10px;
        padding-bottom: 50px;
        margin-top: 100px;
        margin-bottom: 64px;
        background-color: white;
    }

    .main-box-search-page img {
        max-height: 320px;
        margin: 20px 0px;
    }

    .message {
        color: red;
        font-size: 32px;
    }

    @media screen and (max-width:576px) {
        .main-box-search-page {
            width: 100% !important;
            margin-top: 32px;
        }
        .main-box-search-page img {
            max-height: 320px;
            margin: 25px 0px;
        }
        .message {
            color: red;
            font-size: 20px;
        }
    }
</style>

<body>
    <!-- section start -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-12 mt-4">
                    <div class="main-box-search-page">

                        <div style="text-align: right;padding-right: 20px;">
                           <a href="<core:url value='/home'/>" class="btn btn-primary mt-4">Back to Home</a>
                        </div>

                        <div class="center">
                            <img src="http://localhost:8080/CustomerManagement/images/5.jpeg" alt="user-search">
                            <p class="message">
<core:choose>
        <core:when test="${rows==0}">

            No customer with given registration number.

        </core:when>
        <core:when test="${rows>0}">
                    Customer Deleted successfully.


                </core:when>
        <core:otherwise>
            <jsp:forward page="error.jsp" />

         </core:otherwise>
 </core:choose>
</div>
</div>
</div>
</div>
</div>
</section>
<!-- section end -->

</body>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</html>