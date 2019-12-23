
<?php 
		
		session_start();
		require_once __DIR__.'/../../../dll/Database.php';
		require_once __DIR__.'/../../../dll/Function.php';
	    $db=new Database;
		$data=[
				'email'=>postInput("email"),
				'password'=>postInput("password")
		];
		$error=[];
		if ($_SERVER['REQUEST_METHOD']=="POST") {
			if ($data['email']=='') {
				$error['email']="Mời nhập Email";
			}

			if ($data['password']=='') {
				$error['password']="Mời nhập password";
			}
		}
		if (empty($error)) {
			$is_check=$db->fetchOne("admin","mail ='".$data['email']."'AND password=	'".md5($data['password'])."'");
			if ($is_check!=NULL) {
			$_SESSION['admin_name']=$is_check['firstname'];
			$_SESSION['admin_id']=$is_check['Adminid'];
			echo "<script>alert('Đăng nhập thành công ');location.href='/web_files/official_web/admin/'</script>";
			}
		}
		else 
		{
			
		}

		
		
 ?>


<style type="text/css">
..title{
    color:#007bff;
}

.mgTp{
    margin-top:10%;
}

.topBtn{
    margin-top:15px;
}

::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
    color: #007bff !important;
    opacity: 1; /* Firefox */
}

:-ms-input-placeholder { /* Internet Explorer 10-11 */
    color: #007bff !important;
}

::-ms-input-placeholder { /* Microsoft Edge */
    color: #007bff !important;
}

</style>


<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
    <div class="row mgTp">
        <form class="col-md-6 offset-md-3" action="" method="POST">
            <h3 class="title">Admin login</h3>
            <hr class="divisor">
            <div class="form-group">
                <label for="exampleInputEmail1">Username</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nhập username" name="email">
                <?php if (isset($error["email"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["email"] ?>
                        
                    </p>
                  <?php endif ?>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Nhập password" name="password">
                <?php if (isset($error["password"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["password"] ?>
                        
                    </p>
                  <?php endif ?>
            </div>
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Remember me</label>
            </div>
            <button type="submit" class="btn btn-primary topBtn"><i class="fa fa-sign-in"></i> Sign in</button>
        </form>
    </div>
</div>