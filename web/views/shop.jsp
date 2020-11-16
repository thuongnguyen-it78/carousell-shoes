
<%@ page import="thuongnguyen.it78.models.Shoes" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="thuongnguyen.it78.configs.LibraryMethod" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="thuongnguyen.it78 17130239 17130299 17130247">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="thuongnguyen.it78 17130239 17130299 17130247">

    <title>Product</title>

    <%@include file="partials/css-link.jsp" %>

</head>

<body>
    <!-- Fixed -->
    <a href="#" class="scrollToTop"><i class="fa fa-arrow-up"></i></a>
    <a href="/shopping-cart.html" class="shopping-cart-fixed"><i class="fal fa-shopping-bag"></i><span>0</span></a>

    <%@include file="partials/header.jsp" %>
    <!-- MAIN SECTION BEGIN -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <div class="breadcrumb__links">
                            <a href="/index.html">Home</a>
                            <span>Shop</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shop Section Begin -->
    <section class="shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="shop__sidebar">
                        <div class="shop__sidebar__search">
                            <form action="#">
                                <input type="text" placeholder="Search...">
                                <button type="submit"><span class="icon_search"></span></button>
                            </form>
                        </div>
                        <div class="shop__sidebar__accordion">
                            <div class="accordion" id="accordionExample">
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseOne">LOẠI SẢN PHẨM</a>
                                    </div>
                                    <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__categories">
                                                <ul class="nice-scroll">
                                                    <li><a href="#">BASAS</a></li>
                                                    <li><a href="#">VINTAS</a></li>
                                                    <li><a href="#">URBAS</a></li>
                                                    <li><a href="#">PATAS</a></li>
                                                    <li><a href="#">CREAS</a></li>
                                                    <li><a href="#">TRACK 6</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseTwo">Branding</a>
                                    </div>
                                    <div id="collapseTwo" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__brand">
                                                <ul>
                                                    <li><a href="#">Louis Vuitton</a></li>
                                                    <li><a href="#">Chanel</a></li>
                                                    <li><a href="#">Hermes</a></li>
                                                    <li><a href="#">Gucci</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div> -->
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseThree">GIÁ</a>
                                    </div>
                                    <div id="collapseThree" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__price">
                                                <ul>
                                                    <li><a href="#">300.000 - 500.000 VND</a></li>
                                                    <li><a href="#">500.000 - 1.000.000 VND</a></li>

                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseFour">SIZE</a>
                                    </div>
                                    <div id="collapseFour" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__size">
                                                <label for="xs">39
                                                    <input type="radio" id="xs">
                                                </label>
                                                <label for="sm">40
                                                    <input type="radio" id="sm">
                                                </label>
                                                <label for="md">41
                                                    <input type="radio" id="md">
                                                </label>
                                                <label for="xl">42
                                                    <input type="radio" id="xl">
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseFive">Colors</a>
                                    </div>
                                    <div id="collapseFive" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__color">
                                                <label class="c-1" for="sp-1">
                                                    <input type="radio" id="sp-1">
                                                </label>
                                                <label class="c-2" for="sp-2">
                                                    <input type="radio" id="sp-2">
                                                </label>
                                                <label class="c-3" for="sp-3">
                                                    <input type="radio" id="sp-3">
                                                </label>
                                                <label class="c-4" for="sp-4">
                                                    <input type="radio" id="sp-4">
                                                </label>
                                                <label class="c-5" for="sp-5">
                                                    <input type="radio" id="sp-5">
                                                </label>
                                                <label class="c-6" for="sp-6">
                                                    <input type="radio" id="sp-6">
                                                </label>
                                                <label class="c-7" for="sp-7">
                                                    <input type="radio" id="sp-7">
                                                </label>
                                                <label class="c-8" for="sp-8">
                                                    <input type="radio" id="sp-8">
                                                </label>
                                                <label class="c-9" for="sp-9">
                                                    <input type="radio" id="sp-9">
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div> -->
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseSix">GIỚI TÍNH</a>
                                    </div>
                                    <div id="collapseSix" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__tags">
                                                <a href="#">NAM</a>
                                                <a href="#">NỮ</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-lg-9">
                    <div class="shop__product__option">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="shop__product__option__left">
                                    <p>Hiện 1–12 trên 126 kết quả</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="shop__product__option__right">
                                    <p>Sắp Xếp:</p>
                                    <select>
                                        <option value="">Thấp Tới Cao</option>
                                        <option value="">Cao Tới Thấp</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/resources/img/shop/1.jpg">
                                    <!--
                                          <ul class="product__hover">
                                        <li><a href="#"><img src="/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="/resources/img/icon/search.png" alt=""></a></li>
                                    </ul>
                                 -->
                                </div>
                                <div class="product__item__text">
                                    <h6>Basas Black Lace - Low Top</h6>
                                    <a href="/shop-details.html" class="add-cart">MUA NGAY</a>
                                    <p>Dark Grey
                                    </p>
                                    <!-- <div class="rating">
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div> -->
                                    <h5>450.000 VND
                                    </h5>
                                    <!-- <div class="product__color__select">
                                        <label for="pc-4">
                                            <input type="radio" id="pc-4">
                                        </label>
                                        <label class="active black" for="pc-5">
                                            <input type="radio" id="pc-5">
                                        </label>
                                        <label class="grey" for="pc-6">
                                            <input type="radio" id="pc-6">
                                        </label>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item sale">
                                <div class="product__item__pic set-bg" data-setbg="/resources/img/shop/2.jpg">
                                    <span class="label">Sale</span>
                                    <!-- <ul class="product__hover">
                                        <li><a href="#"><img src="/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="/resources/img/icon/search.png" alt=""></a></li>
                                    </ul> -->
                                </div>
                                <div class="product__item__text">
                                    <h6>Basas Bumper Gum - High Top</h6>
                                    <a href="/shop-details.html" class="add-cart">MUA NGAY</a>
                                    <p>OFFWHITE/GUM</p>
                                    <!-- <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div> -->
                                    <h5>490.000 VND</h5>
                                    <!-- <div class="product__color__select">
                                        <label for="pc-7">
                                            <input type="radio" id="pc-7">
                                        </label>
                                        <label class="active black" for="pc-8">
                                            <input type="radio" id="pc-8">
                                        </label>
                                        <label class="grey" for="pc-9">
                                            <input type="radio" id="pc-9">
                                        </label>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/resources/img/shop/3.jpg">
                                    <!-- <ul class="product__hover">
                                        <li><a href="#"><img src="/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="/resources/img/icon/search.png" alt=""></a></li>
                                    </ul> -->
                                </div>
                                <div class="product__item__text">
                                    <h6>Basas Mono - Low Top</h6>
                                    <a href="/shop-details.html" class="add-cart">MUA NGAY</a>
                                    <!-- <div class="rating">
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div> -->
                                    <p>Dark Grey</p>
                                    <h5>450.000 VND
                                    </h5>
                                    <!-- <div class="product__color__select">
                                        <label for="pc-10">
                                            <input type="radio" id="pc-10">
                                        </label>
                                        <label class="active black" for="pc-11">
                                            <input type="radio" id="pc-11">
                                        </label>
                                        <label class="grey" for="pc-12">
                                            <input type="radio" id="pc-12">
                                        </label>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item sale">
                                <div class="product__item__pic set-bg" data-setbg="/resources/img/shop/4.jpg">
                                    <span class="label">Sale</span>
                                    <!-- <ul class="product__hover">
                                        <li><a href="#"><img src="/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="/resources/img/icon/search.png" alt=""></a></li>
                                    </ul> -->
                                </div>
                                <div class="product__item__text">
                                    <h6>Basas Mono - Low Top</h6>
                                    <a href="/shop-details.html" class="add-cart">MUA NGAY</a>
                                    <p>Black</p>
                                    <!-- <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div> -->
                                    <h5>580.000 VND</h5>
                                    <!-- <div class="product__color__select">
                                        <label for="pc-16">
                                            <input type="radio" id="pc-16">
                                        </label>
                                        <label class="active black" for="pc-17">
                                            <input type="radio" id="pc-17">
                                        </label>
                                        <label class="grey" for="pc-18">
                                            <input type="radio" id="pc-18">
                                        </label>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/resources/img/shop/5.jpg">
                                    <!-- <ul class="product__hover">
                                        <li><a href="#"><img src="/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="/resources/img/icon/search.png" alt=""></a></li>
                                    </ul> -->
                                </div>
                                <div class="product__item__text">
                                    <h6>Basas New Simple Life - High Top</h6>
                                    <a href="/shop-details.html" class="add-cart">MUA NGAY</a>
                                    <p>Taupe</p>
                                    <!-- <div class="rating">
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div> -->
                                    <h5>520.000 VND</h5>
                                    <!-- <div class="product__color__select">
                                        <label for="pc-19">
                                            <input type="radio" id="pc-19">
                                        </label>
                                        <label class="active black" for="pc-20">
                                            <input type="radio" id="pc-20">
                                        </label>
                                        <label class="grey" for="pc-21">
                                            <input type="radio" id="pc-21">
                                        </label>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/resources/img/shop/6.jpg">
                                    <!-- <ul class="product__hover">
                                        <li><a href="#"><img src="/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="/resources/img/icon/search.png" alt=""></a></li>
                                    </ul> -->
                                </div>
                                <div class="product__item__text">
                                    <h6>Basas Bumper Gum - Low Top</h6>
                                    <a href="/shop-details.html" class="add-cart">MUA NGAY</a>
                                    <p>OFFWHITE/GUM</p>
                                    <!-- <div class="rating">
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div> -->
                                    <h5>450.000 VND</h5>
                                    <!-- <div class="product__color__select">
                                        <label for="pc-22">
                                            <input type="radio" id="pc-22">
                                        </label>
                                        <label class="active black" for="pc-23">
                                            <input type="radio" id="pc-23">
                                        </label>
                                        <label class="grey" for="pc-24">
                                            <input type="radio" id="pc-24">
                                        </label>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/resources/img/shop/7.jpg">
                                    <!-- <ul class="product__hover">
                                        <li><a href="#"><img src="/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="/resources/img/icon/search.png" alt=""></a></li>
                                    </ul> -->
                                </div>
                                <div class="product__item__text">
                                    <h6>Basas Bumper Gum - Low Top</h6>
                                    <a href="/shop-details.html" class="add-cart">MUA NGAY</a>
                                    <p>BLACK/GUM</p>
                                    <!-- <div class="rating">
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div> -->
                                    <h5>450.000 VND</h5>
                                    <!-- <div class="product__color__select">
                                        <label for="pc-25">
                                            <input type="radio" id="pc-25">
                                        </label>
                                        <label class="active black" for="pc-26">
                                            <input type="radio" id="pc-26">
                                        </label>
                                        <label class="grey" for="pc-27">
                                            <input type="radio" id="pc-27">
                                        </label>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item sale">
                                <div class="product__item__pic set-bg" data-setbg="/resources/img/shop/8.jpg">
                                    <span class="label">Sale</span>
                                    <!-- <ul class="product__hover">
                                        <li><a href="#"><img src="/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="/resources/img/icon/search.png" alt=""></a></li>
                                    </ul> -->
                                </div>
                                <div class="product__item__text">
                                    <h6>Basas New Simple Life - Low Top</h6>
                                    <a href="/shop-details.html" class="add-cart">MUA NGAY</a>
                                    <!-- <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div> -->
                                    <p>Black</p>
                                    <h5>420.000 VND</h5>
                                    <!-- <div class="product__color__select">
                                        <label for="pc-28">
                                            <input type="radio" id="pc-28">
                                        </label>
                                        <label class="active black" for="pc-29">
                                            <input type="radio" id="pc-29">
                                        </label>
                                        <label class="grey" for="pc-30">
                                            <input type="radio" id="pc-30">
                                        </label>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/resources/img/shop/9.jpg">
                                    <!-- <ul class="product__hover">
                                        <li><a href="#"><img src="/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="/resources/img/icon/search.png" alt=""></a></li>
                                    </ul> -->
                                </div>
                                <div class="product__item__text">
                                    <h6>Basas New Simple Life - Low Top</h6>
                                    <a href="/shop-details.html" class="add-cart">MUA NGAY</a>
                                    <!-- <div class="rating">
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div> -->
                                    <p>BLACK/GUM</p>
                                    <h5>450.000 VND </h5>
                                    <!-- <div class="product__color__select">
                                        <label for="pc-31">
                                            <input type="radio" id="pc-31">
                                        </label>
                                        <label class="active black" for="pc-32">
                                            <input type="radio" id="pc-32">
                                        </label>
                                        <label class="grey" for="pc-33">
                                            <input type="radio" id="pc-33">
                                        </label>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item sale">
                                <div class="product__item__pic set-bg" data-setbg="/resources/img/shop/10.jpg">
                                    <span class="label">Sale</span>
                                    <!-- <ul class="product__hover">
                                        <li><a href="#"><img src="/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="/resources/img/icon/search.png" alt=""></a></li>
                                    </ul> -->
                                </div>
                                <div class="product__item__text">
                                    <h6>Basas New Simple Life - Low Top</h6>
                                    <a href="/shop-details.html" class="add-cart">MUA NGAY</a>
                                    <!-- <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div> -->
                                    <p>CORDOVAN</p>
                                    <h5>320.000 VND</h5>
                                    <!-- <div class="product__color__select">
                                        <label for="pc-34">
                                            <input type="radio" id="pc-34">
                                        </label>
                                        <label class="active black" for="pc-35">
                                            <input type="radio" id="pc-35">
                                        </label>
                                        <label class="grey" for="pc-36">
                                            <input type="radio" id="pc-36">
                                        </label>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/resources/img/shop/11.jpg">
                                    <!-- <ul class="product__hover">
                                        <li><a href="#"><img src="/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="/resources/img/icon/search.png" alt=""></a></li>
                                    </ul> -->
                                </div>
                                <div class="product__item__text">
                                    <h6>Basas New Simple Life - Low Top</h6>
                                    <a href="/shop-details.html" class="add-cart">TAUPE</a>
                                    <!-- <div class="rating">
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div> -->
                                    <p>TAUPE</p>
                                    <h5>420.000 VND</h5>
                                    <!-- <div class="product__color__select">
                                        <label for="pc-37">
                                            <input type="radio" id="pc-37">
                                        </label>
                                        <label class="active black" for="pc-38">
                                            <input type="radio" id="pc-38">
                                        </label>
                                        <label class="grey" for="pc-39">
                                            <input type="radio" id="pc-39">
                                        </label>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/resources/img/shop/12.jpg">
                                    <!-- <ul class="product__hover">
                                        <li><a href="#"><img src="/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="/resources/img/icon/search.png" alt=""></a></li>
                                    </ul> -->
                                </div>
                                <div class="product__item__text">
                                    <h6>Ananas Track 6 Suede - Low Top</h6>
                                    <a href="/shop-details.html" class="add-cart">MUA NGAY</a>
                                    <!-- <div class="rating">
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div> -->
                                    <p>MEADOW</p>
                                    <h5>990.000 VND</h5>
                                    <!-- <div class="product__color__select">
                                        <label for="pc-40">
                                            <input type="radio" id="pc-40">
                                        </label>
                                        <label class="active black" for="pc-41">
                                            <input type="radio" id="pc-41">
                                        </label>
                                        <label class="grey" for="pc-42">
                                            <input type="radio" id="pc-42">
                                        </label>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="product__pagination">
                                <a class="active" href="#">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <span>...</span>
                                <a href="#">21</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Section End -->

    <!-- MAIN SECTION END -->


    <%@include file="partials/footer.jsp" %>

    <!-- Search Begin -->
    <%@include file="partials/search.jsp" %>
    <!-- Search End -->

    <!-- Js Plugins -->
    <!-- Js Plugins -->
    <%@include file="partials/js-link.jsp" %>

</body>

</html>