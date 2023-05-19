<%-- 
    Document   : home
    Created on : Dec 10, 2022, 4:47:00 PM
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
                <div class="product-path">
                    <div class="container">
                        <a href="index.html">Home</a> > Uncategorized > Papaya Single
                    </div>
                </div>
                <div class="product-info">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 product-image-info">
                                <div>
                                    <image src="${product.image}" alt="" class="product-big-image" height="622px" width="615px">
<!--                                    <div class="product-mini-pic">
                                        <div class="product-pic-content">
                                            <image src="${product.image}" alt="" class="product-small-image" width="90px" height="90px">
                                            <image src="${product.image}" alt="" class="product-small-image" width="90px" height="90px">
                                            <image src="${product.image}" alt="" class="product-small-image" width="90px" height="90px">
                                            <image src="${product.image}" alt="" class="product-small-image" width="90px" height="90px">
                                            <image src="${product.image}" alt="" class="product-small-image" width="90px" height="90px">
                                        </div>
                                    </div>-->
                                </div>
                            </div>
                            <div class="col-md-6 product-detail-info">
                                <h1 class="font-all">${product.name}</h1>
                                <div class="product-detail-rating">
                                    <div class="product-detail-rating-content">
                                        <div class="product-star">
                                            <span><i class="fas fa-star"></i></span>
                                            <span><i class="fas fa-star"></i></span>
                                            <span><i class="fas fa-star"></i></span>
                                            <span><i class="fas fa-star"></i></span>
                                            <span><i class="fas fa-star"></i></span>
                                        </div>
                                        <div class="product-view">( 5 Customer Review )</div>
                                    </div>
                                </div>
                                <div class="product-price">
                                    <p class="product-price-item product-price-one">$${product.price}</p>
                                    <p class="product-price-item product-price-two">$55.00</p>
                                </div>
                                <div class="product-desc">
                                    <div class="product-desc-list">
                                        <ul class="product-desc-ul font-all">
                                            <li class="product-desc-item">Free from the confines of wires and chords</li>
                                            <li class="product-desc-item">Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>
                                            <li class="product-desc-item">3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li>
                                        </ul>
                                    </div>
                                </div>
                                <p class="available-text font-all">Available on backorder</p>
                                <div action="" class="product-form-content">
                                    <form action="CartServlet" method="post">
                                        <div class="product-quantity-button" style="display: inline;">
                                            <input type="number" min="1" step="1" class="input-quantity" value="1" style="text-align:center;" name="quantity">
                                        </div>
                                        <input type="hidden" name="productId" value="${product.id}"/>
                                        <input type="hidden" name="quantity" value="1"/>
                                        <input type="hidden" name="action" value="create"/>
                                        <button type="submit" class="add-to-cart-butt">Add to cart</button>
                                    </form>
                                </div>
                                <div class="wish-compare">
                                    <button class="wish-compare-butt wishlist-butt"><i class="fa-regular fa-heart"></i> Add to wishlist</button>
                                    <button class="wish-compare-butt compare-butt"><i class="fa-solid fa-code-compare"></i> Compare</button>
                                </div>
                                <div class="credit-content">
                                    <span>Guarantee Safe Checkout</span> <br>
                                    <image src="./public/images/credit-300x17.jpg" alt="credit">
                                </div>
                                <div class="desc-remain font-all">
                                    <span>SKU: gorgeous-iron-computer-10479353</span> 
                                    <span>Categories: Fruits, Uncategorized</span> 
                                    <span>Tag: fruits</span>
                                </div>
                                <div class="product-social">
                                    <div class="product-social-content">
                                        <a href="https://www.facebook.com/">
                                            <i class="fa-brands fa-square-facebook"></i>
                                        </a>
                                        <a href="https://twitter.com/home">
                                            <i class="fa-brands fa-square-twitter"></i>
                                        </a>
                                        <a href="https://www.linkedin.com/">
                                            <i class="fa-brands fa-linkedin"></i>
                                        </a>
                                        <a href="https://www.pinterest.com/">
                                            <i class="fa-brands fa-square-pinterest"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-description-full">
                    <div class="container prod-des-content">
                        <div class="row prod-des-header">
                            <div class="col-md-12 prod-des-title font-all">DESCRIPTION</div>
                        </div>
                        <div class="prod-des-container font-all">
                            <div class="prod-des-text">
                                <p>Stock up on the perfect afternoon snack, lunchtime side or baking choice with a Three-Pound Bag of Honeycrisp Apples from Good & Gather™. Boasting the perfect blend of sweet and crisp flavors, these delicious Honeycrisp apples promise to hit the spot when you’re craving something fresh and tasty, and the crisp, juicy texture is sure to satisfy.</p>
                                <p>Every product that carries the Good & Gather™ name starts with quality ingredients that deliver great taste, making it easier for you and your family to eat well, every day. We promise you’ll love each bite, or your money back.</p>
                                <div class="prod-des-specs-header">
                                    <p>Item specifics</p>
                                </div>
                            </div>
                            <div class="row prod-des-specs">
                                <div class="col-md-6">
                                    <ul>
                                        <li>Origin: Thailand</li>
                                        <li>Packing: 400g pack</li>
                                        <li>Storage way: room temperature</li>
                                        <li>Expiry date: 1 week</li>
                                        <li>Summary: PP+ iron material, thick legs, strong bearing capacity, stable and firm, foldable, free to open and close, no space to carry, non-slip mat on the bottom, not easy to slip, easy to carry at home and outdoor, easy to carry</li>
                                    </ul>
                                </div>
                                <div class="col-md-6">
                                    <ul>
                                        <li>General Use: Outdoor Furniture</li>
                                        <li>Specific Use: Beach Chair</li>
                                        <li>Appearance: Modern</li>
                                        <li>Size: 23.5*32*5cm</li>
                                        <li>Style: FOLDING CHAIR</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-related">
                    <div class="container container-header" style="margin-top: 40px;">
                        <div class="row">
                            <div class="flashsale-header font-all" style="font-weight: 600; font-size: 24px;">
                                <h2>Related product</h2>
                            </div>
                        </div>
                    </div>
                    <div class="container container-highlight" style="margin-bottom: 30px;">
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-11"></div>
                        </div>
                    </div>
                    <div class="container" style="padding-left: 0; padding-right: 0; margin-bottom: 50px;">
                        <div class="row product-sale recommend-product" style="margin-bottom: 100px;">
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
            </div><!--Footer-->
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

