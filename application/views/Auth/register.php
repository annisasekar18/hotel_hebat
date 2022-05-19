*<!doctype html>
<html lang="en">
  <head>
  	<title>Registrasi</title>
  	<script src="https://unpkg.com/feather-icons"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href=" <?= base_url('assets/login-form-18/css/bootsrap/bootstrap.min.css');?>">
	<link rel="stylesheet" href=" <?= base_url('assets/login-form-18/css/style.css');?>">
	<!--  -->
	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section"></h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-5 col-lg-6">
					<div class="login-wrap py-5">
		      	<div class="img d-flex align-items-center justify-content-center" style="background-image: url(<?= base_url('assets/login-form-18/');?>images/hotel1.jpg);"></div>
		      	<h3 class="text-center mb-0">Register</h3>
			<form action="<?= base_url('Auth/addusers');?>" method="POST" class="login-form">
		      	<div class="form-group">
		      		<div class="icon d-flex align-items-center justify-content-center"> <i data-feather="users"></i></div>
		      		<input type="text" class="form-control" name="username" placeholder="Username" required>
		      		</div>
	            <div class="form-group">
	            	<div class="icon d-flex align-items-center justify-content-center"> <i data-feather="lock"></i></div>
	                <input type="password" class="form-control"  name="password" placeholder="Password" required>
	            </div>
	             <div class="form-group">
	            	<div class="icon d-flex align-items-center justify-content-center"> <i data-feather="user-check"></i></div>
	                <input type="text" class="form-control"  name="Nama" placeholder="Nama Lengkap" required>
	            </div>
	             <div class="form-group">
	            	<div class="icon d-flex align-items-center justify-content-center"> <i data-feather="users"></i></div>
	                <select class="form-control" aria-label="Default select example" name="Jenis_Kelamin">
					 <option class=" text-dark" selected>Pilih Jenis Kelamin</option>
					 <option class=" text-dark" value="Laki-Laki">Laki-Laki</option>
					 <option class=" text-dark" value="Perempuan">Perempuan</option>
					</select>
	            </div>
	             <div class="form-group">
	            	<div class="icon d-flex align-items-center justify-content-center"> <i data-feather="calendar"></i></div>
	                <input type="date" class="form-control"  name="tgllahir" placeholder="Tanggal Lahir" required>
	            </div>
	             <div class="form-group">
	            	<div class="icon d-flex align-items-center justify-content-center"> <i data-feather="phone"></i></div>
	                <input type="number" class="form-control"  name="no_telp" placeholder="No Telepon" required>
	            </div>
	            <div class="form-group">
	            	<button type="submit" class="btn form-control btn-primary rounded submit px-3">Submit</button>
	            </div>
	        </form>
	          <div class="w-100 text-center mt-5 text">
	          	<p class="mb-0">Sudah Punya Akun?</p>
		          <a href="<?= base_url('Auth/login');?>">Sign In</a>
	          </div>
	        </div>
				</div>
			</div>
		</div>
	</section>

	<script src="<?= base_url('assets/login-form-18/js/bootstrap.min.js');?>"></script>
  <script src="<?= base_url('assets/login-form-18/js/jquery.min.js');?>"></script>
  <script src="<?= base_url('assets/login-form-18/js/main.js');?>"></script>
  <script src="<?= base_url('assets/login-form-18/js/popper.js');?>"></script>
 <script>
      feather.replace()
    </script>
    <style>

    	body {

    		background-image: url('https://content.r9cdn.net/himg/39/21/d3/revato-35491-12298276-872407.jpg');
    		height: 90%;
		    background-position: center;
		    background-repeat: no-repeat;
		    background-size: cover;
    	}

      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
	</body>
</html>