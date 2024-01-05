<?php 
namespace TruyenTranh\Models;

use TruyenTranh\Base;

class Category extends Base {

    /**
     * Get data from Category Table
     * @param bool $all
     * @return array
     */
    public function get(bool $all = false) {
        $result_selected = $this->select('categories', []);
        $results = [];
        foreach($result_selected as $val) {
            $results[] = $val;
        }

        return $results;
    }

    /**
     * Get data from Category Table
     * @param string $name
     * @return array
     */
    public function create(string $name) {
        return $this->query("INSERT INTO category_default_list VALUES ($name)");
    }
    
    public function delete(string $name) {
    }
}