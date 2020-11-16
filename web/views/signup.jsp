<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta charset="UTF-8">
    <meta name="keywords" content="thuongnguyen.it78 17130239 17130299 17130247">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="thuongnguyen.it78 17130239 17130299 17130247">

    <title>Register</title>

    <%@include file="partials/css-link.jsp" %>

</head>

<body>
    <!-- Fixed -->
    <a href="#" class="scrollToTop"><i class="fa fa-arrow-up"></i></a>

    <%@include file="partials/header.jsp" %>

<!-- MAIN SECTION BEGIN -->

    <h1 class = "contact-usa" style="background-color: #f4f4f4;">ĐĂNG KÝ</h1>

    <!-- Form Signup Section Begin -->
    <section class="breadcrumb-option" style = "padding-bottom: 100px;">
        <div class="container">
            <div class="row">

                <div class="col-lg-12">
                    <form class="signup-form login-form" action="/account/register" id="form-1" method="post">


                        <%
                            boolean isError = false;
                            String errorEmail = "";
                            Account account = null;

                            if(request.getAttribute("errorEmail") != null) {
                                isError = true;
                                errorEmail = (String) request.getAttribute("errorEmail");
                                account = (Account) request.getAttribute("account");
                            }

                            if(isError) {
                        %>

                        <!-- ERROR BEGIN  -->
                        <div class="alert alert-danger" role="alert">
                            <i class="fas fa-exclamation-circle" style="color:#d93025; padding-right: 5px;"></i>
                            <span style="color:#d93025;"><%= errorEmail %></span>
                        </div>
                        <!-- ERROR END  -->

                        <%  }   %>


                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input form-group">
                                    <p>Họ tên<span>*</span></p>
                                    <input type="text" placeholder="Thường Nguyễn" id="fullname" class="form-control" name="fullname"
                                    <%
                                        if (isError) {
                                    %>

                                           value="<%= account.getAccountFullName()%>"
                                    <%
                                        }
                                    %>

                                    >
                                    <span class="form-message"></span>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input form-group">
                                    <p>Số điện thoại<span>*</span></p>
                                    <input type="text" placeholder="0702626056" id="number" class="form-control" name="number"
                                    <%
                                        if (isError) {
                                    %>

                                           value="<%= account.getAccountNumber()%>"
                                    <%
                                        }
                                    %>
                                    >
                                    <span class="form-message"></span>
                                </div>
                            </div>
                        </div>
                        <div class="checkout__input form-group">
                            <p>Email<span>*</span></p>
                            <input type="text" placeholder="thuongnguyen.it78@gmail.com" class="checkout__input__add form-control" id="email" name="email"
                                <%
                                        if (isError) {
                                %>

                                   value="<%= account.getAccountEmail()%>"
                                <%
                                        }
                                %>
                            >
                            <span class="form-message"></span>
                        </div>
                        <div class="checkout__input form-group checkout__input__password form-group">
                            <p>Password<span>*</span></p>
                            <input type="password" placeholder="Nhập từ 6 đến 32 kí tự" class="checkout__input__add form-control" id="password" name="password">
                            <i class="far fa-eye show-password"></i>
                            <span class="form-message"></span>
                        </div>
                        <div class="checkout__input form-group checkout__input__password form-group">
                            <p>Nhập lại Password<span>*</span></p>
                            <input type="password" placeholder="Nhập từ 6 đến 32 kí tự" class="checkout__input__add form-control" id="password_confirmation">
                            <i class="far fa-eye show-password show-password-1"></i>
                            <span class="form-message"></span>
                        </div>
                        <div class="checkout__input form-group">
                            <p>Giới tính<span>*</span></p>
                            <div class = "gender">
                                <div>
                            <input type="radio" id="male" value="0" class="radio-input" name="gender"/
                                    <%
                                        if (isError) {
                                            if(account.getAccountGender() == 0) {
                                    %>

                                    checked="true"
                                    <%
                                            }
                                        }
                                    %>
                                    >
                            <label for="male" class="radio-label"></label><span>Nam</span>
                            <input type="radio" id="fmale" value="1" class="radio-input" name="gender"/
                                    <%
                                        if (isError) {
                                            if(account.getAccountGender() == 1) {
                                    %>

                                    checked="true"
                                    <%
                                            }
                                        }
                                    %>
                                    >
                            <label for="fmale" class="radio-label"></label><span>Nữ</span>
                            <span class="form-message"></span>
                        </div>
                        </div>
                        </div>
                        <div class="checkout__input form-group">
                            <p>Địa chỉ<span>*</span></p>
                            <input type="text" placeholder="6 QL1A, Khu Phó 1, Dĩ An, Thành phố Hồ Chí Minh" class="checkout__input__add form-control" id="address" name ="address"
                                <%
                                        if (isError) {
                                %>

                                   value="<%= account.getAccountAddress()%>"
                                <%
                                        }
                                %>
                            >
                            <span class="form-message"></span>
                        </div>
                        <button class ="signup-button">ĐĂNG KÍ</button> 
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- Form Signup Sectionn End -->

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
            Validator.isRequired('#fullname', 'Vui lòng nhập trường này'),
            Validator.isRequired('#number', 'Vui lòng nhập trường này'),
            Validator.isRequired('#email', 'Vui lòng nhập trường này'),
            Validator.isRequired('#password', 'Vui lòng nhập trường này'),
            Validator.isRequired('#address', 'Vui lòng nhập trường này'),
            Validator.isRequired('input[name="gender"]', 'Vui lòng điền trường này'),



            Validator.isEmail('#email'),
            Validator.minLength('#password', 6),
            Validator.isRequired('#password_confirmation'),
            Validator.isConfirmed('#password_confirmation', function () {
                return document.querySelector('#form-1 #password').value;
            }, 'Mật khẩu nhập lại không chính xác')
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