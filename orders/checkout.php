
<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="./index.html"><i class="fa fa-home"></i> Home</a>
                        <span>Shopping cart</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <form action="" class="checkout__form" id="checkout-form">
                <div class="row">
                    <div class="col-lg-8">
                        <h5>Billing detail</h5>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>First Name <span>*</span></p>
                                    <input type="text" value="<?= $_settings->userdata('firstname') ?>">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>Last Name <span>*</span></p>
                                    <input type="text" value="<?= $_settings->userdata('lastname') ?>">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>Phone <span>*</span></p>
                                    <input type="text" value="<?= $_settings->userdata('contact') ?>">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>Email <span>*</span></p>
                                    <input type="text" value="<?= $_settings->userdata('email') ?>">
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="checkout__form__input">
                                    <p>Town/City <span>*</span></p>
                                    <input type="text" value="<?= $_settings->userdata('city') ?>">
                                </div>
                                <div class="checkout__form__input">
                                    <p>Postcode/Zip <span>*</span></p>
                                    <input type="text" value="<?= $_settings->userdata('zip') ?>">
                                </div>
                                <div class="checkout__form__input">
                                    <p>State <span>*</span></p>
                                    <input type="text" value="<?= $_settings->userdata('state') ?>">
                                </div>
                                <div class="checkout__form__input">
                                    <p>Address <span>*</span></p>
                                    <textarea name="delivery_address" id="delivery_address" rows="4" required><?= $_settings->userdata('address') ?></textarea>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="checkout__form__checkbox">
                                </div>
                                    <div class="checkout__form__checkbox">
                                        <label for="note">
                                            Note about your order, e.g, special noe for delivery
                                            <input type="checkbox" id="note">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                    <div class="checkout__form__input">
                                        <p>Oder notes <span>*</span></p>
                                        <input type="text"
                                        placeholder="Note about your order, e.g, special noe for delivery">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="checkout__order" id="summary">
                                <h5>Your order</h5>
                                
                                <div class="checkout__order__product">
                                    <ul>
                                        <li>
                                            <span class="top__text">Product</span>
                                            <span class="top__text__right">Total</span>
                                        </li>
                                        <?php 
                                       
                                        $gtotal = 0;
                                        $vendors = $conn->query("SELECT * FROM `vendor_list`  where id in (SELECT vendor_id from product_list where id in (SELECT product_id FROM `cart_list` where client_id ='{$_settings->userdata('id')}')) order by `shop_name` asc");
                                        while($vrow=$vendors->fetch_assoc()): 
                                        $vtotal = $conn->query("SELECT sum(c.quantity * p.price) FROM `cart_list` c inner join product_list p on c.product_id = p.id where c.client_id = '{$_settings->userdata('id')}' and p.vendor_id = '{$vrow['id']}'")->fetch_array()[0];   
                                        $vtotal = $vtotal > 0 ? $vtotal : 0;
                                        $gtotal += $vtotal;
                                        ?>
                                        <?php 
                                        $products = $conn->query("SELECT c.*, p.name as `name`, p.price,p.image_path FROM `cart_list` c inner join product_list p on c.product_id = p.id where c.client_id = '{$_settings->userdata('id')}' and p.vendor_id = '{$vrow['id']}' order by p.name asc");
                                        while($prow = $products->fetch_assoc()):
                                        ?>
                                        <div class="item">
                                        <li ><?= $prow['name']?>  <?php endwhile; ?><span><?= format_num($vtotal) ?></span></li>
                                        </div>
                                        <?php endwhile; ?>
                                    </ul>
                                </div>
                                <div class="checkout__order__total">
                                    <ul>
                                        <li>Subtotal <span ><?= format_num($gtotal) ?></span></li>
                                        <li>Total <span id="total"><?= format_num($gtotal) ?></span></li>
                                    </ul>
                                </div>
                                <div class="checkout__order__widget">
                                    <label for="o-acc">
                                        Create an acount?
                                        <input type="checkbox" id="o-acc">
                                        <span class="checkmark"></span>
                                    </label>
                                    <p>Create am acount by entering the information below. If you are a returing customer
                                    login at the top of the page.</p>
                                    <label for="check-payment">
                                        Cheque payment
                                        <input type="checkbox" id="check-payment">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label for="paypal">
                                        PayPal
                                        <input type="checkbox" id="paypal">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                
                                <button  class="site-btn btn">Place oder</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            
        </section>
        <!-- Checkout Section End -->

<script>
    $('#checkout-form').submit(function(e){
        e.preventDefault()
        var _this = $(this)
        if(_this[0].checkValidity() == false){
            _this[0].reportValidity()
            return false;
        }
        if($('#summary .item').length <= 0){
            alert_toast("There is no order listed in the cart yet.",'error')
            return false;
        }
        $('.pop_msg').remove();
        var el = $('<div>')
            el.addClass("alert alert-danger pop_msg")
            el.hide()
        start_loader()
        $.ajax({
            url:_base_url_+'classes/Master.php?f=place_order',
            method:'POST',
            data:_this.serialize(),
            dataType:'json',
            error:err=>{
                console.error(err)
                alert_toast("An error occurred.",'error')
                end_loader()
            },
            success:function(resp){
                if(resp.status == 'success'){
                    location.replace('./?page=orders/my_orders')
                }else if(!!resp.msg){
                    el.text(resp.msg)
                    _this.prepend(el)
                    el.show('slow')
                    $('html,body').scrollTop(0)
                }else{
                    el.text("An error occurred.")
                    _this.prepend(el)
                    el.show('slow')
                    $('html,body').scrollTop(0)
                }
                end_loader()
            }
        })
    })
</script>