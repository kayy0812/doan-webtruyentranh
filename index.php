<?php
session_start();
require_once dirname(__FILE__) . '/TruyenTranh/autoload.php';

use TruyenTranh\Models\User;
use TruyenTranh\Unit;
use TruyenTranh\Base;

// Thông tin kết nối cơ sở dữ liệu
define("DB_HOST", 'localhost');
define("DB_PORT", '3306');
define("DB_NAME", 'db_truyentranh');
define("DB_USER", 'root');
define("DB_PASS", '');




$testBase = new Base();
$dataTest = $testBase->select(['users', 'role_default_list as roles'], [
    // 'column' => ['user_id', 'last_name'],
    'limit' => [
        'offset' => 0,
        'length' => 10
    ],
    'where' => [
        'users.role_id = roles.role_id'
    ]
]);

var_dump(mysqli_fetch_assoc($dataTest));

//test user
// $user = new User();

// $testCreateUser = $user->create('levanloc81134', 'locdeptrai', ['first_name' => 'Le', 'middle_name' => 'Van', 'last_name' => 'Loc']);

// if ($testCreateUser) {
//     echo 'Da them thanh cong';
// } else {
//     echo 'Da ton tai';
// }
?>

<script>
    console.log(<?php echo json_encode($dataTest, JSON_PRETTY_PRINT) ?>);
</script>