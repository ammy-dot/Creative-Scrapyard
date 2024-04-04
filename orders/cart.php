
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

    <!-- Shop Cart Section Begin -->
    <section class="shop-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shop__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php 
                             $gtotal = 0;
                             $vendors = $conn->query("SELECT * FROM `vendor_list` where id in (SELECT vendor_id from product_list where id in (SELECT product_id FROM `cart_list` where client_id ='{$_settings->userdata('id')}')) order by `shop_name` asc");
                             while($vrow=$vendors->fetch_assoc()):                
                             ?>
                                <tr>
                                    <?php 
                                    $vtotal = 0;
                                    $products = $conn->query("SELECT c.*, p.name as `name`, p.price,p.image_path FROM `cart_list` c inner join product_list p on c.product_id = p.id where c.client_id = '{$_settings->userdata('id')}' and p.vendor_id = '{$vrow['id']}' order by p.name asc");
                                    while($prow = $products->fetch_assoc()):
                                    $total = $prow['price'] * $prow['quantity'];
                                    $gtotal += $total;
                                    $vtotal += $total;
                                    ?>
                                    <td class="cart__product__item">
                                    <a href="./?page=products/view_product&id=<?= $prow['product_id'] ?>"><img src="<?= validate_image($prow['image_path']) ?>" alt=""></a>
                                        <div class="cart__product__item__title">
                                            <h6><?= $prow['name'] ?></h6>
                                            <div class="rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="cart__price">&#8377; <?= format_num($prow['price']) ?></td>
                                    <td class="cart__quantity">
                                        <div class="card_quantity" >
                                            <div class="input-group input-group-sm">
                                                <div class="input-group-prepend"><button class="btn  min-qty" data-id="<?= $prow['id'] ?>" type="button"><i class="fa fa-minus"></i></button></div>
                                                <input type="text" value="<?= $prow['quantity'] ?>" class=" text-center" readonly="readonly">
                                                <div class="input-group-append"><button class="btn  plus-qty" data-id="<?= $prow['id'] ?>" type="button"><i class="fa fa-plus"></i></button></div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="cart__total"><?= format_num($total) ?></td>
                                    <td class="cart__close"><button class=" rem_item"  data-id="<?= $prow['id'] ?>"><span class="icon_close"></span></button></td>
                                    
                                   
                                </tr>
                                <?php endwhile; ?>
                            <?php endwhile; ?>    
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-lg-6">
                    
                </div>
                <div class="col-lg-4 offset-lg-2">
                    <div class="cart__total__procced">
                        <h6>Cart total</h6>
                        <ul>
                            <li>Subtotal <span><?= format_num($gtotal) ?></span></li>
                            <li>Grand Total <span><?= format_num($gtotal) ?></span></li>
                        </ul>
                        <a href="./?page=orders/checkout" class="primary-btn">Proceed to checkout</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Cart Section End -->


<script>
    $(function(){
        $('.plus-qty').click(function(){
            var group = $(this).closest('.input-group')
            var qty = parseFloat(group.find('input').val()) + 1;
            group.find('input').val(qty)
            var cart_id = $(this).attr('data-id')
            var el = $('<div>')
            el.addClass('alert alert-danger')
            el.hide()
            start_loader()
            $.ajax({
                url:_base_url_+'classes/Master.php?f=update_cart_qty',
                method:'POST',
                data:{cart_id:cart_id,quantity:qty},
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
            
        })
        $('.min-qty').click(function(){
            var group = $(this).closest('.input-group')
            if(parseFloat(group.find('input').val()) == 1){
                return false;
            }
            var qty = parseFloat(group.find('input').val()) - 1;
            group.find('input').val(qty)
            var cart_id = $(this).attr('data-id')
            var el = $('<div>')
            el.addClass('alert alert-danger')
            el.hide()
            start_loader()
            $.ajax({
                url:_base_url_+'classes/Master.php?f=update_cart_qty',
                method:'POST',
                data:{cart_id:cart_id,quantity:qty},
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
            
        })
        $('.rem_item').click(function(){
        _conf("Are you sure delete this item from cart list?",'delete_cart',[$(this).attr('data-id')])
        })
    })
    function delete_cart($id){
		start_loader();
		$.ajax({
			url:_base_url_+"classes/Master.php?f=delete_cart",
			method:"POST",
			data:{id: $id},
			dataType:"json",
			error:err=>{
				console.log(err)
				alert_toast("An error occured.",'error');
				end_loader();
			},
			success:function(resp){
				if(typeof resp== 'object' && resp.status == 'success'){
					location.reload();
				}else{
					alert_toast("An error occured.",'error');
					end_loader();
				}
			}
		})
	}
</script>