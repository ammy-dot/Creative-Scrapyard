<?php 
$category_ids = isset($_GET['cids']) ? $_GET['cids'] : 'all';
?>
<section class="hide" id="hide">
                    <div class="list-group hide">
                        <div class="list-group-item list-group-item-action">
                            <div class="custom-control custom-checkbox">
                                <input class="custom-control-input hide custom-control-input-primary custom-control-input-outline cat_all" type="checkbox" id="cat_all" <?= !is_array($category_ids) && $category_ids =='all' ? "checked" : "" ?>>
                                <label for="cat_all" class=" hide custom-control-label"> All</label>
                            </div>
                        </div>
                        <?php 
                        $categories = $conn->query("SELECT * FROM `category_list` where delete_flag = 0 and status = 1 order by `name` asc ");
                        while($row = $categories->fetch_assoc()):
                        ?>
                        <div class="list-group-item list-group-item-action">
                            <div class="custom-control custom-checkbox">
                                <input class="custom-control-input custom-control-input-primary custom-control-input-outline cat_item" type="checkbox" id="cat_item<?= $row['id'] ?>" <?= in_array($row['id'],explode(',',$category_ids)) ? "checked" : '' ?> value="<?= $row['id'] ?>">
                                <label for="cat_item<?= $row['id'] ?>" class="custom-control-label"> <?= $row['name'] ?></label>
                            </div>
                        </div>
                        <?php endwhile; ?>
                    </div>
                
</section>
           <!-- Shop Section Begin -->
    <section class="shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="shop__sidebar">         
                        <div class="sidebar__color">
                        <div class="section-title">
                                <h4>Search</h4>
                            </div>
                        <div class="row justify-content-left  mb-3">
                            <div class="col-lg-8 col-md-10 col-sm-12">
                                <form action="" id="search-frm">
                                    <div class="input-group">
                                        <input type="search" placeholder="Search...." id="search" class="form-control" value="<?= isset($_GET['search']) ? $_GET['search'] : '' ?>">
                                        <div  class="input-group-append">
                                        <button type="submit"  class="search_btn "><i  class="fa fa-search"></i></button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div  style="margin-bottom:  100px;"></div>
                        </div>
                            <div class="section-title">
                                <h4>Categories</h4>
                            </div>
                            
                            <?php 
                                $categories = $conn->query("SELECT * FROM `category_list` where delete_flag = 0 and shop_type_id=6 order by `name` asc ");
                                while($row = $categories->fetch_assoc()):
                                ?>
                            <div class="size__list color__list">
                                <label for="cat_item<?= $row['id'] ?>">
                                    <input type="checkbox" id="cat_item<?= $row['id'] ?>" <?= in_array($row['id'],explode(',',$category_ids)) ? "checked" : '' ?> value="<?= $row['id'] ?>">
                                    <span class="checkmark"></span>
                                <?= $row['name'] ?>
                                </label>
                            </div>
                        <?php endwhile; ?>    
                        </div>
                    </div>
                </div>
                <!-- Product section -->
                <div class="col-lg-9 col-md-9">
                <div class="container-fluid">
                        
                    <div class="row" id="product_list">
                    <?php 
                            $swhere = "";
                            if(!empty($category_ids)):
                            if($category_ids !='all'){
                                $swhere = " and p.category_id in ({$category_ids}) ";
                            }
                            if(isset($_GET['search']) && !empty($_GET['search'])){
                                $swhere .= " and (p.name LIKE '%{$_GET['search']}%' or p.description LIKE '%{$_GET['search']}%' or c.name LIKE '%{$_GET['search']}%' or v.shop_name LIKE '%{$_GET['search']}%') ";
                            }

                            $products = $conn->query("SELECT p.*, v.shop_name as vendor, c.name as `category` FROM `product_list` p inner join vendor_list v on p.vendor_id = v.id inner join category_list c on p.category_id = c.id where p.delete_flag = 0 and p.`shop_type_id` = 6 {$swhere} order by RAND()");
                            while($row = $products->fetch_assoc()):
                            ?>
                        <div class="col-lg-4 col-md-6">
                        <a href="./?page=products/view_product&id=<?= $row['id'] ?>" class="card  rounded-0 text-reset text-decoration-none">
                            <div class="product__item">
                                <div class="product__item__pic set-bg">
                                    <div class="label new">New</div>
                                    <img src="<?= validate_image($row['image_path']) ?>" alt="Product-image" class="img-top product-img bg-gradient-gray">
                                </div>
                                <div class="product__item__text">
                                    <h6><?= $row['name'] ?></h6>
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="product__price"> &#8377; <?= format_num($row['price']) ?></div>
                                </div>
                            </div>
                            </a>
                        </div>
                        <?php endwhile; ?>
                            <?php else: ?>
                                <?php
                                $products = $conn->query("SELECT p.*, v.shop_name as vendor, c.name as `category` FROM `product_list` p inner join vendor_list v on p.vendor_id = v.id inner join category_list c on p.category_id = c.id where p.delete_flag = 0 and p.`shop_type_id` = 6 {$swhere} order by RAND()");
                                while($row = $products->fetch_assoc()):
                                ?>
                                <div class="col-lg-4 col-md-6">
                        <a href="./?page=products/view_product&id=<?= $row['id'] ?>" class="card  rounded-0 text-reset text-decoration-none">
                            <div class="product__item">
                                <div class="product__item__pic set-bg">
                                    <div class="label new">New</div>
                                    <img src="<?= validate_image($row['image_path']) ?>" alt="Product-image" class="img-top product-img bg-gradient-gray">
                                </div>
                                <div class="product__item__text">
                                    <h6><?= $row['name'] ?></h6>
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="product__price"> &#8377; <?= format_num($row['price']) ?></div>
                                </div>
                            </div>
                            </a>
                        </div>
                        <?php endwhile; ?>
                            <?php endif; ?>
                    </div>
                </div>
    </section>
    <!-- Shop Section End -->

<script>
    $(function(){
        
        if($('.cat_item:checked').length == $('.cat_item').length){
            $('#cat_all').prop('checked',true)
        }
        $('.cat_item').change(function(){
            var ids = [];
            $('.cat_item:checked').each(function(){
                ids.push($(this).val())
            })
            location.href="./?page=products/treasure_products&cids="+(ids.join(","))
        })
        $('#cat_all').change(function(){
            if($(this).is(':checked') == true){
                $('.cat_item').prop('checked',true)
            }else{
                $('.cat_item').prop('checked',false)
            }
            $('.cat_item').trigger('change')
        })
        $('#search-frm').submit(function(e){
            e.preventDefault()
            var q = "search="+$('#search').val()
            if('<?= !empty($category_ids) && $category_ids !='all' ?>' == 1){
                q += "&cids=<?= $category_ids ?>"
            }
            location.href="./?page=products/treasure_products&"+q;

        })
    })
</script>