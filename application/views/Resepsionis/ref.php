<?php $this->load->view('master/head');?>
    <div class="container">
		<div class="card mb-3">
		  <img src="https://www.hotelesbenidorm.com/wp-content/uploads/2020/06/fachada-presidente.jpg" class="card-img-top" alt="..." style="max-height: 50vh;">
		  <div class="card-body">
			
		    <h5 class="card-title">List Bookingmu</h5>
		    <p class="card-text">
					Kode Booking Anda :
		    </p>
		    <p>
		    	<div class="row">
		    		<?php $data['book'] = array_reverse($data['book']);foreach($data['book'] as $key => $item):?>
		    		<div class="col-md-12 mb-2">
							<div class="card">
							  <img src="<?=$item->img_room?>" class="card-img-top" alt="<?=$item->img_room?>">
							  <div class="card-body">
							    <h5 class="card-title"><?=$item->Nama_room?> x <?=$item->jml_kamar?> Kamar </h5>
								<p>Nama Tamu = <?=$item->nama_tamu?></p>
							    <p>Tgl cekin = <?=$item->tgl_cekin?></p>
							    <p>Tgl cekout = <?=$item->tgl_cekout?></p>
							    <p>Total Harga = RP. <?=$item->Harga?></p>
							    <p>payby = <?=$item->PayBay?></p>
							    <p>Pembayaran = 
							    	<?php if($item->PayEND==0)
							    	{$pesan='belum di Bayar';}
							    	else
									{$pesan='sudah di bayar';}
							    	echo $pesan;
							    	?>
							    </p>
							    <p>
									<strong>
							    		CODEBooking = <?=$item->RefPB?>
									</strong>
							    </p>
								<?php if ($item->Status_Kamar == 'cekin') :?>
							  	
							  	<?php elseif ($item->Status_Kamar == 'cekout'):?>
							  		<p>Telah Melakukan Cek Out Pada <?=$item->tgl_cekout?></p>
							  	<?php endif ;?>

							  	<?php if($item->PayEND == 0): ?>
							  		<a href="<?=base_url('/Resepsionis/payed?id=').$item->id_pesanan.'&f=PayEND&v=1'?>" class="bt btn-warning">Bayar</a>
							  	<?php else:?>

							  		<?php if (date('Y-m-d') >= $item->tgl_cekin || date('Y-m-d') <= $item->tgl_cekout) :?>
										<?php if (empty($item->Status_Kamar)): ?>
									  		<a href="<?=base_url('/Resepsionis/payed?id=').$item->id_pesanan. '&f=Status_kamar&v=cekin'?>" class="btn btn-warning">cek in</a>
									  	<?php elseif ($item->Status_Kamar == "cekin") :?>
									  		<p class="text-primary">Telah Melakukan Cekin Pada <?=$item->tgl_cekin?></p>
								  			<a href="<?=base_url('/Resepsionis/payed?id=').$item->id_pesanan.'&f=Status_kamar&v=cekout'?>" class="btn btn-warning">cek out</a>
									  	<?php endif ?>
								  									  		
							  		<?php else :?>
							  			<p class="text-danger">Tidak / Terlambat Cek Out</p>

							  	<?php endif;?>

							  	<?php endif;?>
							  </div>
							</div>
		    		</div>
		    		<?php endforeach ;?>

		    	</div>
		    </p>
			<hr>
			<p class="card-text">
				Masukan Code Booking :
                <form action="<?=base_url('/Resepsionis/Datatrack')?>" method="get">
                    <input type="text" name="ref" class="form-control">
                    <button type="submit" class="btn btn-primary col-md-12 mt-2">Cari</button>
                </form>
		    </p>
		  </div>
		</div>    		
    </div>
<?php $this->load->view('master/foot');?>