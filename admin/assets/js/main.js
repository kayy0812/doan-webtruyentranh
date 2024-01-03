const userBtn = document.querySelector(".body_wrap-user-btn");
const userSub = document.querySelector(".body_wrap-user-sub");

userBtn.addEventListener("click", () => {
    console.log(userSub.classList.contains('active'))
    if (!userSub.classList.contains('active')) {
        userSub.classList.add("active");
    } else {
        userSub.classList.remove("active");
    }
});
 