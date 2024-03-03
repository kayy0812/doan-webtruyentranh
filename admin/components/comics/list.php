<div class="row mt-3">
    <div class="col">
        <div class="body__wrap-comic">
            <div class="body__wrap-comic-list">
                <div class="row">
                    <?php foreach ($comic->getAllComics() as $i => $val) { ?>
                        <div class="col-6">
                            <div class="body__wrap-comic-item">
                                <img src="<?=$val['poster']?>" alt="" class="body__wrap-comic-img">
                                <div class="body__wrap-comic-with-name">
                                    <h3 class="body__wrap-comic-name">
                                        <?=$val['name']?>
                                    </h3>
                                    <div class="body__wrap-comic-chapter-count">Tổng số chương: <?=$comic->getChapterCount($val['comic_id'])?></div>
                                    <div class="body__wrap-comic-id">ID: <strong><?=$val['comic_id']?></strong></div>
                                </div>
                                <div class="body__wrap-comic-with-button">
                                    <a href="./" class="btn btn-primary ">Chương</a>
                                    <a href="./" class="btn btn-warning">Chi tiết</a>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</div>