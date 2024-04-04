<?php 
$user = $conn->query("SELECT * FROM vendor_list where id ='".$_settings->userdata('id')."'");
foreach($user->fetch_array() as $k =>$v){
	$$k = $v;
}
?>
<?php if($_settings->chk_flashdata('success')): ?>
<script>
	alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;?>

<style>
	#cimg{
          width:200px;
          height:200px;
          object-fit:scale-down;
          object-position:center center
      }
</style>

<!-- registration Section Begin -->
<section class="checkout spad">
        <div class="container checkout__form">
		    <div id="msg"></div>
				<form action="" id="manage-user">	
				<input type="hidden" name="id" value="<?php echo $_settings->userdata('id') ?>">
                <div class="row">
                    <div class="col-lg-8 bg-white col-md-12 col-sm-12 px-4 border py-4 rounded mx-auto">
                        <h5 class="text-center">Update Account</h5>
                            <div class=" col-md-12 text-center">
                            <div class="checkout__form__image">
                                <img src="<?= validate_image(isset($avatar) ? $avatar : "") ?>" alt="Shop Logo" id="cimg" class="border border-gray img-thumbnail">
                                <br>
                                <input type="file" id="logo" name="img"  onchange="displayImg(this,$(this))" accept="image/png, image/jpeg" required>
                            </div>
                            </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>Shop Name <span>*</span></p>
                                    <input type="text"  id="shop_name" autofocus name="shop_name" value="<?= isset($shop_name) ? $shop_name : "" ?>" required>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p> Shop Type <span>*</span></p>
                                    <select  type="text" id="shop_type_id" name="shop_type_id" required>
									    <option value="" disabled selected></option>
								            <?php 
								                $types = $conn->query("SELECT * FROM `shop_type_list` where delete_flag = 0 and `status` = 1 ".(isset($shop_type_id) ? " or id = '{$shop_type_id}' " : "")." order by `name` asc ");
								                while($row = $types->fetch_assoc()):
								            ?>
								        <option value="<?= $row['id'] ?>" <?= isset($shop_type_id) && $shop_type_id == $row['id'] ? 'selected' : '' ?>><?= $row['name'] ?></option>
								                <?php endwhile; ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>Shop Owner Name <span>*</span></p>
                                    <input type="text" id="shop_owner" name="shop_owner" value="<?= isset($shop_owner) ? $shop_owner : "" ?>" required>
                                </div>
                            </div>  
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>Username <span>*</span></p>
                                    <input type="text" id="username" name="username" value="<?= isset($username) ? $username : "" ?>" required>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>Phone <span>*</span></p>
                                    <input type="text" id="contact" name="contact" value="<?= isset($contact) ? $contact : "" ?>" required>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>Email <span>*</span></p>
                                    <input type="email" id="email" name="email" value="<?= isset($email) ? $email : "" ?>" required>
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <div class="checkout__form__input">
                                    <p>New Password <span></span></p>
                                <div class="input-group input-group-sm">
                                    <input type="password" id="password" name="password" class="form-control " >
                                        <span class="input-group-text ">
                                            <a href="javascript:void(0)" class="text-reset text-decoration-none pass_view"> <i class="fa fa-eye-slash"></i></a>
                                        </span>
                                </div>
                                </div>
                            </div>
                            <div class="form-group col-md-6 ">
                                <div class="checkout__form__input">
                                    <p>Confirm New Password <span></span></p>
                                <div class="input-group input-group-sm">
                                    <input type="password" id="cpassword" class="form-control " >
                                        <span class="input-group-text ">
                                            <a href="javascript:void(0)" class="text-reset text-decoration-none pass_view"> <i class="fa fa-eye-slash"></i></a>
                                        </span>
                                </div>
								</div>
                            </div>
							<div style="margin-top: -35px;" class="form-group col-md-12 ">
                                <div class="checkout__form__input">
                                <span>*</span><small class="text-muted"><i>Leave the New Password Fileds blank if you don't want to update it.</i></small> 
								</div>
							</div>
							<div class="form-group col-md-12 mb-5">
                                <div class="checkout__form__input">
                                    <p>Enter Current Password<span>*</span></p>
                                <div class="input-group input-group-sm">
                                    <input type="password" id="oldpassword" name="oldpassword" class="form-control " required>
                                        <span class="input-group-text ">
                                            <a href="javascript:void(0)" class="text-reset text-decoration-none pass_view"> <i class="fa fa-eye-slash"></i></a>
                                        </span>
                                </div>
								</div>
                            </div>
                        </div>
						</form>
						<div class="col-lg-12 col-md-12 col-sm-12 pb-5 text-center">
                            <div class="checkout__form__input">
                                <button class="site-btn btn"  form="manage-user">Update</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<!-- registration Section End -->



<script>
	function displayImg(input,_this) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	$('#cimg').attr('src', e.target.result);
	        }

	        reader.readAsDataURL(input.files[0]);
	    }else{
			$('#cimg').attr('src', "<?= validate_image(isset($avatar) ? $avatar : "") ?>");
		}
	}
	
	$(function(){
		$('.pass_view').click(function(){
			var _el = $(this).closest('.input-group')
			var type = _el.find('input').attr('type')
			if(type == 'password'){
				_el.find('input').attr('type','text').focus()
				$(this).find('i.fa').removeClass('fa-eye-slash').addClass('fa-eye')
			}else{
				_el.find('input').attr('type','password').focus()
				$(this).find('i.fa').addClass('fa-eye-slash').removeClass('fa-eye')

			}
		})
		$('#manage-user').submit(function(e){
			e.preventDefault();
			var _this = $(this)
				$('.err-msg').remove();
			var el = $('<div>')
				el.addClass("alert err-msg")
				el.hide()
			if(_this[0].checkValidity() == false){
				_this[0].reportValidity();
				return false;
				}
			if($('#password').val() != $('#cpassword').val()){
				el.addClass('alert-danger').text('Password does not match.')
				_this.append(el)
				el.show('slow')
				$('html,body').scrollTop(0)
				return false;
			}
			start_loader();
			$.ajax({
				url:_base_url_+"classes/Users.php?f=save_vendor",
				data: new FormData($(this)[0]),
				cache: false,
				contentType: false,
				processData: false,
				method: 'POST',
				type: 'POST',
				dataType: 'json',
				error:err=>{
					console.error(err)
					el.addClass('alert-danger').text("An error occured");
					_this.prepend(el)
					el.show('.modal')
					end_loader();
				},
				success:function(resp){
					if(typeof resp =='object' && resp.status == 'success'){
						location.reload();
					}else if(resp.status == 'failed' && !!resp.msg){
						el.addClass('alert-danger').text(resp.msg);
						_this.prepend(el)
						el.show('.modal')
					}else{
						el.text("An error occured");
						console.error(resp)
					}
					$("html, body").scrollTop(0);
					end_loader()

				}
			})
		})
	})

</script>