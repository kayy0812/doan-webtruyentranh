
// Notify function
function notifyElm(text, type = 'info') {
    const notify = document.querySelector("#notify");
    notify.innerHTML = `<div class="alert alert-${type}" role="alert">${text}</div>`;

    setTimeout(() => {
    notify.innerHTML = null;
    }, 5000);
}
 