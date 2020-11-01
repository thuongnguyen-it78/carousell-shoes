<%@ page import="thuongnguyen.it78.models.Account" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
    <div class="offcanvas__option">
        <div class="offcanvas__links">
            <a href="/contact.html"> Tìm cửa hàng</a>
            <a href="/contact.html"> Yêu thích</a>
            <a href="/login.html"> Đăng nhập</a>
            <a href="/signup.html"> Đăng kí</a>
        </div>
        <!-- <div class="offcanvas__top__hover">
            <span>Usd <i class="arrow_carrot-down"></i></span>
            <ul></ul>
        </div> -->
    </div>
    <div class="offcanvas__nav__option">
        <a href="#" class="search-switch"><img src="/resources/img/icon/search.png" alt=""></a>
        <a href="/contact.html"><img src="/resources/img/icon/heart.png" alt=""></a>
        <a href="/shopping-cart.html"><img src="/resources/img/icon/cart.png" alt=""> <span>0</span></a>
    </div>
    <div id="mobile-menu-wrap"></div>
    <div class="offcanvas__text">
        <p>Có nhiều sự lựa chọn! Cảm ơn bạn đã đến với chúng tôi.</p>
    </div>
</div>
<!-- Offcanvas Menu End -->

<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-7">
                    <div class="header__top__left">
                        <p>Có nhiều sự lựa chọn! Cảm ơn bạn đã đến với chúng tôi.</p>
                    </div>
                </div>
                <div class="col-lg-7 col-md-5">
                    <div class="header__top__right">
                    <%
                        Account account1 = (Account) session.getAttribute("account");
                    %>

                    <%
                        if(account1 == null) {
                    %>

                        <div class="header__top__links">
                            <a href="/contact.html"><img src="/resources/img/optimization/icon_tim_cua_hang.svg" alt=""> Tìm cửa hàng</a>
                            <a href="/contact.html"><img src="/resources/img/optimization/icon_heart_header.svg" alt=""> Yêu thích</a>
                            <a href="/login.html"><img src="/resources/img/optimization/icon_dang_nhap.svg" alt=""> Đăng nhập</a>
                            <a href="/signup.html"><img src="/resources/img/optimization/icon_dang_nhap.svg" alt=""> Đăng kí</a>
                            <!-- <a href="#"><img src="/resources/img/optimization/icon_gio_hang.svg" alt=""> Giỏ hàng <span>(0)</span></a> -->
                        </div>
    <%
        } else {
    %>
                         <div class="header__top__hover">
                            <img src="/resources/img/site/default.jpg" alt=""> <span><%= account1.getAccountEmail()%></span>
                            <ul>

                                <li>Thông tin tài khoản</li>
                                <li>Thông tin tài khoản</li>
                                <li>Thông tin tài khoản</li>
                            </ul>
                        </div>


                    <%
                        }
                    %>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3">
                <div class="header__logo">
                    <a href="/index.html"><img src="/resources/img/site/logo.svg" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <nav class="header__menu mobile-menu">
                    <ul>
                        <li class="active"><a href="/shop.html">SẢN PHẨM</a></li>
                        <li><a href="/shop.html">GIÀY NAM</a></li>
                        <li><a href="/shop.html">GIÀY NỮ</a></li>
                        <li><a href="/shop.html">SALES</a></li>
                        <li><a href="/shop.html">KHÁC</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3 col-md-3">
                <div class="header__nav__option">
                    <a href="#" class="search-switch"><img src="/resources/img/icon/search.png" alt=""></a>
                    <a href="/contact.html"><img src="/resources/img/icon/heart.png" alt=""></a>
                    <a href="/shopping-cart.html"><img src="/resources/img/icon/cart.png" alt=""><span>0</span></a>
                </div>
            </div>
        </div>
        <div class="canvas__open"><i class="fa fa-bars"></i></div>
    </div>
</header>
<!-- Header Section End -->

