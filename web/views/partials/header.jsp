<%@ page import="thuongnguyen.it78.models.Account" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>


<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
    <div class="offcanvas__option">
        <div class="offcanvas__links">
            <a href="/contact-us"> Tìm cửa hàng</a>
            <a href="/about-us"> Yêu thích</a>
            <!-- <a href="/login.html"> Đăng nhập</a>
            <a href="/signup.html"> Đăng kí</a> -->
            <div class="header__navbar-item header__navbar-user">

                <img src="/resources/img/site/default.jpg" alt="" class="header__navbar-user-img">
                <span class="header__navbar-user-name">Thường Nguyễn</span>

                <ul class="header__navbar-user-menu">

                    <li class="header__navbar-user-item"><a href="/me/info">Tài khoản của tôi</a></li>
                    <li class="header__navbar-user-item"><a href="/me/password">Đổi mật khẩu</a></li>
                    <li class="header__navbar-user-item"><a href="/me/cart">Đơn mua</a></li>
                    <li class="header__navbar-user-item header__navbar-user-item--separate"><a href="/me/logout">Đăng xuất</a></li>

                </ul>

            </div>
        </div>
    </div>
    <div class="offcanvas__nav__option">
        <a href="#" class="search-switch"><img src="/resources/img/icon/search.png" alt=""></a>
        <a href="/me/contact"><img src="/resources/img/icon/heart.png" alt=""></a>
        <a href="/me/cart"><img src="/resources/img/icon/cart.png" alt=""> <span>0</span></a>
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
                        <div class="header__top__links">
                            <a href="/me/contact"><img src="/resources/img/optimization/icon_tim_cua_hang.svg" alt=""> Tìm cửa hàng</a>
                            <a href="/me/contact"><img src="/resources/img/optimization/icon_heart_header.svg" alt=""> Yêu thích</a>

                            <%
                                Account accountLegal = (Account) session.getAttribute("account");
                            %>

                            <%
                                if(accountLegal == null) {
                            %>

                            <a href="/account/login"><img src="/resources/img/optimization/icon_dang_nhap.svg" alt=""> Đăng nhập</a>
                            <a href="/account/register"><img src="/resources/img/optimization/icon_dang_nhap.svg" alt=""> Đăng kí</a>
                            <!-- <a href="/me/cart"><img src="/resources/img/optimization/icon_gio_hang.svg" alt=""> Giỏ hàng <span>(0)</span></a> -->

                            <%
                            } else {
                            %>


                            <div class="header__navbar-item header__navbar-user">

                                <img src="/resources/img/site/default.jpg" alt="" class="header__navbar-user-img">
                                <span class="header__navbar-user-name"><%= accountLegal.getAccountFullName()%></span>

                                <ul class="header__navbar-user-menu">

                                    <li class="header__navbar-user-item"><a href="/me/info">Tài khoản của tôi</a></li>
                                    <li class="header__navbar-user-item"><a href="/me/password">Đổi mật khẩu</a></li>
                                    <li class="header__navbar-user-item"><a href="/me/cart">Đơn hàng</a></li>
                                    <li class="header__navbar-user-item header__navbar-user-item--separate"><a href="/me/logout">Đăng xuất</a></li>

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
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3">
                <div class="header__logo">
                    <a href="/"><img src="/resources/img/site/logo.svg" alt=""></a>
                </div>
            </div>
            <div class="col-lg-7 col-md-7">
                <nav class="header__menu mobile-menu">
                    <ul>
                        <li class="active"><a href="/product-list">SẢN PHẨM</a></li>
                        <li><a href="/product-list?gender=1">GIÀY NAM</a></li>
                        <li><a href="/product-listgender=2">GIÀY NỮ</a></li>
                        <li><a href="/product-list">DANH MỤC</a>
                            <ul class="dropdown">
                                <li><a href="/product-list?category=1">BASAS</a></li>
                                <li><a href="/product-list?category=2">VINTAS</a></li>
                                <li><a href="/product-list?category=3">URBAS</a></li>
                                <li><a href="/product-list?category=4">PATAS</a></li>
                                <li><a href="/product-list?category=5">CREAS</a></li>
                                <li><a href="/product-list?category=6">TRACK 6</a></li>

                            </ul>
                        </li>
                        <li><a href="/product-list">KHÁC</a>
                            <ul class="dropdown">
                                <li><a href="/product-list">BEST SELLER</a></li>
                                <li><a href="/product-list">NEW PRODUCT</a></li>
                                <li><a href="/product-list">HOT SALES</a></li>


                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-2 col-md-2">
                <div class="header__nav__option">
                    <a href="#" class="search-switch"><img src="/resources/img/icon/search.png" alt=""></a>
                    <a href="/contact-us"><img src="/resources/img/icon/heart.png" alt=""></a>
                    <a href="/me/cart"><img src="/resources/img/icon/cart.png" alt=""><span>
                        <%
                            if(request.getSession().getAttribute("cart") != null)  {
                                HashMap mapCartSize1 = (HashMap) request.getSession().getAttribute("cart");
                        %>
                                 <%=mapCartSize1.size()%>
                        <%
                        } else {
                        %>
                        0
                        <%
                            }
                        %>
                    </span></a>
                </div>
            </div>
        </div>
        <div class="canvas__open"><i class="fa fa-bars"></i></div>
    </div>
</header>
<!-- Header Section End -->