<%@ page import="thuongnguyen.it78.models.Shoes" %>
<%@ page import="thuongnguyen.it78.configs.LibraryMethod" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="thuongnguyen.it78 17130239 17130299 17130247">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="thuongnguyen.it78 17130239 17130299 17130247">
    <%
        Shoes shoes = (Shoes) request.getAttribute("shoes");

        if(shoes != null) {
   %>


    <title> <%=LibraryMethod.capFirstLetter(LibraryMethod.getNameShoes(shoes.getShoesName()))%></title>
    <%
        } else {
    %>
        <title>Product Detail</title>
        <%
            }
        %>

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
                             <a href="/">Trang Chủ</a>
                             <a href="/product-list"><%=shoes.getCategoryName()%></a>
                             <span><%=LibraryMethod.capFirstLetter(LibraryMethod.getNameShoes(shoes.getShoesName()))%></span>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </section>
     <!-- Breadcrumb Section End -->

     <!-- Shop Details Section Begin -->

     <section class = "container section-main section-padding" style = "padding-top: 5px">
         <%

             if(shoes == null) {
         %>
         <div class="shop-details row">
             <div class="product__details__pic col-lg-7 col-md-12 col-sm-12">
                 <div class="container">
                     <div class="row">
                         <div class="col-lg-2 col-md-2">
                             <ul class="nav nav-tabs" role="tablist">
                                 <li class="nav-item">
                                     <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">
                                         <div class="product__thumb__pic set-bg" data-setbg="/resources/img/shop-details/1.jpg">
                                         </div>
                                     </a>
                                 </li>
                                 <li class="nav-item">
                                     <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">
                                         <div class="product__thumb__pic set-bg" data-setbg="/resources/img/shop-details/2.jpg">
                                         </div>
                                     </a>
                                 </li>
                                 <li class="nav-item">
                                     <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">
                                         <div class="product__thumb__pic set-bg" data-setbg="/resources/img/shop-details/3.jpg">
                                         </div>
                                     </a>
                                 </li>
                                 <li class="nav-item">
                                     <a class="nav-link" data-toggle="tab" href="#tabs-4" role="tab">
                                         <div class="product__thumb__pic set-bg" data-setbg="/resources/img/shop-details/4.jpg">

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                         <div class="col-lg-10 col-md-10">
                             <div class="tab-content">
                                 <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                     <div class="product__details__pic__item">
                                         <img src="/resources/img/shop-details/1.jpg" alt="">
                                     </div>
                                 </div>
                                 <div class="tab-pane" id="tabs-2" role="tabpanel">
                                     <div class="product__details__pic__item">
                                         <img src="/resources/img/shop-details/2.jpg" alt="">
                                     </div>
                                 </div>
                                 <div class="tab-pane" id="tabs-3" role="tabpanel">
                                     <div class="product__details__pic__item">
                                         <img src="/resources/img/shop-details/3.jpg" alt="">
                                     </div>
                                 </div>
                                 <div class="tab-pane" id="tabs-4" role="tabpanel">
                                     <div class="product__details__pic__item">
                                         <img src="/resources/img/shop-details/4.jpg" alt="">
                                     </div>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
             <div class="product__details__content col-lg-5 col-md-12 col-sm-12">
                 <div class="container">
                     <div class="row d-flex justify-content-left">
                         <div class="col-lg-12">
                             <div class="product__details__text">
                                 <h4>Hooded thermal anorak</h4>
                                 <h3>270.000 VND</h3>
                                 <p class = "description">Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable
                                     cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening
                                     with placket.</p>
                                 <div class="product__details__option">
                                     <div class="product__details__option__size">
                                         <span>Size:</span>
                                         <label class="active" for="39">39
                                             <input type="radio" id="39">
                                         </label>
                                         <label  for="40">40
                                             <input type="radio" id="40">
                                         </label>
                                         <label for="41">41
                                             <input type="radio" id="41">
                                         </label>
                                         <label for="42">42
                                             <input type="radio" id="42">
                                         </label>
                                     </div>
                                     <!-- <div class="product__details__option__color">
                                         <span>Color:</span>
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
                                         <label class="c-9" for="sp-9">
                                             <input type="radio" id="sp-9">
                                         </label>
                                     </div> -->
                                 </div>
                                 <div class="product__details__cart__option">
                                     <div class="quantity">
                                         <div class="pro-qty">
                                             <input type="text" value="1">
                                         </div>
                                     </div>
                                     <a href="/shopping-cart.html" class="primary-btn">add to cart</a>
                                 </div>

                                 <div class="shop__sidebar__accordion">
                                     <div class="accordion" id="accordionExample">
                                         <div class="card">
                                             <div class="card-heading">
                                                 <a data-toggle="collapse" data-target="#collapseTwo">THÔNG TIN SẢN PHẨM</a>
                                             </div>
                                             <div id="collapseTwo" class="collapse show" data-parent="#accordionExample">
                                                 <div class="card-body">
                                                     <div class="shop__sidebar__brand">
                                                         <ul>
                                                             <li>
                                                                 Gender: Unisex      <br>
                                                                 Size run: 39 – 42<br>
                                                                 Upper: Canvas<br>
                                                                 Outsole: Rubber<br>
                                                                 <hr>
                                                             </li>
                                                             <li><img src="/resources/img/site/size.jpg" alt=""></li>

                                                         </ul>
                                                     </div>
                                                 </div>
                                             </div>
                                         </div>
                                         <div class="card">
                                             <div class="card-heading">
                                                 <a data-toggle="collapse" data-target="#collapseThree">QUY ĐỊNH ĐỔI SẢN PHẦM</a>
                                             </div>
                                             <div id="collapseThree" class="collapse" data-parent="#accordionExample">
                                                 <div class="card-body">
                                                     <div class="shop__sidebar__price ">
                                                         <ul class = "list-icont">
                                                             <li><i class="fas fa-star"></i> Chỉ đổi hàng 1 lần duy nhất, mong bạn cân nhắc kĩ trước khi quyết định.</li>
                                                             <li><i class="fas fa-star"></i> Thời hạn đổi sản phẩm khi mua trực tiếp tại cửa hàng là 07 ngày, kể từ ngày mua. Đổi sản phẩm khi mua online là 14 ngày, kể từ ngày nhận hàng.</li>
                                                             <li><i class="fas fa-star"></i> Sản phẩm đổi phải kèm hóa đơn. Bắt buộc phải còn nguyên tem, hộp, nhãn mác.</li>
                                                             <li><i class="fas fa-star"></i> Sản phẩm đổi không có dấu hiệu đã qua sử dụng, không giặt tẩy, bám bẩn, biến dạng.</li>
                                                             <li>Ananas chỉ ưu tiên hỗ trợ đổi size. Trong trường hợp sản phẩm hết size cần đổi, bạn có thể đổi sang 01 sản phẩm khác:
                                                                 <p>- Nếu sản phẩm muốn đổi ngang giá trị hoặc có giá trị cao hơn, bạn sẽ cần bù khoảng chênh lệch tại thời điểm đổi (nếu có).</p>
                                                                 <p>- Nếu bạn mong muốn đổi sản phẩm có giá trị thấp hơn, chúng tôi sẽ không hoàn lại tiền.</p></li>
                                                             <li><i class="fas fa-star"></i> Trong trường hợp sản phẩm - size bạn muốn đổi không còn hàng trong hệ thống. Vui lòng chọn sản phẩm khác.</li>
                                                             <li><i class="fas fa-star"></i> Không hoàn trả bằng tiền mặt dù bất cứ trong trường hợp nào. Mong bạn thông cảm.</li>
                                                         </ul>
                                                     </div>
                                                 </div>
                                             </div>
                                         </div>
                                         <div class="card">
                                             <div class="card-heading">
                                                 <a data-toggle="collapse" data-target="#collapseFour">BẢO HÀNH THẾ NÀO</a>
                                             </div>
                                             <div id="collapseFour" class="collapse" data-parent="#accordionExample">
                                                 <div class="card-body">
                                                     <div class="shop__sidebar__size">

                                                         Mỗi đôi giày Ananas trước khi xuất xưởng đều trải qua nhiều khâu kiểm tra. Tuy vậy, trong quá trình sử dụng, nếu nhận thấy các lỗi: gãy đế, hở đế, đứt chỉ may,...trong thời gian 6 tháng từ ngày mua hàng, mong bạn sớm gửi sản phẩm về Ananas nhằm giúp chúng tôi có cơ hội phục vụ bạn tốt hơn. Vui lòng gửi sản phẩm về bất kỳ cửa hàng Ananas nào, hoặc gửi đến trung tâm bảo hành Ananas ngay trong trung tâm TP.HCM trong giờ hành chính: <br>
                                                         Lầu 1, 75/1 Mai Thị Lựu, P. Đa Kao, Q1, TP.HCM
                                                         .Hotline: 028 3526 7774

                                                     </div>
                                                 </div>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
         <%
         } else {
                 String[] image = shoes.getShoesImage().split(",");
         %>
         <div class="shop-details row">
             <div class="product__details__pic col-lg-7 col-md-12 col-sm-12">
                 <div class="container">
                     <div class="row">
                         <div class="col-lg-2 col-md-2">
                             <ul class="nav nav-tabs" role="tablist">
                                 <li class="nav-item">
                                     <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">
                                         <div class="product__thumb__pic set-bg" data-setbg="/resources/img<%=image[0]%>">
                                         </div>
                                     </a>
                                 </li>
                                 <li class="nav-item">
                                     <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">
                                         <div class="product__thumb__pic set-bg" data-setbg="/resources/img<%=image[1]%>">
                                         </div>
                                     </a>
                                 </li>
                                 <li class="nav-item">
                                     <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">
                                         <div class="product__thumb__pic set-bg" data-setbg="/resources/img<%=image[2]%>">
                                         </div>
                                     </a>
                                 </li>
                                 <li class="nav-item">
                                     <a class="nav-link" data-toggle="tab" href="#tabs-4" role="tab">
                                         <div class="product__thumb__pic set-bg" data-setbg="/resources/img<%=image[3]%>">

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                         <div class="col-lg-10 col-md-10">
                             <div class="tab-content">
                                 <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                     <div class="product__details__pic__item">
                                         <img src="/resources/img<%=image[0]%>" alt="">
                                     </div>
                                 </div>
                                 <div class="tab-pane" id="tabs-2" role="tabpanel">
                                     <div class="product__details__pic__item">
                                         <img src="/resources/img<%=image[1]%>" alt="">
                                     </div>
                                 </div>
                                 <div class="tab-pane" id="tabs-3" role="tabpanel">
                                     <div class="product__details__pic__item">
                                         <img src="/resources/img<%=image[2]%>" alt="">
                                     </div>
                                 </div>
                                 <div class="tab-pane" id="tabs-4" role="tabpanel">
                                     <div class="product__details__pic__item">
                                         <img src="/resources/img<%=image[3]%>" alt="">
                                     </div>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
             <div class="product__details__content col-lg-5 col-md-12 col-sm-12">
                 <div class="container">
                     <div class="row d-flex justify-content-left">
                         <div class="col-lg-12">
                             <div class="product__details__text">
                                 <h4><%=shoes.getShoesName()%></h4>
                                 <h3><%=LibraryMethod.priceToString(shoes.getShoesPrice())%></h3>
                                 <p class = "description"><%=shoes.getShoesDescription()%></p>
                                 <div class="product__details__option">
                                     <div class="product__details__option__size">
                                         <span>Size:</span>
                                         <label class="active" for="39">39
                                             <input type="radio" id="39">
                                         </label>
                                         <label  for="40">40
                                             <input type="radio" id="40">
                                         </label>
                                         <label for="41">41
                                             <input type="radio" id="41">
                                         </label>
                                         <label for="42">42
                                             <input type="radio" id="42">
                                         </label>
                                     </div>
                                     <!-- <div class="product__details__option__color">
                                         <span>Color:</span>
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
                                         <label class="c-9" for="sp-9">
                                             <input type="radio" id="sp-9">
                                         </label>
                                     </div> -->
                                 </div>
                                 <div class="product__details__cart__option">
                                     <div class="quantity">
                                         <div class="pro-qty">
                                             <input type="text" value="1">
                                         </div>
                                     </div>
                                     <a href="/shopping-cart.html" class="primary-btn">add to cart</a>
                                 </div>

                                 <div class="shop__sidebar__accordion">
                                     <div class="accordion" id="accordionExample">
                                         <div class="card">
                                             <div class="card-heading">
                                                 <a data-toggle="collapse" data-target="#collapseTwo">THÔNG TIN SẢN PHẨM</a>
                                             </div>
                                             <div id="collapseTwo" class="collapse show" data-parent="#accordionExample">
                                                 <div class="card-body">
                                                     <div class="shop__sidebar__brand">
                                                         <ul>
                                                             <li>
                                                                 Gender: <%=LibraryMethod.getGenderShoes(shoes.getShoesGender())%>      <br>
                                                                 Size run: 39 – 42<br>
                                                                 Upper: Canvas<br>
                                                                 Outsole: Rubber<br>
                                                                 <hr>
                                                             </li>
                                                             <li><img src="/resources/img/site/size.jpg" alt=""></li>

                                                         </ul>
                                                     </div>
                                                 </div>
                                             </div>
                                         </div>
                                         <div class="card">
                                             <div class="card-heading">
                                                 <a data-toggle="collapse" data-target="#collapseThree">QUY ĐỊNH ĐỔI SẢN PHẦM</a>
                                             </div>
                                             <div id="collapseThree" class="collapse" data-parent="#accordionExample">
                                                 <div class="card-body">
                                                     <div class="shop__sidebar__price ">
                                                         <ul class = "list-icont">
                                                             <li><i class="fas fa-star"></i> Chỉ đổi hàng 1 lần duy nhất, mong bạn cân nhắc kĩ trước khi quyết định.</li>
                                                             <li><i class="fas fa-star"></i> Thời hạn đổi sản phẩm khi mua trực tiếp tại cửa hàng là 07 ngày, kể từ ngày mua. Đổi sản phẩm khi mua online là 14 ngày, kể từ ngày nhận hàng.</li>
                                                             <li><i class="fas fa-star"></i> Sản phẩm đổi phải kèm hóa đơn. Bắt buộc phải còn nguyên tem, hộp, nhãn mác.</li>
                                                             <li><i class="fas fa-star"></i> Sản phẩm đổi không có dấu hiệu đã qua sử dụng, không giặt tẩy, bám bẩn, biến dạng.</li>
                                                             <li>Ananas chỉ ưu tiên hỗ trợ đổi size. Trong trường hợp sản phẩm hết size cần đổi, bạn có thể đổi sang 01 sản phẩm khác:
                                                                 <p>- Nếu sản phẩm muốn đổi ngang giá trị hoặc có giá trị cao hơn, bạn sẽ cần bù khoảng chênh lệch tại thời điểm đổi (nếu có).</p>
                                                                 <p>- Nếu bạn mong muốn đổi sản phẩm có giá trị thấp hơn, chúng tôi sẽ không hoàn lại tiền.</p></li>
                                                             <li><i class="fas fa-star"></i> Trong trường hợp sản phẩm - size bạn muốn đổi không còn hàng trong hệ thống. Vui lòng chọn sản phẩm khác.</li>
                                                             <li><i class="fas fa-star"></i> Không hoàn trả bằng tiền mặt dù bất cứ trong trường hợp nào. Mong bạn thông cảm.</li>
                                                         </ul>
                                                     </div>
                                                 </div>
                                             </div>
                                         </div>
                                         <div class="card">
                                             <div class="card-heading">
                                                 <a data-toggle="collapse" data-target="#collapseFour">BẢO HÀNH THẾ NÀO</a>
                                             </div>
                                             <div id="collapseFour" class="collapse" data-parent="#accordionExample">
                                                 <div class="card-body">
                                                     <div class="shop__sidebar__size">

                                                         Mỗi đôi giày Ananas trước khi xuất xưởng đều trải qua nhiều khâu kiểm tra. Tuy vậy, trong quá trình sử dụng, nếu nhận thấy các lỗi: gãy đế, hở đế, đứt chỉ may,...trong thời gian 6 tháng từ ngày mua hàng, mong bạn sớm gửi sản phẩm về Ananas nhằm giúp chúng tôi có cơ hội phục vụ bạn tốt hơn. Vui lòng gửi sản phẩm về bất kỳ cửa hàng Ananas nào, hoặc gửi đến trung tâm bảo hành Ananas ngay trong trung tâm TP.HCM trong giờ hành chính: <br>
                                                         Lầu 1, 75/1 Mai Thị Lựu, P. Đa Kao, Q1, TP.HCM
                                                         .Hotline: 028 3526 7774

                                                     </div>
                                                 </div>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
         <%
             }
         %>
     </section>
     <!-- Shop Details Section End -->

     <!-- MAIN SECTION END -->

     <%@include file="partials/footer.jsp" %>

     <!-- Search Begin -->
     <%@include file="partials/search.jsp" %>
     <!-- Search End -->

    <!-- Js Plugins -->
     <%@include file="partials/js-link.jsp" %>

     <script src="/resources/js/add-to-cart"></script>



</body>

</html>