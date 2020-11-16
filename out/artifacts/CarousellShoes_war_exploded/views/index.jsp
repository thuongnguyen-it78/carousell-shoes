<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="thuongnguyen.it78 17130239 17130299 17130247">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="thuongnguyen.it78 17130239 17130299 17130247">

    <title>Home</title>

    <%@include file="partials/css-link.jsp" %>

</head>

<body>
    <!-- Fixed -->
    <a href="#" class="scrollToTop"><i class="fa fa-arrow-up"></i></a>
    <a href="/shopping-cart.html" class="shopping-cart-fixed"><i class="fal fa-shopping-bag"></i><span>0</span></a>

    <%@include file="partials/header.jsp" %>

<!-- MAIN SECTION BEGIN -->

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="hero__slider owl-carousel">
            <div class="hero__items set-bg" data-setbg="/resources/img/optimization/Banner_Clothing.jpg">
            </div>
            <div class="hero__items set-bg" data-setbg="/resources/img/optimization/banner-chính_2.jpg">
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container ">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Sản Phẩm Nổi Bậc</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <ul class="filter__controls">
                        <li class="active" data-filter="*">BEST SELLER</li>
                        <li data-filter=".new-arrivals">NEW PRODUCT</li>
                        <li data-filter=".hot-sales">HOT SALES</li>
                    </ul>
                </div>
            </div>
            <div class="row product__filter">
                <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="/resources/img/shop/1.jpg">
                            <span class="label">New</span>
                            <!-- <ul class="product__hover">
                                <li><a href="#"><img src="/resources/img/icon/heart.png" alt=""></a></li>
                                <li><a href="#"><img src="/resources/img/icon/compare.png" alt=""> <span>Compare</span></a></li>
                                <li><a href="#"><img src="/resources/img/icon/search.png" alt=""></a></li>
                            </ul> -->
                        </div>
                        <div class="product__item__text">
                            <h6>Basas Black Lace - Low Top</h6>
                            <a href="/shop-details.html" class="add-cart">MUA NGAY</a>
                            <!-- <div class="rating">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div> -->
                            <p>Dark Grey
                            </p>
                            <h5>450.000 VND
                            </h5>
                            <!-- <div class="product__color__select">
                                <label for="pc-1">
                                    <input type="radio" id="pc-1">
                                </label>
                                <label class="active black" for="pc-2">
                                    <input type="radio" id="pc-2">
                                </label>
                                <label class="grey" for="pc-3">
                                    <input type="radio" id="pc-3">
                                </label>
                            </div> -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="/resources/img/shop/2.jpg">
                            <!-- <ul class="product__hover">
                                <li><a href="#"><img src="/resources/img/icon/heart.png" alt=""></a></li>
                                <li><a href="#"><img src="/resources/img/icon/compare.png" alt=""> <span>Compare</span></a></li>
                                <li><a href="#"><img src="/resources/img/icon/search.png" alt=""></a></li>
                            </ul> -->
                        </div>
                        <div class="product__item__text">
                            <h6>Basas Bumper Gum - High Top</h6>
                            <a href="/shop-details.html" class="add-cart">MUA NGAY</a>
                            <!-- <div class="rating">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div> -->
                            <p>OFFWHITE/GUM</p>
                            <h5>490.000 VND</h5>
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
                <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals">
                    <div class="product__item sale">
                        <div class="product__item__pic set-bg" data-setbg="/resources/img/shop/3.jpg">
                            <span class="label">Sale</span>
                            <!-- <ul class="product__hover">
                                <li><a href="#"><img src="/resources/img/icon/heart.png" alt=""></a></li>
                                <li><a href="#"><img src="/resources/img/icon/compare.png" alt=""> <span>Compare</span></a></li>
                                <li><a href="#"><img src="/resources/img/icon/search.png" alt=""></a></li>
                            </ul> -->
                        </div>
                        <div class="product__item__text">
                            <h6>Basas Mono - Low Top</h6>
                            <a href="/shop-details.html" class="add-cart">MUA NGAY</a>
                            <!-- <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o"></i>
                            </div> -->
                            <p>Dark Grey</p>
                            <h5>450.000 VND</h5>
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
                <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="/resources/img/shop/4.jpg">
                            <!-- <ul class="product__hover">
                                <li><a href="#"><img src="/resources/img/icon/heart.png" alt=""></a></li>
                                <li><a href="#"><img src="/resources/img/icon/compare.png" alt=""> <span>Compare</span></a></li>
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
                            <p>Black</p>
                            <h5>580.000 VND</h5>
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
                <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="/resources/img/shop/5.jpg">
                            <!-- <ul class="product__hover">
                                <li><a href="#"><img src="/resources/img/icon/heart.png" alt=""></a></li>
                                <li><a href="#"><img src="/resources/img/icon/compare.png" alt=""> <span>Compare</span></a></li>
                                <li><a href="#"><img src="/resources/img/icon/search.png" alt=""></a></li>
                            </ul> -->
                        </div>
                        <div class="product__item__text">
                            <h6>Basas New Simple Life - High Top</h6>
                            <a href="/shop-details.html" class="add-cart">MUA NGAY</a>
                            <!-- <div class="rating">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div> -->
                            <p>Taupe</p>
                            <h5>520.000 VND</h5>
                            <!-- <div class="product__color__select">
                                <label for="pc-13">
                                    <input type="radio" id="pc-13">
                                </label>
                                <label class="active black" for="pc-14">
                                    <input type="radio" id="pc-14">
                                </label>
                                <label class="grey" for="pc-15">
                                    <input type="radio" id="pc-15">
                                </label>
                            </div> -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales">
                    <div class="product__item sale">
                        <div class="product__item__pic set-bg" data-setbg="/resources/img/shop/6.jpg">
                            <span class="label">Sale</span>
                            <!-- <ul class="product__hover">
                                <li><a href="#"><img src="/resources/img/icon/heart.png" alt=""></a></li>
                                <li><a href="#"><img src="/resources/img/icon/compare.png" alt=""> <span>Compare</span></a></li>
                                <li><a href="#"><img src="/resources/img/icon/search.png" alt=""></a></li>
                            </ul> -->
                        </div>
                        <div class="product__item__text">
                            <h6>Basas Bumper Gum - Low Top</h6>
                            <a href="/shop-details.html" class="add-cart">MUA NGAY</a>
                            <!-- <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o"></i>
                            </div> -->
                            <p>OFFWHITE/GUM
                            </p>
                            <h5>450.000 VND</h5>
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
                <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="/resources/img/shop/7.jpg">
                            <!-- <ul class="product__hover">
                                <li><a href="#"><img src="/resources/img/icon/heart.png" alt=""></a></li>
                                <li><a href="#"><img src="/resources/img/icon/compare.png" alt=""> <span>Compare</span></a></li>
                                <li><a href="#"><img src="/resources/img/icon/search.png" alt=""></a></li>
                            </ul> -->
                        </div>
                        <div class="product__item__text">
                            <h6>Basas Bumper Gum - Low Top</h6>
                            <a href="/shop-details.html" class="add-cart">MUA NGAY</a>
                            <!-- <div class="rating">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div> -->
                            <p>BLACK/GUM

                            </p>
                            <h5>450.000 VND
                            </h5>
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
                <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="/resources/img/shop/8.jpg">
                            <!-- <ul class="product__hover">
                                <li><a href="#"><img src="/resources/img/icon/heart.png" alt=""></a></li>
                                <li><a href="#"><img src="/resources/img/icon/compare.png" alt=""> <span>Compare</span></a></li>
                                <li><a href="#"><img src="/resources/img/icon/search.png" alt=""></a></li>
                            </ul> -->
                        </div>
                        <div class="product__item__text">
                            <h6>Basas New Simple Life - Low Top
                            </h6>
                            <a href="/shop-details.html" class="add-cart">MUA NGAY</a>
                            <!-- <div class="rating">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div> -->
                            <p>Black</p>
                            <h5>420.000 VND</h5>
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
            </div>
        </div>
    </section>

    <!-- Instagram Section Begin -->
    <section class="instagram spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Kết Nối Với Chúng Tôi</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8">
                    <div class="instagram__pic">
                        <div class="instagram__pic__item set-bg" data-setbg="/resources/img/instagram/instagram-1.jpg"></div>
                        <div class="instagram__pic__item set-bg" data-setbg="/resources/img/instagram/instagram-2.jpg"></div>
                        <div class="instagram__pic__item set-bg" data-setbg="/resources/img/instagram/instagram-3.jpg"></div>
                        <div class="instagram__pic__item set-bg" data-setbg="/resources/img/instagram/instagram-4.jpg"></div>
                        <div class="instagram__pic__item set-bg" data-setbg="/resources/img/instagram/instagram-5.jpg"></div>
                        <div class="instagram__pic__item set-bg" data-setbg="/resources/img/instagram/instagram-6.jpg"></div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="instagram__text">
                        <h2>Instagram</h2>
                        <p>Khi sự tích cực, trung thực và ngẫu hứng trở thành tiêu chí sống; niềm vui sẽ xuất hiện ở mọi nơi</p>
                        <h3>#Ananas</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Instagram Section End -->

    <!-- Latest Blog Section Begin -->
    <section class="latest spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Cảm Nhận Của Khách Hàng</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="/resources/img/blog/blog-1.jpg"></div>
                        <div class="blog__item__text">
                            <span><img src="/resources/img/icon/calendar.png" alt=""> 16 February 2020</span>
                            <h5>Mang rất thích, chất lượng rất tốt luôn.</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="/resources/img/blog/blog-2.jpg"></div>
                        <div class="blog__item__text">
                            <span><img src="/resources/img/icon/calendar.png" alt=""> 21 February 2020</span>
                            <h5>Sản phẩm xịn xò. Mình ưng lắm lắm.</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="/resources/img/blog/blog-3.jpg"></div>
                        <div class="blog__item__text">
                            <span><img src="/resources/img/icon/calendar.png" alt=""> 28 February 2020</span>
                            <h5>Ôi, hàng Việt Nam đây ư, thật tuyệt vời!</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Latest Blog Section End -->

<!-- MAIN SECTION END -->

    <%@include file="partials/footer.jsp" %>

    <!-- Search Begin -->
    <%@include file="partials/search.jsp" %>
    <!-- Search End -->

    <!-- Js Plugins -->
    <%@include file="partials/js-link.jsp" %>

</body>

</html>