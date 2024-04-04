<?php require_once('../config.php') ?>
<!DOCTYPE html>
<html lang="en" class="" style="height: auto;">
 <?php require_once('../inc/header.php') ?>
 <link rel="stylesheet" href="<?php echo base_url ?>dist/css/main.css">
 <link rel="stylesheet" href="<?php echo base_url ?>dist/css/util.css">
 <link rel="stylesheet" type="text/css" href="<?php echo base_url ?>assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<body class="hold-transition">
  <script>
    start_loader()
  </script>
  <style>
      #cimg{
          width:160px;
          height:160px;
          object-fit:scale-down;
          object-position:center center
      }
  </style>
  <script>
  </script>

  
<!-- registration Section Begin -->
<section class="checkout spad">
        <div class="container  checkout__form">
            <form id="vregister-frm" action="" method="post">
                <input type="hidden" name="id">
                <div class="row  ">
                <div class="col-lg-8  col-md-12 col-sm-12 px-4 border py-4 rounded mx-auto">
                        <h5 class="text-center">Create an account</h5>
                            <div class=" col-md-12 text-center">
                            <div class="checkout__form__image">
                                <img src="<?= validate_image('') ?>" alt="Shop Logo" id="cimg" class="border border-gray img-thumbnail">
                                <br>
                                <input type="file" id="logo" name="img"  onchange="displayImg(this,$(this))" accept="image/png, image/jpeg" required>
                            </div>
                            </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>Shop Name <span>*</span></p>
                                    <input type="text"  id="shop_name" autofocus name="shop_name" required>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p> Shop Type <span>*</span></p>
                                    <select  type="text" id="shop_type_id" name="shop_type_id" required>
                                        <option value="" disabled selected></option>
                                            <?php 
                                                $types = $conn->query("SELECT * FROM `shop_type_list` where delete_flag = 0 and `status` = 1 order by `name` asc ");
                                                while($row = $types->fetch_assoc()):
                                            ?>
                                        <option value="<?= $row['id'] ?>"><?= $row['name'] ?></option>
                                        <?php endwhile; ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>Shop Owner Name <span>*</span></p>
                                    <input type="text" id="shop_owner" name="shop_owner" required>
                                </div>
                            </div>  
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>Username <span>*</span></p>
                                    <input type="text" id="username" name="username" required>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>Phone <span>*</span></p>
                                    <input type="text" id="contact" name="contact" required>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>Email <span>*</span></p>
                                    <input type="email" id="email" name="email" required>
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <div class="checkout__form__input">
                                    <p>Password <span>*</span></p>
                                <div class="input-group input-group-sm">
                                    <input type="password" id="password" name="password" class="form-control " required>
                                        <span class="input-group-text ">
                                            <a href="javascript:void(0)" class="text-reset text-decoration-none pass_view"> <i class="fa fa-eye-slash"></i></a>
                                        </span>
                                </div>
                                </div>
                            </div>
                            <div class="form-group col-md-6 mb-5">
                                <div class="checkout__form__input">
                                    <p>Confirm Password <span>*</span></p>
                                <div class="input-group input-group-sm">
                                    <input type="password" id="cpassword" class="form-control " required>
                                        <span class="input-group-text ">
                                            <a href="javascript:void(0)" class="text-reset text-decoration-none pass_view"> <i class="fa fa-eye-slash"></i></a>
                                        </span>
                                </div>
                                </div>
                            </div>
                                <div class="py-3 px-3 col-lg-4 col-md-4 col-sm-4">
                                <div class="checkout__form__input">
                                    <a href="<?= base_url ?>">Back to Site</a>
                                </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 pb-5">
                                <div class="checkout__form__input">
                                    <button type="submit"  class="site-btn btn">Create Account</button>
                                </div>
                                </div>
                                <div  class="py-3 px-3 col-lg-4 col-md-4 col-sm-4 text-right">
                                <div class="checkout__form__input">
                                    <a href="<?= base_url.'vendor/login.php' ?>">Log In to Account</a>
                                </div>
                                </div>
                        </div>
                    </div>
                </form>
            </div>
            
        </section>
<!-- registration Section End -->


<!-- jQuery -->
<script src="<?php echo base_url ?>plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<?php echo base_url ?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<!-- <script src="<?php echo base_url ?>dist/js/adminlte.min.js"></script> -->
<!-- Select2 -->
<script src="<?php echo base_url ?>plugins/select2/js/select2.full.min.js"></script>

<script>
    function displayImg(input,_this) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	$('#cimg').attr('src', e.target.result);
	        }

	        reader.readAsDataURL(input.files[0]);
	    }else{
	        	$('#cimg').attr('src', '<?= validate_image('') ?>');
        }
	}
  $(function(){
    end_loader();
    $('body').height($(window).height())
    $('.select2').select2({
        placeholder:"Please Select Here",
        width:'100%'
    })
    $('.select2-selection').addClass("form-border")
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

    $('#vregister-frm').submit(function(e){
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
                    location.href= './login.php';
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
</body>
</html>