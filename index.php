<?php
session_start();
require_once dirname(__FILE__) . '/TruyenTranh/autoload.php';

use TruyenTranh\Base;

// Thông tin kết nối cơ sở dữ liệu
define("DB_HOST", 'localhost');
define("DB_PORT", '3306');
define("DB_NAME", 'db_truyentranh');
define("DB_USER", 'root');
define("DB_PASS", '');

$testBase = new Base();

if (isset($_GET['route'])) {
    $redirector = $_GET['route'];

    if ($redirector) {
        switch ($redirector) {
            case 'admin':
            case 'thaytrinhno1':
                require_once './admin/index.php';
                break;
            default:
                require_once './errors/404.php';
        }
    }
} else {
    // require ('./Pages/Home.php');
}
