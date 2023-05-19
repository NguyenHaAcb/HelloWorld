<%-- 
    Document   : footer
    Created on : Dec 10, 2022, 4:45:57 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="./public/css/style.css" />

<footer>
    <section class="footer-box">
        <div class="footer-main">
            <div class="container sign-up-container">
                <div class="col-md-6 footer-email-header">
                    <div class="footer-mail-icon"><i class="fa-regular fa-envelope"></i></div>
                    <h2>SIGN UP FOR NEWSLETTERS</h2>
                </div>
                <div class="col-md-6 footer-email-form">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-9"><input type="text" value="Email address" class="footer-email-input"></div>
                            <div class="col-md-3"><input type="submit" value="Subcribe" class="footer-email-subcribe"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container footer-contact-container">
                <div class="row footer-contact-row">
                    <div class="col-md-3 footer-contact-item">
                        <h2 class="footer-contact-header">STORE LOCATION</h2>
                        <div class="footer-contact-address">9066 Green Lake Drive Chevy Chase, MD 20815</div>
                        <div class="footer-contact-list">
                            <ul>
                                <li><a href="#">contact@example.com</a></li>
                                <li><a href="#">(1800)-88-66-991</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 footer-contact-item">
                        <h2 class="footer-contact-header">INFORMATION</h2>
                        <div class="footer-contact-list">
                            <ul>
                                <li>About us</li>
                                <li>Blog</li>
                                <li>Check out</li>
                                <li>Contact</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 footer-contact-item">
                        <h2 class="footer-contact-header">MY ACCOUNT</h2>
                        <div class="footer-contact-list">
                            <ul>
                                <li>My account</li>
                                <li>Contact</li>
                                <li>Shop</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 footer-contact-item">
                        <h2 class="footer-contact-header">CATEGORIES</h2>   
                        <div class="footer-contact-list">
                            <ul>
                                <li>Fruits & Vegetables</li>
                                <li>Dairy Products</li>
                                <li>Package Foods</li>
                                <li>Beverages</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-copyright"></div>
    </section>
</footer>