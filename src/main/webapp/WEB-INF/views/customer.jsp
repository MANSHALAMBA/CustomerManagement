<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
        <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "springform"%>

            <html>

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Customer</title>
                <!-- Latest compiled and minified CSS -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
            </head>
            <style>
                body {
                    /*font-family: system-ui, sans-serif; */
                    width: 100%;
                    background-image: linear-gradient(to top, #ff8692 25%, #c7bebf 100%);
                }

                .title{text-align:center; font-size: 26px;font-weight: 600;color: #3f4142;}


                .clearfix:before,
                .clearfix:after {
                    content: "";
                    display: table;
                }

                .clearfix:after {
                    clear: both;
                }

                a {
                    color: #0067ab;
                    text-decoration: none;
                }

                a:hover {
                    text-decoration: underline;
                }


                .form {
                    background-color: white;
                    margin: 0 auto;
                    width: 70%;
                    margin-top: 20px;
                    padding-top: 20px;
                    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                }

                img {
                    width: 400px;
                    max-height: 300px;
                    margin-left:auto;
                    margin-right:auto;
                }

                input {
                    border: 1px solid #587ffc !important;
                    width:80%;
                    margin-bottom:20px;
                }

                input[type="submit"] {
                      width:150px;
                      margin-bottom:25px;
                      }



                 ::-webkit-input-placeholder {
                    text-align: center;
                }

                 :-moz-placeholder {
                    text-align: center;
                }


                .content {
                   padding:0px 50px;
                }
                .custom-button {
                    background-color:#616161;
                    padding: 8px 25px;
                    color: white;
                    font-size: 18px;
                    font-weight: 500;
                    letter-spacing: 1px;
                    transition: background-color 0.2s ease-in;
                }

                .custom-button:hover {

                    color: white;
                }

                .error {
                    color: red;
                }

                 @media screen and (max-width:576px) {

                     .title{text-align:center; font-size: 18px;font-weight: 500;color: #3f4142;}

                    .form{
                    width:100%;
                    }

                    input {
                        border: 1px solid #587ffc !important;
                        width:100%;
                        margin-bottom:20px;
                     }
                     img {
                        width: 250px;
                        max-height: 200px;
                         margin-left:auto;
                          margin-right:auto;
                         }

                   }


            </style>

            <body>
                <section>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form center">

                                    <div style="text-align: right;padding-right: 20px;">
                                        <a href="<core:url value='/home'/>" class="btn btn-primary">Logout</a>
                                    </div>


                                    <core:choose>
                                        <core:when test="${customer!=null}">
                                            <springform:form action="/CustomerManagement/updateCustomer" commandName="customer" method="post">

                                                <div class="content">
                                                    <p class="title">UPDATE YOUR PROFILE</p>

                                                    <div style="text-align:center;">
                                                        <img src="http://localhost:8080/CustomerManagement/images/1.jpg">
                                                    </div>

                                                      <div style="text-align:right;">
                                                            <p id="edit" class="btn btn-primary">EDIT</p>
                                                        </div>


                                                        <div class="form-group">
                                                            <label for="name">Registration ID:</label>
                                                            <springform:input type="number" path="registrationId" class="form-control" placeholder="Enter Registration Id" readonly="true" />
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="name">Name* :</label>
                                                            <springform:input type="text" path="name" class="form-control disable" placeholder="Enter Name" readonly="true" />
                                                            <springform:errors class="error" type="text" path="name" />
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="email">Email* :</label>
                                                            <springform:input type="text" path="email" class="form-control disable" placeholder="Enter email" readonly="true" />
                                                            <springform:errors class="error" type="text" path="email" />
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="contact">Contact* :</label>
                                                            <springform:input type="text" path="contactNumber" class="form-control disable" placeholder="Enter contactNumber" readonly="true" />
                                                            <springform:errors class="error" type="text" path="contactNumber" />
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="address">Address* :</label>
                                                            <springform:input type="text" path="Address" class="form-control disable" placeholder="Enter Address" readonly="true" />
                                                            <springform:errors class="error" type="text" path="Address" />
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="password">Password* :</label>
                                                            <springform:input type="password" path="pswd" class="form-control disable" placeholder="Enter password" readonly="true" />
                                                            <springform:errors class="error" type="text" path="pswd" />
                                                        </div>

                                                        <div style="text-align:center;">
                                                            <input type="submit" name="submit" value="Update" class="btn custom-button mb-4 updateBtn"  />
                                                        </div>

                                                </div>

                                            </springform:form>
                                        </core:when>
                                        <core:otherwise>
                                           <jsp:forward page="invalidLogin.jsp" />

                                        </core:otherwise>
                                    </core:choose>

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

            <script>
            $(document).ready(function() {
                $(".updateBtn").attr("disabled",true);

               $("#edit").click(function(){

            	$(".disable").attr("readonly",false);
            	    $(".updateBtn").attr("disabled",false);
            	    $(".updateBtn").css("background-color","#587ffc");
                });

            });
            </script>

            </html>