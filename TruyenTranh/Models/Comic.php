<?php 
namespace TruyenTranh\Models;

use TruyenTranh\Base;
use TruyenTranh\Unit;

class Comic extends Base {

    private $table = 'comics';
    private $table_category = 'comic_category';

    /**
     * Get data from Comic Table
     * @param bool $all
     * @return array
     */
    public function getAllComics() {
        $result_selected = $this->select($this->table, []);
        $results = [];
        foreach($result_selected as $val) {
            $results[] = $val;
        }

        return $results;
    }

    /**
     * Get data from Comics Table
     * @param string $name
     * @param string $other_name
     * @param string $upload_by
     * @param string $status
     * @param string $description
     * @param string $author
     * @return bool
     */
    public function addComic(string $name, string $other_name, int $upload_by, int $status, string $description, int $author, array $cats = []) {

        if(!$name) throw new \Exception('Thiếu tên truyện');
        if(!$other_name) throw new \Exception('Thiếu tên truyện khác');
        if(!$status) throw new \Exception('Thiếu trạng thái truyện');
        if(!$description) throw new \Exception('Thiếu mô tả');
        $slug = Unit::createFriendlyText($name);
        $result = $this->insert($this->table, 
            ['name', 'other_name', 'description', 'slug', 'upload_by', 'status_id', 'author_id'], 
            [$name, $other_name, $description, $slug, $upload_by, $status, $author]);

        foreach ($cats as $cat) {
            $this->addCategoryToComic($this->getComicIdBySlug($slug), $cat);
        }
        return $result;
    }
        
    /**
     * Add caetgory to Comic
     * @param string $comic_id
     * @param string $category_id
     * @return bool
     */

    public function addCategoryToComic(int $comic_id, int $category_id) {
        $result = $this->insert($this->table_category, 
            ['comic_id', 'category_id'],
            [$comic_id, $category_id]);
        return $result;
    }

    /**
     * Get comic id by slug
     * @param string $comic_id
     * @return bool
     */

     public function getComicIdBySlug(string $slug) {
        $result = $this->select($this->table, ['where' => ['slug = "' . $slug .'"']]);
        return $result->fetch_assoc()['comic_id'];
    }
    
    /**
     * Get data from Comics Table
     * @param string $comic_id
     * @return bool
     */
    public function removeComic(string $comic_id) {
        $result = $this->delete($this->table, ['comic_id = ' . $comic_id]);
        return $result;
    }
}