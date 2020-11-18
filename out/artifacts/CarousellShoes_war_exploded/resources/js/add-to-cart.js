let quantity
let productID = 1;
let addButton;

function addToCartAjax(e){
    e.preventDefault();

    quantity = document.querySelector('.quantity input').value

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
            let quantityCurrent = parseInt(quantityCart.innerText.trim())
            quantityCart.innerText = quantityCurrent + 1;

        }
    });
}

$(document).ready(addToCart)

function addToCart() {
    addButton = document.querySelector('.product__details__cart__option .primary-btn')

    addButton.addEventListener('click', addToCartAjax)

}