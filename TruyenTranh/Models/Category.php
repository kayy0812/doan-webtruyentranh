<?php 
namespace TruyenTranh\Models;

use TruyenTranh\Base;
use TruyenTranh\Unit;

class Category extends Base {

    /**
     * Get data from Category Table
     * @param bool $all
     * @return array
     */
    public function getAll() {
        $result_selected = $this->select('category_default_list', []);
        $results = [];
        foreach($result_selected as $val) {
            $results[] = $val;
        }

        return $results;
    }

    /**
     * Get data from Category Table
     * @param string $name
     * @return bool
     */
    public function add(string $name) {
        $slug = Unit::createFriendlyText($name);
        $result = $this->insert('category_default_list', ['slug', 'name'], [$slug, $name]);
        return $result;
    }
    
    /**
     * Get data from Category Table
     * @param string $category_id
     * @return bool
     */
    public function remove(string $category_id) {
        $result = $this->delete('category_default_list', ['category_id = ' . $category_id]);
        return $result;
    }
}