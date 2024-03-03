
// Notify function
function notifyElm(text, type = 'info') {
    const notify = document.querySelector("#notify");
    notify.innerHTML = `<div class="alert alert-${type}" role="alert">${text}</div>`;

    setTimeout(() => {
    notify.innerHTML = null;
    }, 5000);
}

const posterInput = document.getElementById('comic-poster-img');
const posterImg = document.getElementById('poster-img-preview');

if (posterInput !== null && posterImg !== null) {
    posterInput.onpaste = (e) => {
        imgUrl = e.clipboardData.getData('Text');
        posterImg.src = imgUrl;
    }
}