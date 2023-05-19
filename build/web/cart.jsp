<%-- 
    Document   : home
    Created on : Dec 10, 2022, 4:47:00 PM
    Author     : admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
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
                                <h1>Cart</h1>
                            </div>
                            <div>
                                Home > Cart
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <table class="shop-table">
                                <thead>
                                    <tr>
                                        <th class="product-image center" width="13%" style="text-align: center;">&nbsp;</th>
                                        <th class="product-name-cart center" width="25%">PRODUCT</th>
                                        <th class="product-price-cart center">PRICE</th>
                                        <th class="product-quantity center">QUANTITY</th>
                                        <th class="product-subtotal center">TOTAL</th>
                                        <th class="product-remove center">&nbsp;</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${cart}" var="orderDetailSession">
                                        <tr>
                                            <td class="product-image"><image src="${orderDetailSession.productImg}" alt="Product Image" width="98px" height="98px"></td>
                                            <td class="product-name-cart">${orderDetailSession.productName}</td>
                                            <td class="product-price-cart">$${orderDetailSession.productPrice}</td>
                                            <td class="product-quantity">
                                                <div class="product-quants-block">
                                                    <form action="CartServlet" method="post">
                                                        <input type="hidden" name="productId" value="${orderDetailSession.productId}"/>
                                                        <input type="hidden" name="action" value="update"/>
                                                        <input type="hidden" name="quantity" value="-1"/>
                                                        <button class="product-minus">-</button>
                                                    </form>
                                                        <div class="product-quants">${orderDetailSession.quantity}</div>
                                                    <form action="CartServlet" method="post">
                                                        <input type="hidden" name="productId" value="${orderDetailSession.productId}"/>
                                                        <input type="hidden" name="action" value="update"/>
                                                        <input type="hidden" name="quantity" value="1"/>
                                                        <button class="product-plus">+</button>
                                                    </form>
                                                </div>
                                            </td>
                                            <td class="product-subtotal">$${orderDetailSession.quantity * orderDetailSession.productPrice}</td>
                                            <td class="product-remove">
                                                <form action="CartServlet" method="post" class="delete">
                                                    <input type="hidden" name="productId" value="${orderDetailSession.productId}"/>
                                                    <input type="hidden" name="action" value="delete"/>
                                                    <button type="submit"><i class="fa-regular fa-trash-can"></i></button>
                                                </form>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <div class="cart-coupon">
                                <label for="">Coupon:</label>
                                <input class="coupon-input" type="text" placeholder="Example: SPF2100">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="cart-summary">
                                <div clas="cart-total">
                                    <h2 class="cart-summary-header" style="font-size: 18px; font-weight: 600;">CART TOTALS</h2>
                                    <div class="cart-total-block">
                                        <span class="cart-total-heading" style="font-weight: 600;">Subtotal</span>
                                        <span>$${total}</span>
                                    </div>  
                                    <div class="cart-total-block">
                                        <span class="cart-total-heading" style="font-weight: 600;">Total</span>
                                        <span class="cart-total-price">$${total}</span>
                                    </div>
                                    <div class="cart-checkout">
                                        <a href="CheckOutServlet">Check Out</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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

