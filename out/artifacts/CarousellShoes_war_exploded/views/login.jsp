<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="thuongnguyen.it78 17130239 17130299 17130247">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="thuongnguyen.it78 17130239 17130299 17130247">

    <title>Login</title>

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
    <!-- <link rel="shortcut icon" href="/resources/img/site/favicon.ico?" type="image/x-icon"> -->


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

    <%@include file="partials/header.jsp" %>

    <h1 class = "contact-usa" style="background-color: #f4f4f4;">ĐĂNG NHẬP</h1>


     <!-- Form Login Section Begin -->
     <section class="breadcrumb-option" style = "padding-bottom: 100px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <form class="login-form" action="/account/login" id = "form-login" method="post">
                        <%
                            if(request.getAttribute("error") != null) {
                        %>

                        <!-- ERROR BEGIN  -->
                        <div class="alert alert-danger" role="alert">
                            <i class="fas fa-exclamation-circle" style="color:#d93025; padding-right: 5px;"></i>
                            <span style="color:#d93025;"><%= (String) request.getAttribute("error")%></span>
                        </div>
                        <!-- ERROR END  -->

                        <%
                            }
                        %>

                        <div class="form-group">
                            <input type="email" name="email" class = "form-control" id="email" placeholder="Email"/
                            <%
                                if(request.getAttribute("email") != null) {
                            %>
                                value = "<%= request.getAttribute("email")%>"
                            <%
                                }
                            %>
                            >
                            <span class="form-message"></span>
                        </div>
                        <div class="input-icon form-group">
                            <input type="password" name="password" class = "form-control" id="password" placeholder="Password"/>
                            <span class="form-message"></span>
                            <i class="far fa-eye show-password"></i>
                        </div>
                        <a href="/account/forgot" class="forgot">Forgot password?</a>
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

    <%@include file="partials/footer.jsp" %>
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