<?php 
require_once dirname(__FILE__) . '/TruyenTranh/autoload.php';

use TruyenTranh\Main;

// Thông tin kết nối cơ sở dữ liệu
define("DB_HOST", '127.0.0.1');
define("DB_PORT", '3306');
define("DB_NAME", 'db_truyentranh');
define("DB_USER", 'root');
define("DB_PASS", '');

$main = new Main();

print_r($main->query("SELECT * FROM comics"));