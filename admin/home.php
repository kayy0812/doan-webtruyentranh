<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css"
        integrity="sha512-b2QcS5SsA8tZodcDtGRELiGv5SaKSk1vDHDaQRda0htPYWZ6046lr3kJ5bAAQdpV2mmA/4v0wQF9MyU6/pDIAg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Comic+Neue:ital,wght@1,700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Code+Pro:ital,wght@0,500;1,500&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="./admin/assets/css/base.css?v=<?= rand() ?>">
    <link rel="stylesheet" href="./admin/assets/css/main.css?v=<?= rand() ?>">
    <title>Trang quản lý truyện | Admin Comics Page</title>
</head>

<body>
    <div class="wrapper">
        <div class="container-fluid" style="height: 90%">
            <div class="row" style="height: 100%">
                <div class="col-3">
                    <header class="header">
                        <div class="header__wrap d-flex flex-column">
                            <div class="header__wrap-brand">
                                <a href="/?redirector=admin" class="header__wrap-brand-name">
                                    Comics Toon
                                </a>
                            </div>
                            <div class="header__wrap-slogan">
                                "Choose your life with comic"
                            </div>

                            <div class="header__wrap-menu">
                                <ul class="header__wrap-menu-list">
                                    <li class="header__wrap-menu-item">
                                        <a href="" class="header__wrap-menu-link active">Trang chủ</a>
                                    </li>
                                    <li class="header__wrap-menu-item">
                                        <a href="" class="header__wrap-menu-link">Truyện</a>
                                    </li>
                                    <li class="header__wrap-menu-item">
                                        <a href="" class="header__wrap-menu-link">Tập</a>
                                    </li>
                                    <li class="header__wrap-menu-item">
                                        <a href="" class="header__wrap-menu-link">Thể loại</a>
                                    </li>
                                </ul>
                            </div>

                            <div class="header__wrap-footer mt-auto">
                                <div class="header__wrap-footer-btn-list">
                                    <a href="#" class="btn btn-dark" title="Quản lý người dùng">
                                        <i class="fa-solid fa-users"></i>
                                    </a>
                                    <a href="#" class="btn btn-dark" title="Cài đặt trang web">
                                        <i class="fa-solid fa-gear"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </header>
                </div>
                <div class="col-9">
                    <div class="body">
                        <div class="body__wrap">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-11">
                                        <h1 class="body__wrap-title">
                                            Trang chủ
                                        </h1>
                                    </div>
                                    <div class="col-1">
                                        <button class="btn btn-dark body_wrap-user-btn">
                                            <i class="fa-solid fa-user"></i>

                                            <div class="body_wrap-user-sub">
                                                <ul class="body_wrap-user-list">
                                                    <li class="body_wrap-user-item">
                                                        <a href="" class="body_wrap-user-link">
                                                            Đăng xuất
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </button>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <div id="chartSlide" class="body__wrap-carousel carousel slide">
                                            <h2 class="body__wrap-subtitle text-center">Cập nhật mới nhất</h2></h2>
                                            <!-- <div class="carousel-inner">
                                                <div class="carousel-item active">
                                                </div>
                                                <div class="carousel-item">
                                                    <img src="..." class="d-block w-100" alt="...">
                                                </div>
                                                <div class="carousel-item">
                                                    <img src="..." class="d-block w-100" alt="...">
                                                </div>
                                            </div>
                                            <button class="carousel-control-prev" type="button"
                                                data-bs-target="#chartSlide" data-bs-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Trước</span>
                                            </button>
                                            <button class="carousel-control-next" type="button"
                                                data-bs-target="#chartSlide" data-bs-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Sau</span>
                                            </button> -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="footer__copyright">
                <p class="footer__copyright-text">
                    © 2024 Bản quyền giao diện [Le Van Loc, Truong Muu Tan, Tran Vu Duy] - Trang Quản Lý Truyện Tranh
                </p>
            </div>
        </footer>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/js/all.min.js"
        integrity="sha512-GWzVrcGlo0TxTRvz9ttioyYJ+Wwk9Ck0G81D+eO63BaqHaJ3YZX9wuqjwgfcV/MrB2PhaVX9DkYVhbFpStnqpQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="./admin/assets/js/main.js"></script>
</body>

</html>