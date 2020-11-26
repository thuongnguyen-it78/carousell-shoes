<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="thuongnguyen.it78 17130239 17130299 17130247">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="thuongnguyen.it78 17130239 17130299 17130247">

    <title>Thanh Toán</title>

    <%@include file="partials/css-link.jsp" %>

</head>

<body>
    <!-- Fixed -->
    <a href="#" class="scrollToTop"><i class="fa fa-arrow-up"></i></a>


    <%@include file="partials/header.jsp" %>

<!-- MAIN SECTION BEGIN -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <div class="breadcrumb__links">
                            <a href="/">Home</a>
                            <a href="/product-list">Shop</a>
                            <span>Check Out</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="checkout__form">
                <form action="#">
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            <h6 class="coupon__code"><span class="icon_tag_alt"></span> Have a coupon? <a href="#">Click
                            here</a> to enter your code</h6>
                            <h6 class="checkout__title">Billing Details</h6>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Fist Name<span>*</span></p>
                                        <input type="text" autofocus>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Last Name<span>*</span></p>
                                        <input type="text">
                                    </div>
                                </div>
                            </div>
                            <div class="checkout__input">
                                <p>Address<span>*</span></p>
                                <input type="text" placeholder="Street Address" class="checkout__input__add">
                            </div>

                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Phone<span>*</span></p>
                                        <input type="text">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Email<span>*</span></p>
                                        <input type="text">
                                    </div>
                                </div>
                            </div>
                            <div class="checkout__input">
                                <p>Description<span>*</span></p>
                                <textarea name="" id="" style="width: 100%;" rows="3"></textarea>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                                <h4 class="order__title">Your order</h4>
                                <div class="checkout__order__products">Product <span>Total</span></div>
                                <ul class="checkout__total__products">
                                    <li>01. Vanilla salted caramel <span>$ 300.0</span></li>
                                    <li>02. German chocolate <span>$ 170.0</span></li>
                                    <li>03. Vanilla salted caramel <span>$ 300.0</span></li>
                                    <li>04. German chocolate <span>$ 170.0</span></li>
                                </ul>
                                <ul class="checkout__total__all">
                                    <li>Subtotal <span>$750.99</span></li>
                                    <li>Total <span>$750.99</span></li>
                                </ul>
                                <div class="checkout__input__checkbox">
                                    <label for="payment">
                                        Check Payment
                                        <input type="checkbox" id="payment">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div class="checkout__input__checkbox">
                                    <label for="paypal">
                                        Paypal
                                        <input type="checkbox" id="paypal">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <button type="submit" class="site-btn">PLACE ORDER</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- Checkout Section End -->

<!-- MAIN SECTION END -->

    <%@include file="partials/footer.jsp" %>

    <!-- Search Begin -->
    <%@include file="partials/search.jsp" %>
    <!-- Search End -->

    <!-- Js Plugins -->
    <%@include file="partials/js-link.jsp" %>

</body>

</html>