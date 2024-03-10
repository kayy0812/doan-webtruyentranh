<?php 
namespace TruyenTranh\Models;

use TruyenTranh\Base;
use TruyenTranh\Unit;

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

    /**
     * Get data from Author Table
     * @param string $name
     * @param string $description
     * @param int $yob
     * @return bool
     */
    public function add(string $name, string $description, int $yob) {
        $slug = Unit::createFriendlyText($name);
        $result = $this->insert($this->table, ['slug', 'name', 'description', 'year_of_birth'], [$slug, $name, $description, $yob]);
        return $result;
    }
    
    /**
     * Get data from Author Table
     * @param int $author_id
     * @return bool
     */
    public function remove(int $author_id) {
        $result = $this->delete($this->table, ['author_id = ' . $author_id]);
        return $result;
    }
}