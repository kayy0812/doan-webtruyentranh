<?php
use TruyenTranh\Models\Category;
use TruyenTranh\Models\Status;

$category = new Category();
$status = new Status();

?>

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
    <title>Quản lý truyện | Admin Comics Page</title>
</head>

<body>
    <div class="wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-2">
                    <?php require_once './admin/components/header.php' ?>
                </div>
                <div class="col-10">
                    <div class="body">
                        <div class="body__wrap">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col">
                                        <h1 class="body__wrap-title">
                                            QUẢN LÝ TRUYỆN
                                        </h1>
                                    </div>
                                </div>


                                <!-- Page index -->
                                <div class="row mt-3">
                                    <div class="col">
                                        <h2 class="body__wrap-subtitle">Thêm truyện ở bên dưới</h2>
                                        <form action="" method="post" class="body__wrap-form-add">

                                            <div class="container-fluid">
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="body__wrap-form-add-group">
                                                            <label for="comic-name"
                                                                class="body__wrap-form-add-label">Tên truyện</label>
                                                            <input type="text" id="comic-name" name="comic_name"
                                                                class="body__wrap-form-add-input"
                                                                placeholder="Nhập tên truyện ... " required>
                                                        </div>
                                                    </div>

                                                    <div class="col">
                                                        <div class="body__wrap-form-add-group">
                                                            <label for="comic-other-name"
                                                                class="body__wrap-form-add-label">Tên khác</label>
                                                            <input type="text" id="comic-other-name"
                                                                name="comic-other-name"
                                                                class="body__wrap-form-add-input"
                                                                placeholder="Tên gọi khác của truyện ... " required>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row mt-3">
                                                    <div class="col">
                                                        <div class="body__wrap-form-add-group">
                                                            <label for="comic-desc" class="body__wrap-form-add-label">Mô
                                                                tả</label>
                                                            <textarea id="comic-desc" name="comic-desc"
                                                                class="body__wrap-form-add-textarea" rows="5"
                                                                placeholder="Mô tả ngắn gọn nội dung truyện ... " required></textarea>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row mt-3">
                                                    <div class="col">
                                                        <div class="body__wrap-form-add-group">
                                                            <label for="comic-author" class="body__wrap-form-add-label">Được đăng bởi</label>
                                                            <input type="text" id="comic-author"
                                                                name="comic-author"
                                                                class="body__wrap-form-add-input"
                                                                placeholder="Người đăng" required value="3231" disabled>
                                                        </div>
                                                    </div>

                                                    <div class="col">
                                                        <div class="body__wrap-form-add-group">
                                                            <label for="comic-status" class="body__wrap-form-add-label">Trạng thái truyện</label>
                                                            <select class="form-select body__wrap-form-select" name="comic-status" id="comic-status">
                                                                <option selected>- Chọn trạng thái truyện -</option>
                                                                <?php foreach ($status->getAllStatus() as $i => $val) {?>
                                                                    <option value="<?=$val['status_id']?>"><?=$val['name']?></option>
                                                                <?php } ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row mt-3">
                                                    <div class="col-2 offset-5">
                                                        <div class="body__wrap-form-add-group">
                                                            <input type="submit" id="cat-submit" name="cat_submit-add"
                                                                class="btn body__wrap-form-add-submit btn-dark"
                                                                value="Thêm">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </form>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="col">
                                        <div class="body__wrap-category">
                                            <div class="body__wrap-category-wrap">
                                                <div class="row">
                                                    <div class="col-1">
                                                        STT
                                                    </div>
                                                    <div class="col-2">
                                                        Tên thể loại
                                                    </div>
                                                    <div class="col-2">
                                                        Tên đường dẫn
                                                    </div>
                                                    <div class="col-5">
                                                        Mô tả thể loại
                                                    </div>
                                                    <div class="col-2">
                                                        Hành Động
                                                    </div>
                                                </div>

                                                <?php
                                                foreach ($category->getAll() as $i => $val) {
                                                    ?>
                                                    <div class="row mt-2">
                                                        <div class="col-1">
                                                            <?= $i + 1 ?>
                                                        </div>
                                                        <div class="col-2">
                                                            <?= $val['name'] ?>
                                                        </div>
                                                        <div class="col-2">
                                                            <?= $val['slug'] ?>
                                                        </div>
                                                        <div class="col-5">
                                                            <?= strlen($val['description']) > 40 ? substr($val['description'], 0, 40) . '...' : $val['description']; ?>
                                                        </div>
                                                        <div class="col-2">
                                                            <form action="" method="post"
                                                                class="body__wrap-category-action-form">
                                                                <input type="text" name="category_id"
                                                                    value="<?= $val['category_id'] ?>" hidden>
                                                                <input
                                                                    class="btn btn-danger body__wrap-category-action-form-btn"
                                                                    type="submit" name="cat_submit-delete" value="Xóa">
                                                            </form>
                                                        </div>
                                                    </div>

                                                <?php } ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Notify -->
                                <div class="row">
                                    <div class="col">
                                        <div id="notify"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <footer class="footer">
                        <div class="footer__copyright">
                            <p class="footer__copyright-text">
                                © 2024 Bản quyền giao diện [Le Van Loc, Truong Muu Tan, Tran Vu Duy] - Trang Quản Lý
                                Truyện
                                Tranh
                            </p>
                        </div>
                    </footer>
                </div>
            </div>
        </div>

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
    <?php
    if (isset($_SESSION['txtNotify']) && isset($_SESSION['txtNotifyCode'])) {
        echo "<script> notifyElm(\"" . $_SESSION['txtNotify'] . "\", \"" . $_SESSION['txtNotifyCode'] . "\"); </script>";
    }

    session_destroy();
    ?>
</body>

</html>