<?php
use TruyenTranh\Models\Author;

$author = new Author();

if (isset($_POST['author_submit-add'])) {
    if (isset($_POST['author_name']) && $_POST['author_name'] !== '') {
        try {
            $author->add($_POST['author_name'], $_POST['author_desc'], $_POST['author_yob']);

            $_SESSION['txtNotify'] = 'Đã thêm ' . $_POST['author_name'] . ' thành công';
            $_SESSION['txtNotifyCode'] = 'success';
        } catch (Exception $e) {

            $_SESSION['txtNotify'] = $e->getMessage();
            $_SESSION['txtNotifyCode'] = 'danger';
        }
    } else {
        $_SESSION['txtNotify'] = 'Không được để trống!';
        $_SESSION['txtNotifyCode'] = 'danger';
    }
}

if (isset($_POST['author_submit-delete'])) {
    if (isset($_POST['author$author_id']) && $_POST['author$author_id'] !== '') {
        try {
            $author->remove($_POST['author$author_id']);
            $_SESSION['txtNotify'] = 'Đã xóa thành công';
            $_SESSION['txtNotifyCode'] = 'success';
        } catch (Exception $e) {

            $_SESSION['txtNotify'] = 'Không thể xóa được!' . $e->getMessage();
            $_SESSION['txtNotifyCode'] = 'danger';
        }
    }
}
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
    <title>Quản lý tác giả / nhà sản xuất | Admin Comics Page</title>
</head>

<body>
    <div class="wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-3">
                    <?php require_once './admin/components/header.php' ?>
                </div>
                <div class="col-9">
                    <div class="body">
                        <div class="body__wrap">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col">
                                        <h1 class="body__wrap-title">
                                            QUẢN LÝ TÁC GIẢ /NHÀ SẢN XUẤT
                                        </h1>

                                        <div class="body__wrap-subpage-name">
                                            Thêm tác giả / Nhà sản xuất
                                        </div>
                                    </div>
                                </div>


                                <!-- Page index -->
                                <div class="row mt-3">
                                    <div class="col">
                                        <form action="" method="post" class="body__wrap-form-add">
                                            <div class="body__wrap-form-add-group me-3">
                                                <label for="author-name" class="body__wrap-form-add-label">Tên tác giả/ NSX</label>
                                                <input type="text" id="author-name" name="author_name"
                                                    class="body__wrap-form-add-input"
                                                    placeholder="Nhập tên tác giả / nsx ... " required>
                                            </div>

                                            <div class="body__wrap-form-add-group me-3">
                                                <label for="author_desc" class="body__wrap-form-add-label">Mô tả tác giả / NSX</label>
                                                <input type="text" id="author_desc" name="author_desc"
                                                    class="body__wrap-form-add-input"
                                                    placeholder="Mô tả tác giả / NSX ..." required>
                                            </div>

                                            <div class="body__wrap-form-add-group me-3">
                                                <label for="author_yob" class="body__wrap-form-add-label">Năm sinh / Thành lập</label>
                                                <input type="text" id="author_yob" name="author_yob"
                                                    class="body__wrap-form-add-input"
                                                    placeholder="Năm sinh / Thành lập" required>
                                            </div>

                                            <div class="body__wrap-form-add-group">
                                                <input type="submit" id="cat-submit" name="author_submit-add"
                                                    class="btn body__wrap-form-add-submit btn-dark" value="Thêm">
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
                                                        Tên tác giả / NSX
                                                    </div>
                                                    <div class="col-2">
                                                        Tên đường dẫn
                                                    </div>
                                                    <div class="col-3">
                                                        Mô tả tác giả / NSX
                                                    </div>
                                                    <div class="col-2">
                                                        Năm sinh / Thành lập
                                                    </div>
                                                    <div class="col-2">
                                                        Hành Động
                                                    </div>
                                                </div>

                                                <?php
                                                foreach ($author->getAllAuthors() as $i => $val) {
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
                                                        <div class="col-3">
                                                            <?= strlen($val['description']) > 40 ? substr($val['description'], 0, 40) . '...' : $val['description']; ?>
                                                        </div>
                                                        <div class="col-2">
                                                            <?= $val['year_of_birth'] ?>
                                                        </div>
                                                        <div class="col-2">
                                                            <form action="" method="post"
                                                                class="body__wrap-category-action-form">
                                                                <input type="text" name="author_id"
                                                                    value="<?= $val['author_id'] ?>" hidden>
                                                                <input
                                                                    class="btn btn-danger body__wrap-category-action-form-btn"
                                                                    type="submit" name="author_submit-delete" value="Xóa">
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
                    <?php require_once('./admin/components/footer.php') ?>
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