<?php 
namespace TruyenTranh\Models;

use TruyenTranh\Base;
use TruyenTranh\Unit;

class Category extends Base {

    private $table = 'category_default_list';

    /**
     * Get data from Category Table
     * @param bool $all
     * @return array
     */
    public function getAll() {
        $result_selected = $this->select($this->table, []);
        $results = [];
        foreach($result_selected as $val) {
            $results[] = $val;
        }

        return $results;
    }

    /**
     * Get data from Category Table
     * @param string $name
     * @param string $description
     * @return bool
     */
    public function add(string $name, string $description) {
        $slug = Unit::createFriendlyText($name);
        $result = $this->insert($this->table, ['slug', 'name', 'description'], [$slug, $name, $description]);
        return $result;
    }
    
    /**
     * Get data from Category Table
     * @param string $category_id
     * @return bool
     */
    public function remove(string $category_id) {
        $result = $this->delete($this->table, ['category_id = ' . $category_id]);
        return $result;
    }
}