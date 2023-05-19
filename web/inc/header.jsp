<%-- 
    Document   : header.jsp
    Created on : Dec 10, 2022, 4:41:56 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header>
    <div class="header-top">
        <div class="container">
            <div class="left-header-top">
                <span class="font-all">Welcome to our online store!</span>
                <div class="lang-header-top">
                    <button class="lang-button">
                        <span class="lang font-all"><img src="./public/images/en.png" alt=""> English <i class="fa-solid fa-chevron-down"></i>
                            <ul class="lang-menu">
                                <li><a href="#"><img src="./public/images/de.png" alt=""> German</a></li>
                                <li><a href="#"><img src="./public/images/it.png" alt=""> Italian</a></li>
                                <li><a href="#"><img src="./public/images/hi.png" alt=""> Hindi</a></li>
                            </ul>   
                        </span>
                    </button>
                </div>
            </div>
            <div class="right-header-top">
                <div class="right-header-contact">
                    <ul class="contact">
                        <li>
                            <a href="">
                                <span><i class="fa-regular fa-envelope"></i></span>
                                <span class="email">contact@example.com</span>
                            </a>
                        </li>
                        <li>
                            <c:if test="${sessionScope.user == null}">
                                <a href="LoginServlet">
                                    <span class="login">Login</span>
                                </a>
                            </c:if>
                            <c:if test="${sessionScope.user != null}">
                                <a href="LogoutServlet">
                                    <span class="login">Logout</span>
                                </a>
                            </c:if>
                            
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="header-search" id="header-search-fixed">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="header-logo">
                        <a href="HomeServlet" class="logo-image">
                            <img
                                width="auto"
                                height="auto"
                                src="./public/images/logo (1).svg"
                                alt="Organey Logo"
                                style="max-width: 180px"
                                />
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="search_wrap">
                        <form class="search_box" action="ProductSearchServlet" method="get">
                            <input type="text" class="input" placeholder="Search product" name="search">
                            <button class="btn" type="submit">
                                <p>Search</p>
                            </button>
                        </form>

                    </div>
                </div>
                <div class="col-md-3">
                    <div class="wishlist-cart">
                        <div class="wishlist-box">
                            <a href="header-wishlist">
                                <i class="fa-regular fa-heart"></i>
                            </a>
                        </div>
                        <div class="cart-box">
                            <a href="CartServlet">
                                <i class="fa-solid fa-bag-shopping"></i>
                                <span class="money">
                                    $ ${total}
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<section class="header-menu-section">
    <div class="header-menu">
        <div class="header-menu-content">
            <div class="container">
                <div class="row">
                    <div class="col-md-2">
                        <div class="vertical-menu">
                            <nav class="vertical-navigation">
                                <div class="vertical-navigation-header">
                                    <i class="lni lni-menu"></i>
                                    <span>All Categories</span>
                                </div>
                                <div class="vertical-menu-drop">
                                    <ul class="vertical-droplist">
                                        <c:forEach items="${categoryList}" var="category">
                                            <li class="vertical-droplist-item font-all"> <i class="fa-solid fa-leaf"></i> <span><a class="category-link" href="CategoryDetailServlet?categoryId=${category.id}" style="text-decoration: none; color: #5c9963;">${category.name}</a></span>
                                            </li>
                                        </c:forEach>>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="menu-bar">
                            <ul class="menu">
                                <li class="menu-item"><nav class="menu-bar-sublist">Home <i class="fa-solid fa-chevron-down"></i>
                                        <div class="dropdown-list">
                                            <ul class="menu-dropdown">
                                                <li class="menu-dropdown-item">Home layout 1</li>
                                                <li class="menu-dropdown-item">Home layout 2</li>
                                                <li class="menu-dropdown-item">Home layout 3</li>
                                                <li class="menu-dropdown-item">Home layout 4</li>
                                                <li class="menu-dropdown-item">Home layout 5</li>
                                                <li class="menu-dropdown-item">Home layout 6</li>
                                                <li class="menu-dropdown-item">Home layout 7</li>
                                            </ul>
                                        </div>
                                    </nav> 
                                </li>
                                <li class="menu-item">Shop</li>
                                <li class="menu-item">Pages</li>
                                <li class="menu-item">Blog</li>
                                <li class="menu-item">Contact</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="phone-item">
                            <div class="phone">
                                <i class="fa-solid fa-headset" style="color: white"></i>
                                <a href="tel:1-800-234-5678" style="color: #ffa900"> 1-800-234-5678 </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</header>
