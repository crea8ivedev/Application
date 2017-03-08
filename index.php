<?php
require_once 'fbConfig.php';
require_once 'User.php';

?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <script src=“https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js”></script>
    <script type=“text/javascript” src=“js/script.js”></script> 
    <script src=“https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js” crossorigin=“anonymous”></script>
    <link  href=“https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css” rel=“stylesheet” >
    <link href=“fullcalender/fullcalendar.css” rel=“stylesheet” />
	<link href=“fullcalender/fullcalendar.print.css” rel=“stylesheet” media=“print” />
	<script src=“js/moment.min.js”></script>
	<script src=“fullcalender/fullcalendar.js”></script>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
			<div class="col-lg-2"> </div>
			<div class="col-lg-8" style="float: right;">
			<form class="form-signin mg-btm">
	    	<h3 class="heading-desc" style="text-align: center;">Login Into Your Account</h3>
			<div class="main">	
	        
			<input type="text" class="form-control" placeholder="Email" autofocus>
	        <input type="password" class="form-control" placeholder="Password">
			 
	      	<div class="col-xs-6 col-md-6 pull-right">
	                            <button type="submit" class="btn btn-large btn-success pull-right">Login</button>
	                        </div>
			<span class="clearfix"></span>	
	        </div>
			<div class="login-footer">
			<div class="row">
	                    
	               <h4 class="" style="text-align: center;">OR</h4>         
	        </div>
			
			</div>
			<?php
			$fbUser = NULL;
			$loginURL = $facebook->getLoginUrl(array('redirect_uri'=>$redirectURL,'scope'=>$fbPermissions));
			?>
			<div class="social-box">
				<div class="row mg-btm">
	             <div class="col-md-12">
	                <a href="<?php echo $loginURL; ?>" class="btn btn-primary btn-block">
	                  <i class="fa fa-facebook"></i>Login with Facebook
	                </a>
				</div>
				</div>
			</div>
		
	      </form>
		</div>
		<div class="col-lg-2"> </div>
		</div>
	</div>
</body>
</html>