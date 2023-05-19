<%-- 
    Document   : home.jsp
    Created on : Apr 7, 2023, 8:24:58 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List, ha.dev.data.dao.model.Product" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
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
        <%@include file="./inc/header.jsp" %>
        <!--Wrapper-->
        <div class="wrapper-content">
            <section class="slide-image">
                <image src="./public/images/slide.png" alt=""/>
            </section>
            <section class="category">
                <div class="container ">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="category-wrap category-one">
                                <div class="category-header font-all"><a href="CategoryDetailServlet?categoryId=2"><h2>Fruits & Vetetables</h2></a></div>
                                <div class="category-content">
                                    <ul class="category-menu">
                                        <li class="category-menu-item font-all"><i class="fa-solid fa-circle"></i> Nut & Seed</li>
                                        <li class="category-menu-item font-all"><i class="fa-solid fa-circle"></i> Tomatoes</li>
                                        <li class="category-menu-item font-all"><i class="fa-solid fa-circle"></i> Soup</li>
                                        <li class="category-menu-item font-all"><i class="fa-solid fa-circle"></i> Apples</li>
                                        <li class="category-menu-item font-all"><i class="fa-solid fa-circle"></i> Oils</li>
                                    </ul> 
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="category-wrap category-two">
                                <div class="category-header font-all"><a href="CategoryDetailServlet?categoryId=2"><h2>Dairy Products</h2></a></div>
                                <div class="category-content">
                                    <ul class="category-menu">
                                        <li class="category-menu-item font-all"><i class="fa-solid fa-circle"></i> Apples</li>
                                        <li class="category-menu-item font-all"><i class="fa-solid fa-circle"></i> Oils</li>
                                        <li class="category-menu-item font-all"><i class="fa-solid fa-circle"></i> Tomatoes</li>
                                        <li class="category-menu-item font-all"><i class="fa-solid fa-circle"></i> Nut & Seed</li>
                                        <li class="category-menu-item font-all"><i class="fa-solid fa-circle"></i> Soup</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="category-wrap category-three">
                                <div class="category-header font-all"><a href="CategoryDetailServlet?categoryId=2"><h2>Package Foods</h2></a></div>
                                <div class="category-content">
                                    <ul class="category-menu">
                                        <li class="category-menu-item font-all"><i class="fa-solid fa-circle"></i> Dried Apples</li>
                                        <li class="category-menu-item font-all"><i class="fa-solid fa-circle"></i> Canned Fruits</li>
                                        <li class="category-menu-item font-all"><i class="fa-solid fa-circle"></i> Tomatoes</li>
                                        <li class="category-menu-item font-all"><i class="fa-solid fa-circle"></i> Nut & Seed</li>
                                        <li class="category-menu-item font-all"><i class="fa-solid fa-circle"></i> Oils</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="category-wrap category-four">
                                <div class="category-header font-all"><a href="CategoryDetailServlet?categoryId=2"><h2>Beverages</h2></a></div>
                                <div class="category-content">
                                    <ul class="category-menu">
                                        <li class="category-menu-item font-all"><i class="fa-solid fa-circle"></i> Nut & Seed</li>
                                        <li class="category-menu-item font-all"><i class="fa-solid fa-circle"></i> Nut & Seed</li>
                                        <li class="category-menu-item font-all"><i class="fa-solid fa-circle"></i> Apple Juice</li>
                                        <li class="category-menu-item font-all"><i class="fa-solid fa-circle"></i> Nut Milk</li>
                                        <li class="category-menu-item font-all"><i class="fa-solid fa-circle"></i> </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="flashsale-category">
                <div class="container container-flashsale">
                    <div class="container container-header">
                        <div class="row">
                            <div class="col-md-6 flashsale-header font-all">
                                <h2>Today Flash Sales</h2>
                            </div>
                            <div class="col-md-6 flashsale-content">
                                <p class="end-in">Ends in : </p><p> 30d : 22h : 19m : 17s</p>
                            </div>
                        </div>
                    </div>
                    <div class="container container-highlight">
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-11"></div>
                        </div>
                    </div>
                    <div class="container container-content product-sale-contain">
                        <div class="row product-sale">
                            <c:forEach items="${productList}" var="product" begin="0" end="5">
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
                                            <input type="hidden" name="productId" value="${product.id}"/>
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
            <section class="commercial" style="margin-top: 30px">
                <div class="commercial-container">
                    <div class="commer-item commer-item-1">
                        <div class="commer-content">
                            <h2>Vegan 
                                <br>
                                Restaurants
                            </h2>
                            <div class="commer-sale">-35% Off</div>
                            <div class="commer-shop">Shop now <i class="fa-solid fa-arrow-right"></i></div>
                        </div>
                    </div>
                    <div class="commer-item commer-item-2">
                        <div class="commer-content">
                            <h2>Fresh vegetable
                                <br>
                                Fruit basket 
                            </h2>
                            <div class="commer-sale">-35% Off</div>
                            <div class="commer-shop">Shop now <i class="fa-solid fa-arrow-right"></i></div>
                        </div>
                    </div>
                    <div class="commer-item commer-item-3">
                        <div class="commer-content">
                            <h2>Every
                                <br>
                                Weekend
                            </h2>
                            <div class="commer-sale">-35% Off</div>
                            <div class="commer-shop">Shop now <i class="fa-solid fa-arrow-right"></i></div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="recommend" style="margin-bottom: 100px;">
                <div class="container container-header">
                    <div class="row">
                        <div class="flashsale-header">
                            <h2>Recommend For You</h2>
                        </div>
                    </div>
                </div>
                <div class="container container-highlight">
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-11"></div>
                    </div>
                </div>
                <div class="container container-content product-sale-contain recommend-container">
                    <div class="row product-sale recommend-product">

                    </div>
                </div>
            </section>
        </div>
        <div class="container">
            <div>
                <h2 style="font-size: 30px; font-weight:600; font-family: Poppins; text-align:center; margin-bottom: 30px">Latest Update</h2>
            </div>
            <div class="latest-update-block">
                <div class="latest-update">
                    <image src="./public/images/blog-1-650x450_540x.webp" alt="">
                </div>
                <div class="latest-update">
                    <image src="./public/images/blog-2-650x450_540x.webp" alt="">
                </div>
                <div class="latest-update">
                    <image src="./public/images/blog-3-650x450_540x.webp" alt="">
                </div>
            </div>
            <div class="article-content-block">
                <div class="article-content">
                    <div class="article-content-item">
                        <div class="art-date">
                            <span><i class="fa-regular fa-calendar"></i></span>
                            <span>February, 24 2002</span>
                        </div>
                        <div class="author">
                            <span><i class="fa-regular fa-user"></i></span>
                            <span>John Smith</span>
                        </div>
                        <div class="comment">
                            <span><i class="fa-regular fa-comment"></i></span>
                            <span>0</span>
                        </div>
                    </div>
                    <div class="article-header">Fresh strawberries in the house</div>
                </div>
                <div class="article-content">
                    <div class="article-content-item">
                        <div class="art-date">
                            <span><i class="fa-regular fa-calendar"></i></span>
                            <span>February, 24 2002</span>
                        </div>
                        <div class="author">
                            <span><i class="fa-regular fa-user"></i></span>
                            <span>John Smith</span>
                        </div>
                        <div class="comment">
                            <span><i class="fa-regular fa-comment"></i></span>
                            <span>0</span>
                        </div>
                    </div>
                    <div class="article-header">New fish recipes for this autumn</div>
                </div>
                <div class="article-content">
                    <div class="article-content-item">
                        <div class="art-date">
                            <span><i class="fa-regular fa-calendar"></i></span>
                            <span>February, 24 2002</span>
                        </div>
                        <div class="author">
                            <span><i class="fa-regular fa-user"></i></span>
                            <span>John Smith</span>
                        </div>
                        <div class="comment">
                            <span><i class="fa-regular fa-comment"></i></span>
                            <span>0</span>
                        </div>
                    </div>
                    <div class="article-header">Chill with our new drinks</div>
                </div>
            </div>
        </div>

        <%@include file="./inc/footer.jsp" %>

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

