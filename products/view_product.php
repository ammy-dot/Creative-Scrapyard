<?php
if(isset($_GET['id']) && $_GET['id'] > 0){
    $qry = $conn->query("SELECT  p.*, v.shop_name as vendor, c.name as `category` FROM `product_list` p inner join vendor_list v on p.vendor_id = v.id inner join category_list c on p.category_id = c.id where p.delete_flag = 0 and p.id = '{$_GET['id']}'");
    if($qry->num_rows > 0){
        foreach($qry->fetch_assoc() as $k => $v){
            $$k=$v;
        }
    }else{
        echo "<script> alert('Unkown Product ID.'); location.replace('./?page=products') </script>";
        exit;
    }
}else{
    echo "<script> alert('Product ID is required.'); location.replace('./?page=products') </script>";
    exit;
}
?>


<!-- Product Details Section Begin -->
<section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="product__details__pic">
                        <div class="product__details__slider__content">
                            <div class="product__details__pic__slider owl-carousel">
                                <img data-hash="product-1" class="product__big__img" src="<?= validate_image(isset($image_path) ? $image_path : "") ?>" alt="<?= $row['name'] ?>">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="product__details__text">
                        <h3><?= $name ?></h3>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <span></span>
                        </div>
                        <div class="product__details__price">&#8377; <?= format_num($price) ?> <span>$ 83.0</span></div>
                        <p class="card-text truncate-1 w-100"><?= strip_tags(html_entity_decode($description)) ?></p>
                        <div class="product__details__button">
                            <div class="quantity">
                                <span>Quantity:</span>
                                <!-- skin 2 -->
                                <div class="num-block skin-2">
                                    <div class="num-in">
                                    <span class="minus dis"></span>
                                    <input type="number" class="in-num" id= 'qty' value="1" readonly="">
                                    <span class="plus"></span>
                                    </div>
                                </div>
                                <!-- / skin 2 -->
                            </div>

                            <button class="btn cart-btn" type="button" id="add_to_cart"><i class="fa-light fa-cart-shopping"></i> Add to Cart</button>
                        
                        </div>
                        <div class="product__details__widget">
                            <ul>
                                <li>
                                    <span> Vendor:</span> <p><?= $vendor ?></p>
                                    
                                </li>
                                <li>
                                    <span>Category:</span>
                                    <p><?= $category ?></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">Specifications </a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <h6>Description</h6>
                                <p><?= html_entity_decode($description) ?></p>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="related__title">
                        <h5>RELATED PRODUCTS</h5>
                    </div>
                </div>
                <?php 
                 $products = $conn->query("SELECT p.*, v.shop_name as vendor, c.name as `category` FROM `product_list` p inner join vendor_list v on p.vendor_id = v.id inner join category_list c on p.category_id = c.id where p.delete_flag = 0 and p.`status` =1 order by RAND() limit 4");
                 while($row = $products->fetch_assoc()):
                 ?>
                <div class="col-lg-3 col-md-4 col-sm-6">
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
                                    <div class="product__price "> &#8377; <?= format_num($row['price']) ?></div>
                                </div>
                            </div>
                        </a>
                </div>
                <?php endwhile; ?>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->


<script>
    function add_to_cart(){
        var pid = '<?= isset($id) ? $id : '' ?>';
        var qty = $('#qty').val();
        var el = $('<div>')
        el.addClass('alert alert-danger')
        el.hide()
        $('#msg').html('')
        start_loader()
        $.ajax({
            url:_base_url_+'classes/Master.php?f=add_to_cart',
            method:'POST',
            data:{product_id:pid,quantity:qty},
            dataType:'json',
            error:err=>{
                console.error(err)
                alert_toast('An error occurred.','error')
                end_loader()
            },
            success:function(resp){
                if(resp.status =='success'){
                    location.reload()
                }else if(!!resp.msg){
                    el.text(resp.msg)
                    $('#msg').append(el)
                    el.show('slow')
                    $('html, body').scrollTop(0)
                }else{
                    el.text("An error occurred. Please try to refresh this page.")
                    $('#msg').append(el)
                    el.show('slow')
                    $('html, body').scrollTop(0)
                }
                end_loader()
            }
        })
    }
    $(function(){
        $('#add_to_cart').click(function(){
            if('<?= $_settings->userdata('id') > 0 && $_settings->userdata('login_type') == 3 ?>'){
                add_to_cart();
            }else{
                location.href = "./login.php"
            }
        })
    })
</script>