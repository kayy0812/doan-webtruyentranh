<?php 
require_once dirname(__FILE__) . '/TruyenTranh/autoload.php';

use TruyenTranh\Models\Category;

// Thông tin kết nối cơ sở dữ liệu
define("DB_HOST", '192.168.1.234');
define("DB_PORT", '3306');
define("DB_NAME", 'db_truyentranh');
define("DB_USER", 'levanloc8112');
define("DB_PASS", 'deochovo');

$category = new Category();

// echo 'ĐANG CẬP NHẬT';
print_r($category->get(true));