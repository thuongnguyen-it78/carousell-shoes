
let currentLink = window.location.search
let originPathLink = window.location.origin + window.location.pathname

$(document).ready(function(){
    let categoryContainer = document.querySelector('.shop__sidebar__categories')
    let priceContainer = document.querySelector('.shop__sidebar__price')
    let sizeContainer = document.querySelector('.shop__sidebar__size')
    let genderContainer = document.querySelector('.shop__sidebar__tags')
    let sortContainer = document.querySelector('.nice-select')
    
    categoryContainer.addEventListener('click', categoryFilter)
    priceContainer.addEventListener('click', priceFilter)
    sizeContainer.addEventListener('click', sizeFilter)
    genderContainer.addEventListener('click', genderFilter)
    sortContainer.addEventListener('click', sortFilter)
})

function sortFilter(e) {
    let filterValue = e.target.dataset.value
    console.log(filterValue)

    if(!filterValue) return
    if(filterValue.includes("Thấp Tới Cao")) filterValue = "asc"
    else filterValue = "des"

    let index = currentLink.indexOf('sort=')

    if(index != -1) {
        if(currentLink.slice(index + 5, index + 8) == filterValue) return
        let replace = currentLink.slice(index, index + 8)
        currentLink = currentLink.replace(replace, `sort=${filterValue}`)

        console.log(currentLink)
        let totalLink = `${originPathLink}${currentLink}`
        history.pushState({}, null, totalLink)
        filterShoesAjax(totalLink)
        return
    }

    if(currentLink.indexOf('?') == -1) currentLink = '?' + currentLink
    currentLink = currentLink.replace('?', `?sort=${filterValue}&`)
    console.log(currentLink)
    // window.location.search = currentLink
    let totalLink = `${originPathLink}${currentLink}`
    history.pushState({}, null, totalLink)
    filterShoesAjax(totalLink)

}

function genderFilter(e) {
    let filterValue = e.target.dataset.gender

    if(!filterValue) return
    filterValue = parseInt(filterValue)
    let index = currentLink.indexOf('gender=')

    if(index != -1) {
        if(currentLink.slice(index + 7, index + 8) == filterValue) return
        let replace = currentLink.slice(index, index + 8)
        currentLink = currentLink.replace(replace, `gender=${filterValue}`)

        console.log(currentLink)
        let totalLink = `${originPathLink}${currentLink}`
        history.pushState({}, null, totalLink)
        filterShoesAjax(totalLink)

        return
    }

    if(currentLink.indexOf('?') == -1) currentLink = '?' + currentLink
    currentLink = currentLink.replace('?', `?gender=${filterValue}&`)
    console.log(currentLink)
    let totalLink = `${originPathLink}${currentLink}`
    history.pushState({}, null, totalLink)
    filterShoesAjax(totalLink)

}

function sizeFilter() {
    let filterValue = document.querySelector('label.active input').value
    if(!filterValue) return
    filterValue = parseInt(filterValue)
    let index = currentLink.indexOf('size=')

    if(index != -1) {
        if(currentLink.slice(index + 5, index + 6) == filterValue) return
        let replace = currentLink.slice(index, index + 6)
        currentLink = currentLink.replace(replace, `size=${filterValue}`)

        console.log(currentLink)
        let totalLink = `${originPathLink}${currentLink}`
        history.pushState({}, null, totalLink)
        filterShoesAjax(totalLink)

        return
    }

    if(currentLink.indexOf('?') == -1) currentLink = '?' + currentLink
    currentLink = currentLink.replace('?', `?size=${filterValue}&`)
    console.log(currentLink)
    let totalLink = `${originPathLink}${currentLink}`
    history.pushState({}, null, totalLink)
    filterShoesAjax(totalLink)

}

function priceFilter(e) {
    let filterValue = e.target.dataset.price
    if(!filterValue) return
    filterValue = parseInt(filterValue)

    let index = currentLink.indexOf('price=')
    if(index != -1) {
        if(currentLink.slice(index + 6, index + 7) == filterValue) return
        let replace = currentLink.slice(index, index + 7)
        currentLink = currentLink.replace(replace, `price=${filterValue}`)

        console.log(currentLink)
        let totalLink = `${originPathLink}${currentLink}`
        history.pushState({}, null, totalLink)
        filterShoesAjax(totalLink)

        return
    }

    if(currentLink.indexOf('?') == -1) currentLink = '?' + currentLink
    currentLink = currentLink.replace('?', `?price=${filterValue}&`)
    console.log(currentLink)
    let totalLink = `${originPathLink}${currentLink}`
    history.pushState({}, null, totalLink)
    filterShoesAjax(totalLink)

}

function categoryFilter(e) {
    let filterValue = e.target.dataset.category

    if(!filterValue) return

    filterValue = parseInt(filterValue)

    let index = currentLink.indexOf('category=')
    if(index != -1) {
        if(currentLink.slice(index + 9, index + 10) == filterValue) return
        let replace = currentLink.slice(index, index + 10)
        currentLink = currentLink.replace(replace, `category=${filterValue}`)
        console.log(currentLink)
        let totalLink = `${originPathLink}${currentLink}`
        history.pushState({}, null, totalLink)
        filterShoesAjax(totalLink)


        return;
    }
    if(currentLink.indexOf('?') == -1) currentLink = '?' + currentLink
    currentLink = currentLink.replace('?', `?category=${filterValue}&`)
    let totalLink = `${originPathLink}${currentLink}`
    history.pushState({}, null, totalLink)
    filterShoesAjax(totalLink)

}

function filterShoesAjax(link) {
    console.log(link)
    $.ajax({
        url : link + "&ajax=1",
        type : "get",
        dataType: "text",
        success : renderFilter
    })
}

function renderFilter(response) {
    let containerShoes = document.querySelector('.spad .container .col-lg-9 > .row')

    let arrayRespone = response;

    if(typeof response === "string") {
        arrayRespone = JSON.parse(response);
    }

    let html = '';
    let img = ''
    for(let shoes of arrayRespone) {
        img = shoes.shoesImage.split(",")[0];
        html += `<div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item sale">
                                <div class="product__item__pic set-bg" data-setbg="/resources/img${img}" style="background-image: url('/resources/img${img}')">
                                    <span class="label">Sale</span>
                                </div>
                                <div class="product__item__text">
                                    <h6>${getName(shoes.shoesName)}</h6>
                                    <a href="/product-detail/${shoes.shoesID}" class="add-cart">MUA NGAY</a>
                                    <p>${shoes.shoesColor}</p>
                                    <h5>${shoes.shoesPrice} VND</h5>
                                </div>
                            </div>
                        </div>`
    }
    console.log(html)

    containerShoes.innerHTML =  html;

}