<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="thuongnguyen.it78 17130239 17130299 17130247">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="thuongnguyen.it78 17130239 17130299 17130247">
    <%Account accountInfo = (Account) request.getSession().getAttribute("account");%>
    <title><%=accountInfo.getAccountFullName()%></title>

    <%@include file="partials/css-link.jsp" %>

</head>

<body>
    <!-- Fixed -->
    <a href="#" class="scrollToTop"><i class="fa fa-arrow-up"></i></a>

    <%@include file="partials/header.jsp" %>

<!-- MAIN SECTION BEGIN -->

    <div class = "container">
        <div class = "row">
            <!-- Form Signup Section Begin -->
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
            <!-- Form Signup Sectionn End -->

            <!-- Form Signup Section Begin -->
            <section class="breadcrumb-option col-lg-9" style = "padding-bottom: 100px; padding-top: 70px; background-color: #fff;">
                <div class="container" style="border-left: 1px solid #f1f1f1;">
                    <h3 class="post-title" style="text-align: center; font-size: 25px;">THÔNG TIN TÀI KHOẢN</h3>
                    <div class="row">
                        <div class="col-lg-12">
                            <form class="signup-form login-form" action="/me/info?accountID=<%=accountLegal.getAccountID()%>" id="form-1" method="post">
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

                                <%
                                    if(request.getAttribute("success") != null) {
                                %>

                                <!-- ERROR BEGIN  -->
                                <div class="alert alert-success" role="alert">
                                    <i class="fas fa-check-circle" style="color:#0c9147; padding-right: 5px;"></i>
                                    <span style="color:#0c9147;"><%= (String) request.getAttribute("success")%></span>
                                </div>
                                <!-- ERROR END  -->

                                <%
                                    }
                                %>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="checkout__input form-group">
                                            <p>Họ tên<span>*</span></p>
                                            <input type="text" placeholder="Thường Nguyễn" id="fullname" class="form-control" autofocus name="fullname"
                                                   value = "<%=accountLegal.getAccountFullName()%>"
                                            >
                                            <span class="form-message"></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="checkout__input form-group">
                                            <p>Số điện thoại<span>*</span></p>
                                            <input type="text" placeholder="0702626056" id="number" class="form-control" name="number"
                                                   value = "<%=accountLegal.getAccountNumber()%>"
                                            >
                                            <span class="form-message"></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="checkout__input form-group">
                                    <p>Giới tính<span>*</span></p>
                                    <div class = "gender">
                                        <div>
                                            <input type="radio" id="male" value="0" class="radio-input" name="gender"/

                                            <%
                                                if(accountLegal.getAccountGender() == 0) {
                                            %>
                                                checked = true
                                            <%
                                                }
                                            %>

                                            >
                                            <label for="male" class="radio-label"></label><span>Nam</span>
                                            <input type="radio" id="fmale" value="1" class="radio-input" name="gender"/
                                            <%
                                                if(accountLegal.getAccountGender() == 1) {
                                            %>
                                            checked = true
                                            <%
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
                                    <input type="text" placeholder="6 QL1A, Khu Phố 1, Dĩ An, Thành phố Hồ Chí Minh" class="checkout__input__add form-control" id="address" name = "address"
                                           value = "<%=accountLegal.getAccountAddress()%>"
                                    >
                                    <span class="form-message"></span>
                                </div>
                                <button class ="signup-button" type="submit">CẬP NHẬT</button> 
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
            Validator.isRequired('#fullname', 'Vui lòng nhập trường này'),
            Validator.isRequired('#number', 'Vui lòng nhập trường này'),
            Validator.isRequired('#address', 'Vui lòng nhập trường này'),
            Validator.isRequired('input[name="gender"]', 'Vui lòng điền trường này'),

            Validator.minLength('#number', 10),
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