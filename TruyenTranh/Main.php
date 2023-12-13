<?php

namespace TruyenTranh;

class Main {

    private $db_array = [];

    public function __construct()
    {
        /**
         * Hàm khởi tạo lớp Main
         * Khi gọi lớp Main sẽ yêu cầu kết nối cơ sở dữ liệu
         */
        $this->db_array = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME, DB_PORT);

        /**
         * Báo lỗi khi có lỗi kêt nối tới cơ sở dữ liệu
         * Đóng trang web hoàn toàn
         */
        if(mysqli_connect_error()) {
            die("Error: " . mysqli_connect_error());
        }
    }

    /**
     * Lấy đối tượng chứa cơ sở dữ liệu đã kết nối
     * @return Object
     */
    public function getDatabase() {
        return $this->db_array;
    }

    /**
     * Đóng kết nối với cơ sở dữ liệu
     * @return null
     */
    public function disconnectDatabase () {
        return mysqli_close($this -> db_array);
    }

    /**
     * Hàm truy vấn dữ liệu thủ công
     * @param string $query
     * @return Array
     */
    public function query($query, $fetchAll = false) {
        $result = mysqli_query($this->db_array, $query);
        return $fetchAll == false ? $result->fetch_assoc() : $result->fetch_all();
    }

    public function select() {
        
    }
}