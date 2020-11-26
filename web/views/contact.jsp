<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="thuongnguyen.it78 17130239 17130299 17130247">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="thuongnguyen.it78 17130239 17130299 17130247">

    <title>Contact Us</title>

    <%@include file="partials/css-link.jsp" %>

</head>

<body>
    <!-- Fixed -->
    <a href="#" class="scrollToTop"><i class="fa fa-arrow-up"></i></a>
    <a href="/me/cart" class="shopping-cart-fixed"><i class="fal fa-shopping-bag"></i><span>

        <%HashMap mapCartSize = (HashMap) request.getSession().getAttribute("cart");%>
        <%=mapCartSize.size()%>
    </span></a>
    <%@include file="partials/header.jsp" %>

<!-- MAIN SECTION BEGIN -->
    <!-- Header Section End -->
   <h1 class = "contact-us">You Need To Find Us?</h1>
    <!-- Map Begin -->
    <div class="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.2717047683086!2d106.78896371455559!3d10.866927092260157!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276120e747b7%3A0x4621264c786596c7!2zxJDhuqFpIGjhu41jIE7DtG5nIEzDom0!5e0!3m2!1svi!2s!4v1601449481770!5m2!1svi!2s" height="500" style="border:0;" allowfullscreen="true" aria-hidden="false" tabindex="0"></iframe>
    </div>
        <!-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d111551.9926412813!2d-90.27317134641879!3d38.606612219170856!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited%20States!5e0!3m2!1sen!2sbd!4v1597926938024!5m2!1sen!2sbd" height="500" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe> -->
    </div>
    <!-- Map End -->

    <!-- Contact Section Begin -->
       <h1 class = "contact-usa" style="margin-top: 20px">You Want To Contact With Us?</h1>

    <section class="contact spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="contact__text">
                        <div class="section-title">
                            <span>Thông Tin</span>
                            <h2>Contact Us</h2>
                            <p>Trong cuộc sống có rất nhiều sự lựa chọn. Cảm ơn vì đã chọn Carousell.</p>
                        </div>
                        <ul>
                            <li>
                                <h4>VIỆT NAM</h4>
                                <p>6 QL1A, Khu Phố 1, Dĩ An, Thành phố Hồ Chí Minh<br/>
                                    +84 702626056</p>
                            </li>

                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="contact__form">
                        <form action="#">
                            <div class="row">
                                <div class="col-lg-6">
                                    <input type="text" placeholder="Name">
                                </div>
                                <div class="col-lg-6">
                                    <input type="text" placeholder="Email">
                                </div>
                                <div class="col-lg-12">
                                    <textarea placeholder="Message"></textarea>
                                    <button type="submit" class="site-btn">Send Message</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->
<!-- MAIN SECTION END -->

    <%@include file="partials/footer.jsp" %>


    <!-- Search Begin -->
    <%@include file="partials/search.jsp" %>
    <!-- Search End -->

    <!-- Js Plugins -->
    <%@include file="partials/js-link.jsp" %>

</body>

</html>