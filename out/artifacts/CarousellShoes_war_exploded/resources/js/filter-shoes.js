
let currentLink = window.location.search
let originPathLink = window.location.origin + window.location.pathname

$(document).ready(function(){

    // if(currentLink.includes('gender')) return;
    // if(currentLink.includes('cate')) return;
    // if(currentLink.includes('price')) return;
    // if(currentLink.includes('size')) return;
    // if(currentLink.includes('sort')) return;

    let categoryContainer = document.querySelector('.shop__sidebar__categories');
    let priceContainer = document.querySelector('.shop__sidebar__price');
    let sizeContainer = document.querySelector('.shop__sidebar__size');
    let genderContainer = document.querySelector('.shop__sidebar__tags');
    let sortContainer = document.querySelector('.nice-select');


    categoryContainer.addEventListener('click', categoryFilter)
    priceContainer.addEventListener('click', priceFilter)
    sizeContainer.addEventListener('click', sizeFilter);
    genderContainer.addEventListener('click', genderFilter);
    sortContainer.addEventListener('click', sortFilter);



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
        history.pushState({}, null, `${originPathLink}${currentLink}`);
        return
    }

    if(currentLink.indexOf('?') == -1) currentLink = '?' + currentLink;
    currentLink = currentLink.replace('?', `?sort=${filterValue}&`)
    console.log(currentLink)
    // window.location.search = currentLink
    history.pushState({}, null, `${originPathLink}${currentLink}`);



}

function genderFilter(e) {
    let filterValue = e.target.dataset.gender

    if(!filterValue) return
    filterValue = parseInt(filterValue);
    let index = currentLink.indexOf('gender=')

    if(index != -1) {
        if(currentLink.slice(index + 7, index + 8) == filterValue) return
        let replace = currentLink.slice(index, index + 8)
        currentLink = currentLink.replace(replace, `gender=${filterValue}`)

        console.log(currentLink)
        history.pushState({}, null, `${originPathLink}${currentLink}`);

        return
    }

    if(currentLink.indexOf('?') == -1) currentLink = '?' + currentLink;
    currentLink = currentLink.replace('?', `?gender=${filterValue}&`)
    console.log(currentLink)
    history.pushState({}, null, `${originPathLink}${currentLink}`);



}

function sizeFilter() {
    let filterValue = document.querySelector('label.active input').value
    if(!filterValue) return
    filterValue = parseInt(filterValue);
    let index = currentLink.indexOf('size=')

    if(index != -1) {
        if(currentLink.slice(index + 5, index + 6) == filterValue) return
        let replace = currentLink.slice(index, index + 6)
        currentLink = currentLink.replace(replace, `size=${filterValue}`)

        console.log(currentLink)
        history.pushState({}, null, `${originPathLink}${currentLink}`);

        return
    }

    if(currentLink.indexOf('?') == -1) currentLink = '?' + currentLink;
    currentLink = currentLink.replace('?', `?size=${filterValue}&`)
    console.log(currentLink)
    history.pushState({}, null, `${originPathLink}${currentLink}`);




}

function priceFilter(e) {
    let filterValue = e.target.dataset.price
    if(!filterValue) return
    filterValue = parseInt(filterValue);

    let index = currentLink.indexOf('price=')
    if(index != -1) {
        if(currentLink.slice(index + 6, index + 7) == filterValue) return
        let replace = currentLink.slice(index, index + 7)
        currentLink = currentLink.replace(replace, `price=${filterValue}`)

        console.log(currentLink)
        history.pushState({}, null, `${originPathLink}${currentLink}`);

        return
    }

    if(currentLink.indexOf('?') == -1) currentLink = '?' + currentLink;
    currentLink = currentLink.replace('?', `?price=${filterValue}&`)
    console.log(currentLink)
    history.pushState({}, null, `${originPathLink}${currentLink}`);







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
        history.pushState({}, null, `${originPathLink}${currentLink}`);


        return;
    }
    if(currentLink.indexOf('?') == -1) currentLink = '?' + currentLink;
    currentLink = currentLink.replace('?', `?category=${filterValue}&`)
    history.pushState({}, null, `${originPathLink}${currentLink}`);

}
