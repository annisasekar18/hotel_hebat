<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<div class="container">
	<?php $this->load->view('master/head');?>
	<!-- div ren -->
	<div class="row">
		<div class="col-md-12">
			<div class="card mb-3 text-center">
			  <img src="https://www.hotelesbenidorm.com/wp-content/uploads/2020/06/fachada-presidente.jpg" class="card-img-top" alt="" style="max-height: 500px;object-fit: cover;">
			  <div class="card-body">
			    <h5 class="card-title">Hotel Hebat</h5>
			    <p class="card-text">Selamat Datang Di Hotel hebat! Kami menghargai setiap momen yang kita habiskan bersama, jadi mari ciptakan lebih banyak kenangan bersama</p>
			    <!-- <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
			  </div>
			</div>
		</div>
	</div>
	<hr>
	<!-- div fasilitas -->
	<div class="row">
		<?php foreach ($fas as $key => $fasi):?>
		<div class="col-md-6">
			<div class="card">
			  <div class="card-body">
			    <h5 class="card-title"><?=$fasi->nama_fasilitas?></h5>
			    <p class="card-text"><?=$fasi->deks?>.</p>
			  </div>
			  <img src="<?=$fasi->img?>" class="card-img-bottom" alt="" style="max-height: 300px;object-fit: cover;">
			</div>
		</div>
		<?php endforeach; ?>
	</div>
</div>
<?php $this->load->view('master/foot');?>