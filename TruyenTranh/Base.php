<?php

namespace TruyenTranh;

use TruyenTranh\Unit;

class Base {

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
     * @return array
     */
    public function getDatabase() {
        return $this->db_array;
    }

    /**
     * Hàm truy vấn dữ liệu thủ công
     * @param string $table_name
     * @param array $column
     * @param array $options
     * @return array
     */
    protected function select(string $table_name, array $column, array $where, array $limit, array $options = [
        'distinct' => false
    ]) {
        $query = "SELECT " . !$options['distinct'] == false ? "" : "DISTINCT" . " ";
        $query .= !$column == [] ? "*": implode(', ', $column) . " ";
        $query .= "FROM ". $table_name;
        if (!empty($where)) {
            $query .= " WHERE ". implode(" ", $where);
        }

        if (!empty($limit)) {
            $query .= " LIMIT " . $limit['offset'] . ", " . $limit['length'];
        }

        $result = mysqli_query($this->db_array, $query);
        return $result->fetch_array() ? $result->fetch_array() : [];
    }


    /**
     * Chèn dữ liệu
     * @param string $table_name
     * @param array $key
     * @param array $data
     * @return bool
     */
    protected function insert(string $table_name, array $key, array $data) {
        $query = "INSERT INTO $table_name (";
        $query .= implode(", ", $key) . ') ';
        $query .= 'VALUES (' . implode(', ', $data) .')';

        if(mysqli_query($this->db_array, $query)) {
            return true;
        }

        return false;
    }

     /**
     * Đóng kết nối với cơ sở dữ liệu
     * @return null
     */
    public function __destruct() {
    	mysqli_close($this->db_array);
    }
}