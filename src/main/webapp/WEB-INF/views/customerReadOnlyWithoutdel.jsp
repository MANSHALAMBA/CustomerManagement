<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
        <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "springform"%>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Customer Read Only without delete</title>
                <!-- Latest compiled and minified CSS -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
            </head>

            <style>
                .user-table {
                    overflow-x: auto;
                }

                .user-table thead tr {
                    color: white;
                    background-color: #587ffc;
                }

                .user-table table tbody tr:nth-child(odd) {
                    background-color: #ffe8e8;
                }

                .user-table table tbody tr:nth-child(even) {
                    background-color: #dbe3fd;
                }

                .user-table table tbody tr:nth-child(odd):hover {
                    background-color: #fcc8c8;
                }

                .user-table table tbody tr:nth-child(even):hover {
                    background-color: #c3d0fc;
                }

                .search-box {
                    width: 70%;
                    text-align: center;
                    margin: 40px auto;
                    border-radius: 100px;
                    border: 2px solid #587ffc;
                    padding: 2px;
                    box-shadow: 0px 5px 20px 5px #587ffc;
                }

                .search-box input {
                    height: 50px;
                    width: 70%;
                    border-radius: 50px !important;
                    border: 1px solid #0000ff05 !important;
                    font-size: 20px;
                }

                .search-button {
                    font-size: 20px;
                    color: white;
                    padding: 0px 35px;
                    border-radius: 50px !important;
                    background-color: #ff8692;
                    transition: background-color 0.2s ease-in;
                }

                .search-button:hover {
                    background-color: #587ffc;
                    color: white;
                }

                @media screen and (max-width:576px) {
                    .search-box {
                        width: 95%;
                    }
                    .search-box input {
                        height: 45px;
                        width: 80%;
                        font-size: 16px;
                    }
                    .search-button {
                        font-size: 16px;
                        font-weight: 500px;
                        padding: 0px 25px;
                    }
                    .collapse {
                        float: none;
                    }
                }
            </style>

            <body>
                <!-- section start -->
                <section>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">

                                 <div style="text-align: right;padding-right: 20px;">
                                      <a href="<core:url value='/home'/>" class="btn btn-primary mt-4">Logout</a>
                                  </div>


                                <form action="">
                                    <div class="input-group search-box">
                                        <input id="user-search" type="text" class="form-control" placeholder="Search user">
                                    </div>
                                </form>



                                <div class="user-table">
                                    <table id="user-table" class="table table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th>Reg. ID</th>
                                                <th>Name</th>
                                                <th>Address</th>
                                                <th>Email ID</th>
                                                <th>Contact</th>
                                                <th>Status</th>

                                            </tr>
                                        </thead>
                                        <tbody>

                                            <core:choose>
                                                <core:when test="${!customers.isEmpty()}">

                                                    <core:forEach items="${customers}" var="customer">
                                                        <tr>
                                                            <td>${customer.registrationId}</td>
                                                            <td>${customer.name}</td>
                                                             <td>${customer.getAddress()}</td>
                                                            <td>${customer.email}</td>
                                                            <td>${customer.contactNumber}</td>

                                                            <td>${customer.status}</td>

                                                        </tr>
                                                    </core:forEach>

                                                </core:when>
                                                <core:otherwise>
                                                    No customers found.

                                                </core:otherwise>
                                            </core:choose>


                                        </tbody>
                                    </table>
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
            <script>
                $(document).ready(function() {
                    $("#user-search").on("keyup", function() {
                        var value = $(this).val().toLowerCase();
                        $("#user-table tbody tr").filter(function() {
                            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                        });
                    });
                });
            </script>

            </html>