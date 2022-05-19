<?php $this->load->view('master/head');?>
<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <div class="container">
    	<form method="POST" action="<?=base_url('/Tamu/prosBook')?>">
            <div class="row">
                <div class="col-md-12">
                    <div class="card mb-3 text-center">
                      <img src="https://www.hotelesbenidorm.com/wp-content/uploads/2020/06/fachada-presidente.jpg" class="card-img-top" alt="" style="max-height: 500px;object-fit: cover;">
                      <div class="card-body">
                        <h5 class="card-title">Hotel Hebat</h5>
                        <p class="card-text">Lepaskan diri Anda ke Hotel Hebat, nikmatisore yang hangout dengan berenang di kolam renang dengan pemandangan matahari terbenam yang memukau. Kafe yang ada di hotel kami, dilengkapi dengan pelayanan lengkap dengan berbagai macam hidangan yang akan membuat anda merasa puas, Manfaatkan ruang serbaguna sebagai tempat konversi ataupun mewujudkan acara pernikahan adat yang mewah! kami meyediakan berbagai kamar hotel yang mebuat anda nyaman untuk berlibur dan melaukan banyak aktifitas lainnya. Kami menghargai setiap momen yang kita habiskan bersama, jadi mari ciptakan lebih banyak kenangan bersama</p>
                        <!-- <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
                      </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-4">
                            <p class="mb-1">tgl_cekin</p>
                            <input class="form-control" type="date" name="tgl_cekin" placeholder="tgl_cekin">
                        </div>
                        <div class="col-md-4">
                            <p class="mb-1">tgl_cekout</p>
                            <input class="form-control" type="date" name="tgl_cekout" placeholder="tgl_cekout">
                        </div>
                        <div class="col-md-4">
                            <p class="mb-1">jml_kamar</p>
                            <input class="form-control" type="number" name="jml_kamar" placeholder="jml_kamar">
                        </div>
                    </div>
                </div>
                <div class="col-md-12 mt-5">
                    <h4>FORM PEMESANAN</h4>
                </div>
                <div class="col-md-12">
                    <p class="mt-3">nama pemesan</p>
                    <input class="form-control" type="text" name="nama_pemesan" placeholder="nama_pemesan" value="">
                    <p class="mt-333">email</p>
                    <input class="form-control" type="email" name="email" placeholder="email">
                    <p class="mt-3">no hp</p>
                    <input class="form-control" type="number" name="no_hp" placeholder="no_hp" value="">
                    <p class="mt-3">Pilih Kamar</p>
                    <select name="id_kamar">
                    <?php foreach ($data['alltipe'] as $key => $item):?>
                    <option value="<?=$item->id?>"><?=$item->Nama_room?></option>
                <?php endforeach; ?>
                    </select>
 
                    <p class="mt-3">PayBay</p>
                    <select name="PayBay">
                    <option>Bayar Di Tempat</option>
                    <option>Transfer Bank</option>
                    </select>
    </div>
            </div>
			<button type="submit">Kirim</button>
    	</form>
    </div>
    <?php $this->load->view('master/foot');?>