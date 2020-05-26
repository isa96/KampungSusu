<!------ css load  ---------->
<link href="<?php echo base_url('assets/css/bootstrap.min.css'); ?>" rel="stylesheet" id="bootstrap-css">
<link href="<?php echo base_url('assets/css/login.css'); ?>" rel="stylesheet">

<!------ js load ---------->
<script src="<?php echo base_url('assets/js/bootstrap.min.js'); ?>"></script>
<script src="<?php echo base_url('assets/js/jquery.min.js'); ?>"></script>
<!------ Include the above in your HEAD tag ---------->

<body>
    <div id="login">
        <h3 class="text-center text-white pt-5"></h3>

        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <?php if(isset($error)) { echo $error; }; ?>
                    <?php echo form_error('username'); ?>
                    <?php echo form_error('password'); ?>
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="<?php echo base_url() ?>index.php/login" method="post">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                
                                <label for="username" class="text-info">Username </label><br>
                                <input type="text" name="username" id="username" class="form-control">
                                
                            </div>
                            <div class="form-group">
                               
                                <label for="password" class="text-info">Password </label><br>
                                <input type="password" name="password" id="password" class="form-control">

                            </div>
                            <div class="form-group">
                                <label for="remember-me" class="text-info"><span>Remember me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                            </div>
                            <div id="register-link" class="text-right">
                                <a href="#" class="text-info">Register here</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>