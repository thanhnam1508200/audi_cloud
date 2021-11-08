<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</head>

<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Đăng nhập</h1>
            <div class="account-wall">
                <form class="form-signin" action="xlDangNhap.php" method="POST">
                <input type="text" name="uname" class="form-control" placeholder="Email" required autofocus>
                <input type="password" class="form-control" name="psw" placeholder="Password" required>
                <button class="btn btn-lg btn-primary btn-block" type="submit">
                    Đăng nhập</button>
                <label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me">
                    Ghi nhớ tôi!
               </label>
                <a href="#" class="pull-right need-help">Trợ giúp </a><span class="clearfix"></span>
                </form>
            </div>
            <a href="http://localhost:81/guitarshop/code/pages/TaoTaiKhoan/pTaoTaiKhoan.php" class="text-center new-account">Tạo tài khoản </a>
        </div>
    </div>
</div> 