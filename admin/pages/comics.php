<?php
use TruyenTranh\Models\Category;
use TruyenTranh\Models\Status;
use TruyenTranh\Models\Comic;

$category = new Category();
$status = new Status();
$comic = new Comic();


if (empty($_GET["action"]))
    header("Location: ?route=admin&page=comics&action=default");
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
                                            QUẢN LÝ TRUYỆN
                                        </h1>
                                    </div>
                                </div>


                                <!-- Add comic page -->
                                <?php
                                if (isset($_GET['action'])) {
                                    if ($_GET['action'] == 'create') {
                                        if (isset($_POST['cat_submit-add'])) {
                                            $data = $_POST;

                                            try {
                                                $comic->addComic($data['comic_name'], $data['comic-other-name'], $data['comic-upload-by'], $data['comic-status'], $data['comic-desc'], $data['comic-author'], $data['comic-cats'], $data['comic-poster-img']);
                                                $_SESSION['txtNotify'] = 'Thêm thành công truyện ' . $data['comic_name'];
                                                $_SESSION['txtNotifyCode'] = 'success';
                                            } catch (Exception $e) {
                                                $_SESSION['txtNotify'] = $e->getMessage();
                                                $_SESSION['txtNotifyCode'] = 'danger';
                                            }
                                        }

                                        require_once('./admin/components/comics/create.php');
                                    } else if ($_GET['action'] == 'default') {
                                        require_once('./admin/components/comics/default.php');
                                    }
                                }
                                ?>
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
    <script src="./admin/assets/js/main.js?v=<?= rand() ?>"></script>
    <?php
    if (isset($_SESSION['txtNotify']) && isset($_SESSION['txtNotifyCode'])) {
        echo "<script> notifyElm(\"" . $_SESSION['txtNotify'] . "\", \"" . $_SESSION['txtNotifyCode'] . "\"); </script>";
    }

    session_destroy();
    ?>
</body>

</html>