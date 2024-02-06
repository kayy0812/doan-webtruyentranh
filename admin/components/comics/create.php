<div class="row mt-3">
    <div class="col">
        <h2 class="body__wrap-subtitle">Thêm truyện ở bên dưới</h2>
        <form action="" method="post" class="body__wrap-form-add">

            <div class="container-fluid">
                <div class="row">
                    <div class="col">
                        <div class="body__wrap-form-add-group">
                            <label for="comic-name" class="body__wrap-form-add-label">Tên truyện</label>
                            <input type="text" id="comic-name" name="comic_name" class="body__wrap-form-add-input"
                                placeholder="Nhập tên truyện ... " required>
                        </div>
                    </div>

                    <div class="col">
                        <div class="body__wrap-form-add-group">
                            <label for="comic-other-name" class="body__wrap-form-add-label">Tên khác</label>
                            <input type="text" id="comic-other-name" name="comic-other-name"
                                class="body__wrap-form-add-input" placeholder="Tên gọi khác của truyện ... " required>
                        </div>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col">
                        <div class="body__wrap-form-add-group">
                            <label for="comic-desc" class="body__wrap-form-add-label">Mô
                                tả</label>
                            <textarea id="comic-desc" name="comic-desc" class="body__wrap-form-add-textarea" rows="5"
                                placeholder="Mô tả ngắn gọn nội dung truyện ... " required></textarea>
                        </div>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col-6">
                        <div class="body__wrap-form-add-group">
                            <label for="comic-poster-img" class="body__wrap-form-add-label">Poster</label>
                            <input type="text" name="comic-poster-img" id="comic-poster-img" class="body__wrap-form-add-input" placeholder="Đường dẫn hình ảnh ....">
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="body__wrap-form-add-group">
                            <img class="body__wrap-form-add-img-preview" id="poster-img-preview" src="" alt="">
                        </div>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col">
                        <div class="body__wrap-form-add-group">
                            <label for="comic-upload-by" class="body__wrap-form-add-label">Được đăng bởi</label>
                            <input type="text" id="comic-upload-by" name="comic-upload-by"
                                class="body__wrap-form-add-input" placeholder="Người đăng ..." value="3231" readonly>
                        </div>
                    </div>

                    <div class="col">
                        <div class="body__wrap-form-add-group">
                            <label for="comic-author" class="body__wrap-form-add-label">Tác giả / Nhà Sản
                                Xuất</label>
                            <input type="text" id="comic-author" name="comic-author" class="body__wrap-form-add-input"
                                placeholder="Tác giả / Nhà sản xuất" value="1" readonly>
                        </div>
                    </div>

                    <div class="col">
                        <div class="body__wrap-form-add-group">
                            <label for="comic-status" class="body__wrap-form-add-label">Trạng thái
                                truyện</label>
                            <select class="form-select body__wrap-form-select" name="comic-status" id="comic-status">
                                <!-- <option selected>- Chọn trạng thái truyện -</option> -->
                                <?php foreach ($status->getAllStatus() as $i => $val) { ?>
                                    <option value="<?= $val['status_id'] ?>">
                                        <?= $val['name'] ?>
                                    </option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col">
                        <div class="body__wrap-form-add-group">
                            <label class="body__wrap-form-add-label">Chọn thể
                                loại</label>

                            <div class="body__wrap-form-add-checkbox-wrap">
                                <?php foreach ($category->getAllCategory() as $i => $val) { ?>
                                    <div class="body__wrap-form-add-checkbox">
                                        <input class="body__wrap-form-add-checkbox-input" type="checkbox"
                                            name="comic-cats[]" id="comic-cats-<?= $i ?>"
                                            value="<?= $val['category_id'] ?>">
                                        <label class="body__wrap-form-add-checkbox-label" for="comic-cats-<?= $i ?>">
                                            <?= $val['name'] ?>
                                        </label>
                                    </div>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col-2 offset-5">
                        <div class="body__wrap-form-add-group">
                            <input type="submit" id="cat-submit" name="cat_submit-add"
                                class="btn body__wrap-form-add-submit btn-dark" value="Thêm">
                        </div>
                    </div>
                </div>

                <!-- Notify -->
                <div class="row">
                    <div class="col">
                        <div id="notify"></div>
                    </div>
                </div>
            </div>

        </form>
    </div>
</div>