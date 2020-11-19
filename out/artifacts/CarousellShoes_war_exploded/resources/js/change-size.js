let listSize

function changeSizeAjax(e){
    let isChange = e.target.classList.contains('active');
    if(isChange) return;
    let sizeID = e.target.value
    let shoesID = window.location.href.split("/").slice(-1)[0];
    $.ajax({
        url : "/me/change-size",
        type : "post",
        dataType:"text",
        data :
            {
                shoesID,
                sizeID
            },
        success : changeSizeResponse
    });
}

$(document).ready(changeSize)

function changeSize() {
    listSize = document.querySelectorAll('.product__details__option__size label')
    listSize = Array.from(listSize)
    listSize.forEach((size) => {
        size.addEventListener('click', changeSizeAjax)
    })
}

function changeSizeResponse(result) {
    document.querySelector('input.product-detail-id').value = result
}