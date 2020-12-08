<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
        <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "springform"%>
            <html>

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Home</title>
                <!-- Latest compiled and minified CSS -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
            </head>

            <style>
                .mt-100 {
                    margin-top: 100px;
                }

                .center {
                    text-align: center;
                }

                nav {
                    background-color: #587ffc;
                }

                nav a {
                    color: white !important;
                }

                nav a:hover {
                    color: rgb(246, 246, 246);
                }

                .navbar-toggler {
                    background-color: black;
                }

                .collapse {
                    float: right;
                    padding-right: 20px;
                }

                .card {
                    border: 1px solid #587ffc;
                    margin-top: 5px;
                }

                .card-header {
                    background-color: #ff8692;
                }

                .card-header a {
                    display: inline-block;
                    width: 100%;
                    color: white;
                    text-transform: uppercase;
                    font-weight: 500;
                    font-size: 20px;
                }

                .card-header a:after {
                    content: '\2212';
                    float: right;
                }

                .card-header a.collapsed:after {
                    content: '\002B';
                }

                input {
                    border: 1px solid #587ffc !important;
                }

                .custom-button {
                    background-color: #587ffc;
                    padding: 8px 25px;
                    color: white;
                    font-size: 18px;
                    font-weight: 500;
                    letter-spacing: 1px;
                    transition: background-color 0.2s ease-in;
                }

                .custom-button:hover {
                    background-color: #ff8692;
                    color: white;
                }
                .error{color:red;}

                @media screen and (max-width:576px) {
                    .mt-100 {
                        margin-top: 0px;
                    }
                    nav {
                        padding-left: 5px !important;
                        padding-right: 5px !important;
                    }
                    .navbar-brand {
                        font-size: 17px !important;
                    }
                    .collapse {
                        float: none;
                    }
                }
            </style>

            <body>
                <!-- section start  -->
                <section class="mt-4">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">

                                <div style="text-align: right;">
                                    <a href="<core:url value='/home'/>" class="btn btn-primary mt-4 mb-4">Home</a>
                                 </div>

                                <div id="accordion">

                                    <!-- card #1 -->
                                    <div class="card">
                                        <div class="card-header">
                                            <a class="card-link" data-toggle="collapse" href="#collapseOne">Register As Customer</a>
                                        </div>
                                        <div id="collapseOne" class="collapse show" data-parent="#accordion">
                                            <div class="card-body">
                                                <div class="row">

                                                    <!-- image start -->
                                                    <div class="col-md-5">
                                                        <div class="card-feature-img">
                                                            <img src="http://localhost:8080/CustomerManagement/images/register.jpg" class="mt-100" alt="register" style="width: 100%;max-height: 280px;">
                                                        </div>
                                                    </div>
                                                    <!-- image end -->

                                                    <!-- form start -->
                                                    <div class="col-md-7">

                                                        <springform:form action="/CustomerManagement/registercustomer" commandName="customer" method="post">

                                                            <div class="form-group">
                                                                <label for="cus_name">Name* :</label>
                                                                <springform:input type="text" path="name" class="form-control" id="cus_name" placeholder="Enter name" />
                                                                <springform:errors class="error" type="text" path="name" />
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="cus_email">Email* :</label>
                                                                <springform:input type="text" path="email" class="form-control" id="cus_email" placeholder="Enter email" />
                                                                <springform:errors class="error" type="text" path="email" />
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="cus_contact">Contact* :</label>
                                                                <springform:input type="text" path="contactNumber" class="form-control" id="cus_contact" placeholder="Enter contact" />
                                                                <springform:errors class="error" type="text" path="contactNumber" />
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="cus_address">Address* :</label>
                                                                <springform:input type="text" path="Address" class="form-control" id="cus_address" placeholder="Enter address" />
                                                                <springform:errors class="error" type="text" path="Address" />
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="cus_reg_pass">Password* :</label>
                                                                <springform:input type="password" path="pswd" class="form-control" id="cus_reg_pass" placeholder="Enter password" />
                                                                <springform:errors class="error" type="text" path="pswd" />
                                                            </div>

                                                            <div class="center">
                                                                <input type="submit" value="Submit" class="btn custom-button" />
                                                            </div>

                                                        </springform:form>
                                                    </div>
                                                    <!-- form end -->

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- card #1 end -->

                                    <!-- card #2 -->
                                    <div class="card">
                                        <div class="card-header">
                                            <a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">Login As Customer</a>
                                        </div>
                                        <div id="collapseTwo" class="collapse" data-parent="#accordion">
                                            <div class="card-body">
                                                <div class="row">

                                                    <!-- image start -->
                                                    <div class="col-md-5">
                                                        <div class="card-feature-img">
                                                            <img src="http://localhost:8080/CustomerManagement/images/sign-up2.png" alt="login" style="width: 100%;">
                                                        </div>
                                                    </div>
                                                    <!-- image end -->

                                                    <!-- form start -->
                                                    <div class="col-md-7">

                                                        <springform:form action="/CustomerManagement/loginCustomer" commandName="customer" method="post">

                                                            <div class="form-group pt-4">
                                                                <label for="cus_reg_id">Registration ID* :</label>
                                                                <springform:input type="number" path="registrationId" class="form-control" id="cus_reg_id" placeholder="Enter registration ID" />
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="cus_login_pass">Password* :</label>
                                                                <springform:input type="password" path="pswd" class="form-control" id="cus_login_pass" placeholder="Enter password" />
                                                            </div>

                                                            <div class="center">
                                                                <input type="submit" value="Submit" class="btn custom-button" />
                                                            </div>

                                                        </springform:form>
                                                    </div>
                                                    <!-- form end -->

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- card #2 end-->

                                    <!-- card #3 -->
                                    <div class="card">
                                        <div class="card-header">
                                            <a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">Login As Company Operator</a>
                                        </div>
                                        <div id="collapseThree" class="collapse" data-parent="#accordion">
                                            <div class="card-body">
                                                <div class="row">

                                                    <!-- image start -->
                                                    <div class="col-md-5">
                                                        <div class="card-feature-img">
                                                            <img src="http://localhost:8080/CustomerManagement/images/registration.jpg" alt="login" style="width: 100%;">
                                                        </div>
                                                    </div>
                                                    <!-- image end -->

                                                    <!-- form start -->
                                                    <div class="col-md-7">

                                                        <springform:form action="/CustomerManagement/loginAdmin" commandName="admin" method="post">

                                                        <div class="form-group pt-4">
                                                            <label for="rm_user_id">User ID* :</label>
                                                            <springform:input type="text" path="username" class="form-control" id="rm_user_id" placeholder="Enter user ID" />
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="rm_login_pass">Password* :</label>
                                                            <springform:input type="password" path="pswd" class="form-control" id="rm_login_pass" placeholder="Enter password" />
                                                        </div>

                                                        <div class="center">

                                                            <input type="submit" value="Submit" class="btn custom-button" />
                                                        </div>

                                                        </springform:form>
                                                    </div>
                                                    <!-- form end -->

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- card #3 end-->

                                     <!-- card #4 -->
                                                        <div class="card">
                                                                            <div class="card-header">
                                                                                <a class="collapsed card-link" data-toggle="collapse" href="#collapseFour">Login As Relationship Manager</a>
                                                                            </div>
                                                                            <div id="collapseFour" class="collapse" data-parent="#accordion">
                                                                                <div class="card-body">
                                                                                    <div class="row">

                                                                                        <!-- image start -->
                                                                                        <div class="col-md-5">
                                                                                            <div class="card-feature-img">
                                                                                                <img src="http://localhost:8080/CustomerManagement/images/registration.jpg" alt="login" style="width: 100%;">
                                                                                            </div>
                                                                                        </div>
                                                                                        <!-- image end -->

                                                                                        <!-- form start -->
                                                                                        <div class="col-md-7">

                                                                                            <springform:form action="/CustomerManagement/loginRm" commandName="admin" method="post">

                                                                                            <div class="form-group pt-4">
                                                                                                <label for="rm_user_id">User ID* :</label>
                                                                                                <springform:input type="text" path="username" class="form-control" id="rm_user_id" placeholder="Enter user ID" />
                                                                                            </div>

                                                                                            <div class="form-group">
                                                                                                <label for="rm_login_pass">Password* :</label>
                                                                                                <springform:input type="password" path="pswd" class="form-control" id="rm_login_pass" placeholder="Enter password" />
                                                                                            </div>

                                                                                            <div class="center">

                                                                                                <input type="submit" value="Submit" class="btn custom-button" />
                                                                                            </div>

                                                                                            </springform:form>
                                                                                        </div>
                                                                                        <!-- form end -->

                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                 <!-- card #4 end-->

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