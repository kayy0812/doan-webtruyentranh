<?php

namespace TruyenTranh;

use Exception;
use \mysqli_result;

class Base
{

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
        if (mysqli_connect_error()) {
            die("Error: " . mysqli_connect_error());
        }
    }

    /**
     * Lấy đối tượng chứa cơ sở dữ liệu đã kết nối
     * @return array
     */
    public function getDatabase()
    {
        return $this->db_array;
    }

    /**
     * Hàm truy vấn dữ liệu thủ công
     * @param mixed $table_name
     * @param array $options
     * @return mysqli_result
     */
    public function select(
        mixed $table,
        array $options = [
            'distinct' => false,
            'column' => [],
            'where' => [],
            'group_by' => [],
            'having' => [],
            'order_by' => [],
            'limit' => []
        ]
    ) {
        $query = "SELECT ";
        $query .= isset($options['distinct']) == false ? "" : "DISTINCT" . " ";
        $query .= !isset($options['column']) ? "*" : implode(", ", $options['column']);
        if (is_string($table)) {
            $query .= " FROM " . $table;
        } elseif (is_array($table)) {
            $query .= " FROM " . implode(", ", $table);
        }

        if (isset($options['where'])) {
            $query .= " WHERE " . implode(" ", $options['where']);
        }

        if (isset($options['group_by'])) {
            $query .= " GROUP BY " . implode(", ", $options['group_by']);
        }

        if (isset($options['having'])) {
            $query .= " HAVING " . implode(" ", $options['having']);
        }

        if (isset($options['order_by'])) {
            $query .= " ORDER BY " . implode(", ", $options['order_by']);
        }

        if (isset($options['limit'])) {
            $query .= " LIMIT " . $options['limit']['offset'] . ", " . $options['limit']['length'];
        }

        // echo $query;

        return mysqli_query($this->db_array, $query);
    }


    /**
     * Chèn dữ liệu
     * @param string $table_name
     * @param array $key
     * @param array $data
     * @return Exception|bool
     */
    public function insert(string $table_name, array $key, array $data)
    {
        $query = "INSERT INTO $table_name (";
        $query .= implode(", ", $key) . ') ';

        $dataConvert = [];
        foreach ($data as $val) {
            $dataConvert[] = '"' . trim($val) . '"';
        }

        $query .= 'VALUES (' . implode(', ', $dataConvert) . ')';


        // echo $query;
        if (mysqli_query($this->db_array, $query)) {
            return true;
        }
        return throw new Exception(mysqli_error($this->db_array));
    }

    /**
     * Cập nhật dữ liệu tới cơ sở dữ liệu
     * @param array $key
     * @param array $data
     * @param string $where
     * 
     * @return Exception|bool
     */

    public function update(string $table_name, array $key, array $data, string $where = "")
    {
        $query = "UPDATE ";
        $query .= $table_name . "  SET ";

        foreach ($key as $key => $val) {
            $query .= $val . "=\"" . $data[$key] . "\"";
        }

        if (isset($where)) {
            $query .= " WHERE " . $where;
        }

        // echo $query;
        if (mysqli_query($this->db_array, $query)) {
            return true;
        }
        return throw new Exception(mysqli_error($this->db_array));
    }

    /**
     * Xóa dữ liệu từ bảng
     * @param string $table_name
     * @param array $where
     * 
     * @return Exception|bool
     */
    public function delete(string $table_name, array $where = [])
    {
        $query = "DELETE FROM ";
        $query .= $table_name;

        if (!empty($where)) {
            $query .= " WHERE " . implode(", ", $where);
        }
        
        if (mysqli_query($this->db_array, $query)) {
            return true;
        }
        return throw new Exception(mysqli_error($this->db_array));
    }

    /**
     * Đóng kết nối với cơ sở dữ liệu
     * @return null
     */
    public function __destruct()
    {
        mysqli_close($this->db_array);
    }
}