<style>
   
</style>
<?php require_once('inc/header.php') ?>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__close">+</div>
        <ul class="offcanvas__widget">
            <li><span class="icon_search search-switch"></span></li>
            <li><a href="#"><span class="icon_heart_alt"></span>
                <div class="tip">2</div>
            </a></li>
            <li><a href="#"><span class="icon_bag_alt"></span>
                <div class="tip">2</div>
            </a></li>
        </ul>
        <div class="offcanvas__logo">
            <a href="./index.html"><img src="img/logo.png" alt=""></a>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__auth">
            <a href="#">Login</a>
            <a href="#">Register</a>
        </div>
    </div>
    <!-- Offcanvas Menu End -->


        <!-- Categories Section Begin -->
    <section style="margin-top: 100px;" class="categories">
        <div class="container-fluid ">
            <div class="row">
                <div class="col-lg-6 p-0">
                    <div style="background-color:#fbe3d7;" class="categories__item categories__large__item set-bg" data-setbg="uploads/categories/category.jpg">
                    <div class="categories__text">
                        <h1>Treasure products</h1>
                        <p>Upcycled, refurbished, environment friendly, renewed,useful, artistic and valuable items collection which are the result of transformation of "Trash" products.</p>
                        <a href="./?page=products/treasure_products">Shop now</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div  style="background-color: #bde3d8;" class="categories__item set-bg" data-setbg="uploads/categories/category-2.jpg">
                            <div class="categories__text">
                                <h4>Men’s fashion</h4>
                                <p>We have a huge collection of refurbished men's Fashion products.
                                   Old clothes have been given the latest, trendy looks.
                                </p>
                                <a href="./?page=products/treasure_products&cids=14">Shop now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div style="background-color: #d4d4ee;" class="categories__item set-bg" data-setbg="img/categories/category-3.jpg">
                            <div class="categories__text">
                                <h4>Women’s fashion</h4>
                                <p>We have upcycled, trendy and latest collection.
                                   Discover women's Fashion on our site.
                                   
                                </p>
                                <a href="./?page=products/treasure_products&cids=15">Shop now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div style="background-color: #fcdce1;" class="categories__item set-bg" data-setbg="img/categories/category-4.jpg">
                            <div class="categories__text">
                                <h4>Toys</h4>
                                <p>Buy handmade and upcycled toys online <br>at best prices.
                                   We have a variety of toy collections to help you out finding the <br>
                                   best for your child.</p>
                                <a href="./?page=products/treasure_products&cids=17">Shop now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div style="background-color: #cce3f5;" class="categories__item set-bg" data-setbg="img/categories/category-5.jpg">
                            <div class="categories__text">
                                <h4>Home Decor</h4>
                                <p>We have a wide collection of budget <br>friendly home decor items which have <br>
                                been upcycled using various old household waste products.</p>
                                <a href="./?page=products/treasure_products&cids=10">Shop now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Categories Section End -->

<!-- Contact Section Begin -->
    <section id="about" class="contact spad">
        <div class="container">
            <div class="row">
               <div class="col-lg-6 col-md-6">
                    <div class="contact__map">
                        <img src="uploads/about_us.jpg" height="580"  >
                            
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="contact__content">
                        <div class="contact__address">
                            <h5>About Us</h5>
                            <ul>
                                <li>
                                    <p>"Treasuring the Trash"  is an initiative started by us for 
                                        Environment Conservation through waste management by collecting 
                                        and sorting what we receive from people into different categories.</p>
                                </li>
                                <li>
                                    <p>We often observe the things our families and our local community throw 
                                       out in trash like paper, plastic, food, old furniture, magazines, newspapers,
                                       clothes, etc.
                                    </p>
                                </li>
                                <li>
                                    <p>We create artwork or practical items with your recyclable materials.</p>
                                </li>
                                <li>
                                    <p>We use this to build awareness in our community about WASTE MANAGEMENT.
                                    We collect waste products from people and our artists "Upcycle" them for a 
                                    new consumer Product.
                                    </p>
                                </li>
                                <li>
                                    <h6> We get Three-fold benefit from this as</h6>
                                </li>
                            </ul>
                            <li>
                                We divert thousands from waste stream annually.
                            </li>
                            <li>
                                We supply people with inexpensive goods for reuse.
                            </li>
                            <li>
                                We also raise funds to support Environment programs.
                            </li>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</section>
<!-- Contact Section End -->

<section class="bg-light py-5 ">
    <div class="container ">
        <div class="row ">
                <div class="col-lg-12 py-4 text-center">
                    <div class="related__title">
                        <h5>Treasure PRODUCTS</h5>
                    </div>
                </div>
                <?php 
                 $products = $conn->query("SELECT p.*, v.shop_name as vendor, c.name as `category` FROM `product_list` p inner join vendor_list v on p.vendor_id = v.id inner join category_list c on p.category_id = c.id where p.delete_flag = 0 and  p.`shop_type_id` = 6 order by RAND() limit 4");
                 while($row = $products->fetch_assoc()):
                 ?>
                <div class="my-2 col-lg-3 col-md-4 col-sm-6">
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
        <div class="clear-fix mt-4"></div>
        <div class="text-center">
            <a href="./?page=products/treasure_products" class="btn btn-large btn-primary rounded-pill col-lg-3 col-md-5 col-sm-12"> More Products</a>
        </div>
    </div>    
</section>



<section  class="bg-light py-5 ">
    <div class="container ">
        <div class="row ">
                <div class="col-lg-12 py-4 text-center">
                    <div class="related__title">
                        <h5>TRASH PRODUCTS</h5>
                    </div>
                </div>
                <?php 
                 $products = $conn->query("SELECT p.*, v.shop_name as vendor, c.name as `category` FROM `product_list` p inner join vendor_list v on p.vendor_id = v.id inner join category_list c on p.category_id = c.id where p.delete_flag = 0 and  p.`shop_type_id` = 7 order by RAND() limit 4");
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
        <div class="clear-fix mt-4"></div>
        <div class="text-center">
            <a href="./?page=products/trash_products" class="btn btn-large btn-primary rounded-pill col-lg-3 col-md-5 col-sm-12"> More Products</a>
        </div>
        
    </div>
</div>
</section>


<!-- Services Section Begin -->
<section class="services spad bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-car"></i>
                    <h6>Free Shipping</h6>
                    <p>For all oder over $99</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fas fa-money-bill-wave"></i>
                    <h6>Money Back Guarantee</h6>
                    <p>If good have Problems</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-headphones"></i>
                    <h6>Online Support 24/7</h6>
                    <p>Dedicated support</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fas fa-credit-card"></i>
                    <h6>Payment Secure</h6>
                    <p>100% secure payment</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Services Section End -->