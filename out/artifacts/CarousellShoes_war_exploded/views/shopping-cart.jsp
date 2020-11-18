<%@ page import="java.util.HashMap" %>
<%@ page import="thuongnguyen.it78.models.OrderDetail" %>
<%@ page import="thuongnguyen.it78.models.Shoes" %>
<%@ page import="thuongnguyen.it78.daos.ShoesDAO" %>
<%@ page import="thuongnguyen.it78.configs.LibraryMethod" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="thuongnguyen.it78 17130239 17130299 17130247">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="thuongnguyen.it78 17130239 17130299 17130247">

    <title>Shopping Cart</title>

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
                            <a href="/index.html">Home</a>
                            <a href="/shop.html">Shop</a>
                            <span>Shopping Cart</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shopping Cart Section Begin -->
    <section class="shopping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="shopping__cart__table">
                        <table>
                            <thead>
                            <tr>
                                <th>SẢN PHẨM</th>
                                <th>SỐ LƯỢNG</th>
                                <th>THÀNH TIỀN</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                HashMap<Integer, OrderDetail> mapShoes = (HashMap) request.getSession().getAttribute("cart");
                                for (int i : mapShoes.keySet()) {
                                    int quantity = mapShoes.get(i).getQuantity();
                                    Shoes shoesDetail = ShoesDAO.getShoesByShoesDetailId(i);



                            %>
                            <tr>
                                <td class="product__cart__item">
                                    <div class="product__cart__item__pic">
                                        <img src="/resources/img<%=shoesDetail.getShoesImage().split(",")[0]%>" alt="">
                                    </div>
                                    <div class="product__cart__item__text">
                                        <h6><%=LibraryMethod.capFirstLetter(LibraryMethod.getNameShoes(shoesDetail.getShoesName()))%></h6>
                                        <p><%=LibraryMethod.capFirstLetter(shoesDetail.getShoesColor())%> - <%=shoesDetail.getShoesSize()%></p>
                                        <h5><%=LibraryMethod.priceToString(shoesDetail.getShoesPrice())%></h5>
                                    </div>
                                </td>
                                <td class="quantity__item">
                                    <div class="quantity">
                                        <div class="pro-qty-2">
                                            <input type="text" value="<%=quantity%>">
                                        </div>
                                    </div>
                                </td>
                                <td class="cart__price"><%=LibraryMethod.priceToString(shoesDetail.getShoesPrice() * quantity)%></td>
                                <td class="cart__close"><i class="fal fa-trash-alt"></i></td>
                            </tr>
                            <%
                                }
                            %>
<%--                            <tr>--%>
<%--                                <td class="product__cart__item">--%>
<%--                                    <div class="product__cart__item__pic">--%>
<%--                                        <img src="/resources/img/shop/2.jpg" alt="">--%>
<%--                                    </div>--%>
<%--                                    <div class="product__cart__item__text">--%>
<%--                                        <h6>Basas Bumper Gum - High Top</h6>--%>
<%--                                        <p>OFFWHITE/GUM - 42</p>--%>
<%--                                        <h5>490.000 VND</h5>--%>
<%--                                    </div>--%>
<%--                                </td>--%>
<%--                                <td class="quantity__item">--%>
<%--                                    <div class="quantity">--%>
<%--                                        <div class="pro-qty-2">--%>
<%--                                            <input type="text" value="1">--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </td>--%>
<%--                                <td class="cart__price">580.000 VND</td>--%>
<%--                                <td class="cart__close"><i class="fal fa-trash-alt"></i></td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <td class="product__cart__item">--%>
<%--                                    <div class="product__cart__item__pic">--%>
<%--                                        <img src="/resources/img/shop/3.jpg" alt="">--%>
<%--                                    </div>--%>
<%--                                    <div class="product__cart__item__text">--%>
<%--                                        <h6>Basas Mono - Low Top--%>
<%--                                        </h6>--%>
<%--                                        <p>Dark Grey - 42</p>--%>
<%--                                        <h5>450.000 VND</h5>--%>
<%--                                    </div>--%>
<%--                                </td>--%>
<%--                                <td class="quantity__item">--%>
<%--                                    <div class="quantity">--%>
<%--                                        <div class="pro-qty-2">--%>
<%--                                            <input type="text" value="1">--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </td>--%>
<%--                                <td class="cart__price">500.000 VND</td>--%>
<%--                                <td class="cart__close"><i class="fal fa-trash-alt"></i></td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <td class="product__cart__item">--%>
<%--                                    <div class="product__cart__item__pic">--%>
<%--                                        <img src="/resources/img/shop/4.jpg" alt="">--%>
<%--                                    </div>--%>
<%--                                    <div class="product__cart__item__text">--%>
<%--                                        <h6>Basas Mono - Low Top</h6>--%>
<%--                                        <p>Black Cool - 41</p>--%>
<%--                                        <h5>580.000 VND</h5>--%>
<%--                                    </div>--%>
<%--                                </td>--%>
<%--                                <td class="quantity__item">--%>
<%--                                    <div class="quantity">--%>
<%--                                        <div class="pro-qty-2">--%>
<%--                                            <input type="text" value="1">--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </td>--%>
<%--                                <td class="cart__price">700.000 VND</td>--%>
<%--                                <td class="cart__close"><i class="fal fa-trash-alt"></i></td>--%>
<%--                            </tr>--%>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="continue__btn">
                                <a href="#">Continue Shopping</a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="continue__btn update__btn">
                                <a href="#"><i class="fa fa-spinner"></i> Update cart</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="cart__discount">
                        <h6>NHẬP MÃ KHUYẾN MÃI</h6>
                        <form action="#">
                            <input type="text" placeholder="Mã giảm giá">
                            <button type="submit">ÁP DỤNG</button>
                        </form>
                    </div>
                    <div class="cart__total">
                        <h6>ĐƠN HÀNG</h6>
                        <ul>
                            <li>TẠM TÍNH <span>7.730.000 VND</span></li>
                            <li>PHÍ GIAO HÀNG <span>30.000 VND</span></li>
                            <li>GIẢM GIÁ <span>1.200.000 VND</span></li>
                            <li>TỔNG CỘNG<span>6.500.000 VND</span></li>


                        </ul>
                        <a href="#" class="primary-btn">TIẾP TỤC THANH TOÁN</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shopping Cart Section End -->

<!-- MAIN SECTION END -->

    <%@include file="partials/footer.jsp" %>

    <!-- Search Begin -->
    <%@include file="partials/search.jsp" %>
    <!-- Search End -->

    <!-- Js Plugins -->
    <%@include file="partials/js-link.jsp" %>

</body>

</html>