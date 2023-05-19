<%-- 
    Document   : home
    
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="https://cdn.lineicons.com/3.0/lineicons.css" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
        <link rel="stylesheet" href="./public/css/style.css" />
        <!-- CSS only -->
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
            integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
            crossorigin="anonymous"
            />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
            integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <title>Organey</title>
    </head>
    <body>
        <div class="wrapper">
            <!--Header-->
            <%@include file="./inc/header.jsp" %>
            <!--Wrapper-->
            <div class="wrapper-content">

                <div class="login-header">
                    <div class="login-outer-container">
                        <div class="container">
                            <div>
                                <h1>Login</h1>
                            </div>
                            <div>
                                Home > Login
                            </div>
                        </div>
                    </div>
                </div>
                <div class="login-main">
                    <div class="container" style="height: 500px; max-height: 600px">
                        <div class="login-form row">

                            <form action="LoginServlet" method="post">
                                <div><h2>LOGIN</h2></div>
                                ${error}
                                <div class="login-email">
                                    <label for="">Enter your email</label>
                                    <input type="email" name="email" value="" placeholder="Email">
                                </div>
                                <div class="login-password">
                                    <label for="">Enter your password</label>
                                    <input type="password" name="password" value="" placeholder="Password">
                                </div>
                                <button type="submit" class="login-button" style="margin-bottom: 15px;">Sign In</button>
                                <p class="message" style="text-align:center">Don't Have an Account? <a href="RegisterServlet">Click Here!</a></p>
                            </form>
                        </div>
                    </div>
                    <div class="container container-error" style="margin-top: 20px">
                        <c:if test="${sessionScope.errors != null}">
                            <p>
                                ${sessionScope.errors}
                                <c:remove var="errors" />
                            </p>
                        </c:if>
                    </div>
                </div>
            </div>

            <!--Footer-->
            <%@include file="./inc/footer.jsp" %>
        </div>
    </body>
</html>


