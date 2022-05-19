<!DOCTYPE html>
<html>
<head>
	<title>Tamu</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

	<style type="text/css">
		.jumbotron{
			background-image: url('https://www.hotelesbenidorm.com/wp-content/uploads/2020/06/fachada-presidente.jpg'); 
			height: 45vw;
			margin-right: 50px;
			margin-left: 50px;
			background-size: cover;
		}
		h1{
			margin-left: 30px;
		}

		ul{

		margin-right: 30px;
		}

	</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <h1>Hotel Hebat</h1>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse d-flex justify-content-end"  id="navbarNav">
    	
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="<?= base_url('Auth/Login'); ?>">Login</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="<?= base_url('Tamu/DetailFKamar'); ?>">Tipe Kamar</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Fasilitas</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Logout</a>
        </li>
      </ul>
      </div>
    </div>
  </div>
</nav>

<div class="jumbotron jumbotron-fluid">
  <div class="container">
  	<img src="">
  </div>
</div>

</form>

</div>

<div class="container text-center mt-5">
	<h1>TENTANG KAMI</h1>
	<P>Lepaskan diri Anda ke Hotel Hebat, nikmatisore yang hangout dengan berenang di kolam renang dengan pemandangan matahari terbenam yang memukau. Kafe yang ada di hotel kami, dilengkapi dengan pelayanan lengkap dengan berbagai macam hidangan yang akan membuat anda merasa puas, Manfaatkan ruang serbaguna sebagai tempat konversi ataupun mewujudkan acara pernikahan adat yang mewah! kami meyediakan berbagai kamar hotel yang mebuat anda nyaman untuk berlibur dan melaukan banyak aktifitas lainnya. Kami menghargai setiap momen yang kita habiskan bersama, jadi mari ciptakan lebih banyak kenangan bersama</P>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>