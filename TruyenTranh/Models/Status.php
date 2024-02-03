<?php 
namespace TruyenTranh\Models;

use TruyenTranh\Base;

class Status extends Base {

    private $table = 'status_default_list';

    /**
     * Get data from Status Table
     * @param bool $all
     * @return array
     */
    public function getAllStatus() {
        $result_selected = $this->select($this->table, []);
        $results = [];
        foreach($result_selected as $val) {
            $results[] = $val;
        }

        return $results;
    }
}