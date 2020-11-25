$(document).ready(search)

let arrayRespone = [];
let inputValue = '';
let numberOfResult = 3;
let inputSearch
let searchResult

function search() {
    inputSearch = document.querySelector('.search-model .search-auto-input')
    inputSearch.addEventListener('keyup', searchAjax)
}

function searchAjax(e) {
    inputValue = e.target.value
    if(arrayRespone.length > 0) {
        render(arrayRespone)
        console.log('aye')
        return
    }
    $.ajax({
        url : `/search-result?value=1`,
        type : "get",
        dataType: "text",
        success : render
    });
}

function render(result) {
    arrayRespone = result;

    if(typeof result === "string") {
        arrayRespone = JSON.parse(result);
    }


    arrayResponeFilter = arrayRespone.filter(shoes => {
        return shoes.shoesName.toLowerCase().includes(inputValue.toLowerCase());
    })

    let arrayResult = arrayResponeFilter.slice(0, numberOfResult)

    searchResult = document.querySelector(".search-auto-list")

    let html = '';
    let img = ''
    for(let shoes of arrayResult) {
        img = shoes.shoesImage.split(",")[0];
        html += `<a class="search-auto-item" href = "/product-detail/${shoes.shoesID}">
                    <img class = "search-item-cus" src="/resources/img${img}" alt="">
                    <span class = "search-text-cus">${getName(shoes.shoesName)}</span>
                </a>`
    }

    searchResult.innerHTML =  html;

}

function getName(shoesName) {
    let arrNameShoes = shoesName.split("-");
    return arrNameShoes[0].concat("-").concat(arrNameShoes[1]);
}

/*
B1. Gán sự kiện kep up cho thẻ input
B2. Khi thay đổi gửi ajax lên server để lấy dữ liệu về
    Note: Nếu đã có dữ liệu trước đó thì không gọi ajax
B3. Lọc dữ liệu ở client
B4. Đổ dữ liệu vào search
 */