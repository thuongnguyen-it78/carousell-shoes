<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="thuongnguyen.it78 17130239 17130299 17130247">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="thuongnguyen.it78 17130239 17130299 17130247">

    <title>Đăng Nhập</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@100;300;400;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Font Awesome -->
    <link
    rel="stylesheet"
    href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
    integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
    crossOrigin="anonymous"
    />

    <!-- Icont  -->
    <link rel="icon" href="/resources/img/site/favicon.ico">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/style.css" type="text/css">
</head>

<body>
    <!-- Fixed -->
    <a href="#" class="scrollToTop"><i class="fa fa-arrow-up"></i></a>

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
                            <div class="header__top__links">
                                <a href="/contact.html"><img src="/resources/img/optimization/icon_tim_cua_hang.svg" alt=""> Tìm cửa hàng</a>
                                <a href="/contact.html"><img src="/resources/img/optimization/icon_heart_header.svg" alt=""> Yêu thích</a>
                                <a href="/login.html"><img src="/resources/img/optimization/icon_dang_nhap.svg" alt=""> Đăng nhập</a>
                                <a href="/signup.html"><img src="/resources/img/optimization/icon_dang_nhap.svg" alt=""> Đăng kí</a>
                                <!-- <a href="#"><img src="/resources/img/optimization/icon_gio_hang.svg" alt=""> Giỏ hàng <span>(0)</span></a> -->
                            </div>
                            <!-- <div class="header__top__hover">
                                <img src="/img/product-sale.png" alt=""> <span>Thường Nguyễn</span>
                                <ul>
                                    <li>Thông tin tài khoản</li>
                                    <li>Thông tin tài khoản</li>
                                    <li>Thông tin tài khoản</li>
                                </ul>
                            </div> -->
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

    <h1 class = "contact-usa" style="background-color: #f4f4f4;">ĐĂNG NHẬP</h1>


     <!-- Form Login Section Begin -->
     <section class="breadcrumb-option" style = "padding-bottom: 100px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <form class="login-form" autocomplete="off" action="/auth/login" id = "form-login" method="post">
                       <%
                           Map<String, String> messages = null;
                           if (request.getAttribute("messages") != null) {
                            messages = (HashMap)request.getAttribute("messages");
                        }
                       %>
                        <%
                            if(messages == null) {}
                                else {
                        %>
                            <% for (String i : messages.keySet()) { %>
                            <div class="alert alert-danger" role="alert">
                                <%= messages.get(i)%>
                            </div>
                            <% } %>

                        <%
                            }
                        %>

                        <div class="form-group">
                            <input type="email" name="email" class = "form-control" id="email" placeholder="Email"
                                    <%
                                        String email = "";
                                        if (request.getAttribute("email") != null) {
                                            email = (String) request.getAttribute("email");
                                        }
                                    %>

                                    value="<%= email%>"
                            />
                            <span class="form-message"></span>
                        </div>
                        <div class="input-icon form-group">
                            <input type="password" name="password" class = "form-control" id="password" placeholder="Password"/>
                            <span class="form-message"></span>
                            <i class="far fa-eye show-password"></i>
                        </div>
                        <a href="#" class="forgot">Forgot password?</a>
                        <button type = "submit" class ="signup-button">ĐĂNG NHẬP</button>                    
                      <hr>
                        <div class="social-share">

                            <div class="social-share-item instagram">
                                <i class="fab fa-google-plus-g social-share-icon"></i>
                                <span class="social-share-text">Đăng nhập bằng Google</span>
                            </div>
                            <div class="social-share-item facebook">
                                <i class="fab fa-facebook social-share-icon"></i>
                                <span class="social-share-text">Đăng nhập bằng Facebook</span>
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- Form Login Sectionn End -->

    

     <!-- Footer Section Begin -->
     <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="" class = "overlay"></a>
                        </div>
                        <p>Host line 07072626056. Design and customize by thuongnguyen</p>
                        <div class="footer__icont">
                            <i class="fab fa-facebook-square"></i>
                            <i class="fab fa-instagram"></i>
                            <i class="fab fa-linkedin-in"></i>  
                            <i class="fab fa-twitter"></i>
                            <i class="fab fa-github"></i>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h6>SẢN PHẨM</h6>
                        <ul>
                            <li><a href="#">Giày Nam</a></li>
                            <li><a href="#">Giày Nữ</a></li>
                            <li><a href="#">Bán Chạy</a></li>
                            <li><a href="#">Sale-Off</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h6>CÔNG TY</h6>
                        <ul>
                            <li><a href="#">Kết Nối</a></li>
                            <li><a href="#">Feedbacks</a></li>
                            <li><a href="#">Chính sách bán hàng</a></li>
                            <li><a href="#">Cửa hàng</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
                    <div class="footer__widget">
                        <h6>MY TEAM</h6>
                        <div class="footer__newslatter">
                            <p>Project of thuongnguyen.it78, vankhanh.10diem, tinhtran.hostline</p>
                            <div>
                                <img src="/resources/img/site/icon_bocongthuong.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="footer__copyright__text">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <p>Copyright ©
                            <script>
                                document.write(new Date().getFullYear());
                            </script>
                            All rights reserved | This is our project web <a href="https://colorlib.com" target="_blank" style="color: #fff">Team KTT</a>
                        </p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->
    <!-- Search Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch">+</div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search End -->

    <!-- Js Plugins -->
    <script src="/resources/js/jquery-3.3.1.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/jquery.nice-select.min.js"></script>
    <script src="/resources/js/jquery.nicescroll.min.js"></script>
    <script src="/resources/js/jquery.magnific-popup.min.js"></script>
    <script src="/resources/js/jquery.countdown.min.js"></script>
    <script src="/resources/js/jquery.slicknav.js"></script>
    <script src="/resources/js/mixitup.min.js"></script>
    <script src="/resources/js/owl.carousel.min.js"></script>
    <script src="/resources/js/main.js"></script>
    <script src="/resources/js/js-optimization.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            // Mong muốn của chúng ta
            Validator({
                form: '#form-login',
                formGroupSelector: '.form-group',
                errorSelector: '.form-message',
                rules: [
                    Validator.isRequired('#email', 'Vui lòng nhập trường này'),
                    Validator.isRequired('#password', 'Vui lòng nhập trường này'),
                  
                    Validator.isEmail('#email'),
                    Validator.minLength('#password', 6),
                    // Validator.isRequired('#password_confirmation'),
                    // Validator.isConfirmed('#password_confirmation', function () {
                    //   return document.querySelector('#form-1 #password').value;
                    // }, 'Mật khẩu nhập lại không chính xác')
                ],
                //   onSubmit: function (data) {
                //     // Call API
                //     console.log(data);
                //   }
            });
        })
    </script>
</body>

</html>