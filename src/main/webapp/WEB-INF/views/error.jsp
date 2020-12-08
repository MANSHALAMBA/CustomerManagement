<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>error</title>
            <!-- Latest compiled and minified CSS -->
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        </head>
        <style>
            .center {
                text-align: center;
            }

            img {
                max-height: 320px;
                max-width: 400px;
            }

            .error-text {
                color: red;
                font-size: 40px;
                text-align: center;
            }

            .container {
                box-shadow: 0px 5px 18px 5px #5e5b5bc9;
                margin-left: auto;
                margin-right: auto;
                border-radius: 10px;
                padding-top: 50px;
                padding-bottom: 50px;
                margin-top: 40px;
                margin-bottom: 64px;
                background-color: #ffdde0;
            }

            @media screen and (max-width:576px) {
                .error-text {
                    font-size: 20px;
                    text-align: center !important;
                }
                .container {
                    margin-left: auto !important;
                    margin-right: auto !important;
                    width: 100% !important;
                }
            }
        </style>

        <body>
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="center">
                                 <div style="text-align: right;padding-right: 20px;">
                                    <a href="<core:url value='/home'/>" class="btn btn-primary">Back to Home</a>
                                   </div>
                                <img src="http://localhost:8080/CustomerManagement/images/error.png" alt="error">
                                <p class="error-text">Internal Server Error. Please Try Again After sometime</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </body>
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        </html>