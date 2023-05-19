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
                                <h1>Category</h1>
                            </div>
                            <div>
                                Home Category
                            </div>
                        </div>
                    </div>
                </div>
                <section class="flashsale-category">
                    <div class="container container-flashsale">

                        <div class="container container-content product-sale-contain">
                            <div class="row product-sale">
                                <c:forEach items="${productList}" var="product">
                                    <div class="col">

                                        <div class="product-single">
                                            <div class="product-background"></div>
                                            <!-- product image -->
                                            <div class="product-image">
                                                <image src="${product.image}" class="product-image-content" alt="">
                                                <div class="product-action">
                                                    <div class="product-action-icon">
                                                        <a href="#" class="product-action-search ">
                                                            <i class="fas fa-search"></i>
                                                        </a>
                                                    </div>
                                                    <div class="product-action-icon">
                                                        <a href="#" class="product-action-wishlist ">
                                                            <i class="far fa-heart"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- product image end-->

                                            <!-- product-content -->
                                            <div class="product-content">
                                                <a href="ProductDetailServlet?product_id=${product.id}">
                                                    <h4 class="product-name font-all">${product.name}</h4>
                                                </a>
                                                <div class="product-price">
                                                    <p class="product-price-item product-price-one">$${product.price}</p>
                                                    <p class="product-price-item product-price-two">$55.00</p>
                                                </div>
                                                <div class="product-rating">
                                                    <div class="product-rating-content">
                                                        <span><i class="fas fa-star"></i></span>
                                                        <span><i class="fas fa-star"></i></span>
                                                        <span><i class="fas fa-star"></i></span>
                                                        <span><i class="fas fa-star"></i></span>
                                                        <span><i class="fas fa-star"></i></span>
                                                    </div>
                                                    <div class="product-rating-quantity">(150)</div>
                                                </div>
                                            </div>
                                            <form action="CartServlet" method="post">
                                                <input type="hidden" name="product_id" value="${product.id}"/>
                                                <input type="hidden" name="quantity" value="1"/>
                                                <input type="hidden" name="action" value="create"/>
                                                <button type="submit" class="product-addcart">Add to cart</button>
                                            </form>
                                            <!-- product-content end-->
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </section>
            </div>

            <!--Footer-->
            <%@include file="./inc/footer.jsp" %>
        </div>
    </body>
</html>
<script>
    window.onscroll = function () {
        myFunction();
    };

    var header = document.getElementById("header-search-fixed");
    var sticky = header.offsetTop;

    function myFunction() {
        if (window.pageYOffset > sticky) {
            header.classList.add("sticky");
            header.classList.add("shadow");
        } else {
            header.classList.remove("sticky");
            header.classList.remove("shadow");
        }
    }
</script>

