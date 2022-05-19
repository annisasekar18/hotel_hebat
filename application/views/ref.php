<?php 
date_default_timezone_set('Asia/Jakarta');
 ?>

<div class="container">
	<div class="card mb-3">
		<img src="https://www.hotelesbenidorm.com/wp-content/uploads/2020/06/fachada-presidente.jpg" alt="..." style="max-height: 50vh;">
		<div class="card-body">

			<h5 class="card-title">List Bookingmu</h5>
			<p class="card-text">
				Kode Booking Anda :

				<p>
				</p>
					<div class="row">
						<?php $data['book'] = array_reverse($data['book']);
						foreach($data['book'] as $key => $item):?>
						<div class="col-md-12 mb-2">
							<div class="card">
								<img src="<?=$item->img_room?>">
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
									CodeBooking = <?=$item->RefPB?>
								</strong>
								<?php if ($item->selesai_bayar==0):?>
								<a href="<?=base_url('/Resepsionis/payed?id=').$item->id_pesanan.'&f=selesai_bayar&v=1'?>" class="btn btn-warning">Bayar</a>
								<?php endif; ?>
										
										<?php if ($item->selesai_bayar==2) { ?>
											<p class="text-primary">Telah Melakukan Cekin Pada <?php echo date('Y-m-d'); ?>
										</p>

										<?php if ($item->Status_kamar=="Cekout") { ?>
											<p class="text-primary">Telah Melakukan Cekout Pada <?php echo $item->tgl_cekout ?>
										</p>

										<p class="text-primary"><b>Pesanan Selesai</b>
										</p>
										<?php } ?>

										<a href="<?=base_url('/Resepsionis/payed?id=').$item->id_pesanan.'&f=Status_kamar&v=Cekout'?>"
										class="btn btn-warning">Cek Out</a>
										<?php } ?>

										<?php if ($item->selesai_bayar==1) { ?>
										<a href="<?=base_url('/Resepsionis/payed?id=').$item->id_pesanan.'&f=Status_kamar&v=Cekin'. '&f=selesai_bayar&v=2'?>"
											class="btn btn-warning">
											Cek In</a>
										<?php } ?>

										<?php if ($item->Status_kamar=="Cekin") { ?>
										<?elseif(date('Y-m-d')==$item->tgl_cekout):?>
											
									<?php } ?>
									
								</div>
							</div>
						</div>
						<?php endforeach; ?>

					</div>
				</p>
				<hr>
					<p class="card-text">
				Masukan Code Booking... :
				<form action="<?=base_url('/Resepsionis/Datatrack')?>" method="get">
					<input type="text" name="ref" class="form-control">
					<button type="submit" class="btn btn-primary col-md-12 mt-2">Cari</button>
				</form>
			</p>
		</div>
	</div>
</div>