<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="thuongnguyen.it78 17130239 17130299 17130247">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="thuongnguyen.it78 17130239 17130299 17130247">

    <title>Đổi Mật Khẩu</title>
    <%@include file="partials/css-link.jsp" %>

</head>

<body>
    <!-- Fixed -->
    <a href="#" class="scrollToTop"><i class="fa fa-arrow-up"></i></a>

    <%@include file="partials/header.jsp" %>

<!-- MAIN SECTION BEGIN -->
    <div class = "container container-pw">
        <div class = "row">

            <div class="breadcrumb-option col-lg-3" style = "padding-bottom: 100px;  padding-top: 100px; background-color: #fff;">
                <div class="container">
                    <div class="tab-content active">
                        <div class="post">
                            <img src="/resources/img/site/default.jpg" alt="unicorn" class="post-image"/>
                            <div class="post-info">
                            <h3 class="post-title">Thường Nguyễn</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Form Signup Section Begin -->
            <section class="breadcrumb-option col-lg-9" style = "padding-bottom: 100px; padding-top: 70px; background-color: #fff;">
                <div class="container" style="border-left: 1px solid #f1f1f1;">
                    <h3 class="post-title" style="text-align: center; font-size: 25px;">ĐỔI MẬT KHẨU</h3>
                    <div class="row">
                        <div class="col-lg-12">
                            <form class="signup-form login-form" autocomplete="off" action="/me/password?accountID=<%= accountLegal.getAccountID()%>" id="form-1" method="post">
                                <div class="row">
                                <%
                                    if(request.getAttribute("error") != null) {
                                %>

                                    <!-- ERROR BEGIN  -->
                                    <div class="alert alert-danger col-lg-12" role="alert">
                                        <i class="fas fa-exclamation-circle" style="color:#d93025; padding-right: 5px;"></i>
                                        <span style="color:#d93025;"><%= (String) request.getAttribute("error")%></span>
                                    </div>
                                    <!-- ERROR END  -->

                                <%
                                    }
                                %>

                                <%
                                    if(request.getAttribute("success") != null) {
                                %>

                                    <!-- ERROR BEGIN  -->
                                    <div class="alert alert-success col-lg-12" role="alert">
                                        <i class="fas fa-check-circle" style="color:#0c9147; padding-right: 5px;"></i>
                                        <span style="color:#0c9147;"><%= (String) request.getAttribute("success")%></span>
                                    </div>
                                    <!-- ERROR END  -->

                                <%
                                    }
                                %>

                                <div class="checkout__input form-group checkout__input__password form-group col-lg-12" style="padding: 0;">
                                    <p>Mật khẩu hiện tại<span>*</span></p>
                                    <input type="password" autofocus placeholder="Nhập từ 6 đến 32 kí tự" class="checkout__input__add form-control" id="password" name="password">
                                    <i class="far fa-eye show-password"></i>
                                    <span class="form-message"></span>
                                </div>

                                <div class="checkout__input form-group checkout__input__password form-group col-lg-12" style="padding: 0;">
                                    <p>Mật khẩu mới<span>*</span></p>
                                    <input type="password" placeholder="Nhập từ 6 đến 32 kí tự" class="checkout__input__add form-control" id="newpassword" name="newpassword">
                                    <i class="far fa-eye show-password show-password-1"></i>
                                    <span class="form-message"></span>
                                </div>

                                <button class ="signup-button" type="submit">ĐỔI MẬT KHẨU</button>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Form Signup Sectionn End -->
        </div>
    </div>
<!-- MAIN SECTION END -->

    <%@include file="partials/footer.jsp" %>

    <!-- Search Begin -->
    <%@include file="partials/search.jsp" %>
    <!-- Search End -->

    <!-- Js Plugins -->
    <script>
document.addEventListener('DOMContentLoaded', function () {
    // Mong muốn của chúng ta
    Validator({
        form: '#form-1',
        formGroupSelector: '.form-group',
        errorSelector: '.form-message',
        rules: [
            Validator.isRequired('#password', 'Vui lòng nhập trường này'),
            Validator.isRequired('#newpassword', 'Vui lòng nhập trường này'),


            Validator.minLength('#password', 6),
            Validator.minLength('#newpassword', 6),

            // Validator.isRequired('#password_confirmation'),
            // Validator.isConfirmed('#password_confirmation', function () {
            //     return document.querySelector('#form-1 #password').value;
            // }, 'Mật khẩu nhập lại không chính xác')
        ],
        //   onSubmit: function (data) {
        //     // Call API
        //     console.log(data);
        //   }
    });
})
    </script>
    <%@include file="partials/js-link.jsp" %>

</body>

</html>