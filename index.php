<?php 
require_once dirname(__FILE__) . '/TruyenTranh/autoload.php';

use TruyenTranh\Models\Category;

// Thông tin kết nối cơ sở dữ liệu
define("DB_HOST", '127.0.0.1');
define("DB_PORT", '3306');
define("DB_NAME", 'db_truyentranh');
define("DB_USER", 'root');
define("DB_PASS", '');

$category = new Category();

// echo 'ĐANG CẬP NHẬT';
print_r($category->createFriendlyText("xin chao cac bạn", 20));