<?php

/**
 * Mục đích để gọi các hàm trong 1 lần gọi thay vì require các file cần dùng
 * Được tham khảo thông qua trang web https://viblo.asia/p/php-autoloading-psr4-and-composer-V3m5Wy0QZO7
 */
function load($class)
{
    $levels = explode("\\", $class);
    if ($levels["0"] == "TruyenTranh") {
        unset($levels["0"]);
    }
    $class = implode(DIRECTORY_SEPARATOR, $levels);
    $file  = __DIR__ . DIRECTORY_SEPARATOR . $class . ".php";
    if (is_readable($file)) {
        require $file;
    }
}
spl_autoload_register("load");