<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
        <html>

        <head>
            <meta charset="utf-8">
            <title>Successful Registration</title>
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
                color: green;
                font-size: 28px;
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
                                <div class="center">
                                    <img src="http://localhost:8080/CustomerManagement/images/4.jpg" alt="user-search">
                                    <p class="message">You have been successfully registered !. </br> Your Registration ID is <span style="color:red;font-weight: 800;">${id}</span>. <br/>Please note this ID is for future reference.</p>
                                    <a style="font-size:26px;" href="<core:url value='/home'/>">Click here to login</a>
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