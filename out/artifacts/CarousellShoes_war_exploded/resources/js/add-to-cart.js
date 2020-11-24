let quantity
let productID
let addButton;

function addToCartAjax(e){
    e.preventDefault();

    productID = document.querySelector('input.product-detail-id').value.trim()
    quantity = document.querySelector('.quantity input').value

    console.log(productID, quantity)

    $.ajax({
    url : "/me/cart",
    type : "post",
    dataType:"text",
    data :
        {
        productID : productID,
        quantity : quantity
        },
        success : function (result){
            let quantityCart = document.querySelector('.shopping-cart-fixed span');
            quantityCart.innerText = parseInt(result);
            show()
            setTimeout(show, 3000)


        }
    });
}

$(document).ready(addToCart)

function addToCart() {
    addButton = document.querySelector('.product__details__cart__option .primary-btn')
    addButton.addEventListener('click', addToCartAjax)
}

function show() {
    let speaker = document.querySelector('.noti');
    speaker.classList.toggle('noti-hidden')
}