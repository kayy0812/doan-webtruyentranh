<?php
session_start();
require_once dirname(__FILE__) . '/TruyenTranh/autoload.php';

use TruyenTranh\Models\User;
use TruyenTranh\Unit;

// Thông tin kết nối cơ sở dữ liệu
define("DB_HOST", '192.168.1.234');
define("DB_PORT", '3306');
define("DB_NAME", 'db_truyentranh');
define("DB_USER", 'levanloc8112');
define("DB_PASS", 'deochovo');

$user = new User();

$user->create('levanloc8112', 'locdeptrai', ['first_name' => 'Le', 'middle_name' => 'Van', 'last_name' => 'Loc']);