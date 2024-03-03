<?php 
namespace TruyenTranh\Models;

use TruyenTranh\Base;

class Author extends Base {

    private $table = 'authors';

    /**
     * Get data from Author Table
     * @param bool $all
     * @return array
     */
    public function getAllAuthors() {
        $result_selected = $this->select($this->table, []);
        $results = [];
        foreach($result_selected as $val) {
            $results[] = $val;
        }

        return $results;
    }
}