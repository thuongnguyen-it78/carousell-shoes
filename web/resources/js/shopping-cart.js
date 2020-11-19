if(document.readyState == 'loading') {
    document.addEventListener('DOMContentLoaded', ready)
} else {
    ready()
}

function format1(n) {
    return  n.toFixed(0).replace(/./g, function(c, i, a) {
        return i > 0 && c !== "." && (a.length - i) % 3 === 0 ? "." + c : c;
    });
}
// cập nhật lại tổng giá
function updateCartTotal(e) {
    if(e)
    changedQuantityAjax(e.target.parentElement.parentElement.parentElement.parentElement, e.target.parentElement.querySelector('input'))
    // lấy ra container chứa list items
    let cartItemContainer = document.querySelector('.shopping__cart__table');

    // từ container đấy lấy ra list items
    let cartRows = cartItemContainer.querySelectorAll('tbody tr')
    let total = 0
    // chạy qua từng phần tử và lấy ra giá và số lượng nhân lại và cộng tất cả lại với nhau
    Array.from(cartRows).forEach((cartRow) => {
        let cartPrice = cartRow.querySelector('td.cart__price')
        let priceElement = cartRow.querySelector('.product__cart__item__text h5') // lấy ra giá
        let quantityElement = cartRow.querySelector('.pro-qty-2 input') // lấy ra số lượng

        let price = parseFloat(priceElement.innerText.replace('VND', '').replaceAll('.', '').trim())
        let quantity = parseInt(quantityElement.value)
        amount = price * quantity;

        cartPrice.innerText = `${format1(amount)} VND`
        total += amount
    })
    // set lại tổng tiền

    document.querySelector(`.cart__total ul li span`).innerText = `${format1(total)} VND`
    document.querySelector('.cart__total ul li:nth-child(3) span').innerText = `${format1(total * 0.1)} VND`
    document.querySelector('.cart__total ul li:nth-child(4) span').innerText = `${format1(total * 0.9 - 30000)} VND`

}
function quantityChanged(event) {
    console.log('aye')

    let input = event.target
    console.log('aye')
    // nếu input không phải là số và bé hơn bằn 0 thì đặt giá trị mặc định nó là 1
    if(isNaN(input.value) || input.value <= 0) input.value = 1
    // nếu không thì update lại tổng số tiền
    updateCartTotal()

}

function removeCartItem(event) {
    let buttonClicked = event.target
    removeCartItemAjax(buttonClicked.parentElement.parentElement)
    buttonClicked.parentElement.parentElement.remove()
    updateCartTotal()
}

function changedQuantityAjax(element, elementQuantity) {
    let productDetailID = element.querySelector('.product__cart__item__text input').value
    let newQuantity = elementQuantity.value
    console.log(productDetailID, newQuantity)


    $.ajax({
        url : "/me/cart/change",
        type : "post",
        dataType:"text",
        data :
            {
                productDetailID,
                newQuantity
            },
        success : function (result){
            console.log('success')

        }
    });

}

function removeCartItemAjax(element) {
    let productDetailID = element.querySelector('.product__cart__item__text input').value

    $.ajax({
        url : "/me/cart/delete",
        type : "post",
        dataType:"text",
        data :
            {
                productDetailID
            },
        success : function (result){
            console.log('success')

        }
    });

}

function ready() {
    // lấy ra list những button delete
    let removeCartItemButtons = document.querySelectorAll('.cart__close i')

    // lặp lại mảng và gán sự kiến click cho từng button
    Array.from(removeCartItemButtons).forEach((button) => {
        button.addEventListener('click', removeCartItem)
    })

    // xử lý cái số lượng, không cho nó bé hơn không và khi thay đổi thì nó tự động tăng số tiền

    // lấy ra list input
    let quantityInputs = document.querySelectorAll('.pro-qty-2 input')
    // gán sự kiện change cho từng thẻ input
    Array.from(quantityInputs).forEach((quantityInput) => {
        quantityInput.addEventListener('change', quantityChanged)
    })

    // xử lý khi nhấn "add to card" ở một item thì nó sẽ tự động thêm vào giỏ hàng, cập nhật giá và các sự kiện khác

    // lấy ra tất cả các nút "add to card"
    // let addToCartButtons = document.querySelectorAll('.shop-item-button')
    // // gán sự kiện click cho từng nút
    // Array.from(addToCartButtons).forEach((addToCartButton) => {
    //     addToCartButton.addEventListener('click', addToCartClicked)
    // })
    //
    // // gán sự kiện khi thanh toán, ta xóa hết element con và thông báo
    // let purchaseButton = document.querySelector('.btn-purchase')
    // purchaseButton.addEventListener('click', purchaseClick)

}

