<div class="row mt-3">
    <div class="col">
        <div class="body__wrap-category">
            <div class="body__wrap-category-wrap">
                <div class="row">
                    <div class="col-1">
                        STT
                    </div>
                    <div class="col-2">
                        Tên thể loại
                    </div>
                    <div class="col-2">
                        Tên đường dẫn
                    </div>
                    <div class="col-5">
                        Mô tả thể loại
                    </div>
                    <div class="col-2">
                        Hành Động
                    </div>
                </div>

                <?php
                foreach ($category->getAllCategory() as $i => $val) {
                    ?>
                    <div class="row mt-2">
                        <div class="col-1">
                            <?= $i + 1 ?>
                        </div>
                        <div class="col-2">
                            <?= $val['name'] ?>
                        </div>
                        <div class="col-2">
                            <?= $val['slug'] ?>
                        </div>
                        <div class="col-5">
                            <?= strlen($val['description']) > 40 ? substr($val['description'], 0, 40) . '...' : $val['description']; ?>
                        </div>
                        <div class="col-2">
                            <form action="" method="post" class="body__wrap-category-action-form">
                                <input type="text" name="category_id" value="<?= $val['category_id'] ?>" hidden>
                                <input class="btn btn-danger body__wrap-category-action-form-btn" type="submit"
                                    name="cat_submit-delete" value="Xóa">
                            </form>
                        </div>
                    </div>

                <?php } ?>
            </div>
        </div>
    </div>
</div>