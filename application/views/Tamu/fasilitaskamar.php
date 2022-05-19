<?php $this->load->view('master/head');?>
    
    <div class="container">
    	<?php foreach ($data as $key => $kamar): ?>
    	<div class="card mb-3">
		  <img src="<?=$kamar['Info_kamar ']->img_room?>" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title"><?=$kamar['Info_kamar ']->Nama_room?> - Rp. <?=$kamar['Info_kamar ']->harga?></h5>
		    <p class="card-text">
		    	fasilitas :
		    </p>
		    <p>
		    	<ul>
		    	<?php if(!empty($kamar['f_kamar'])):?>
		    		<?php foreach ($kamar['f_kamar'] as $key2 => $f): ?>
		    			<li><?=$f->nama_fasilitas?></li>
		    		<?php endforeach; ?>
		    	<?php endif; ?>
		    	</ul>
		    </p>

		    <a href="<?= base_url('Tamu/detailTipe'). '?id='.$kamar['Info_kamar ']->id ?>" class="btn btn-primary">Lihat Detail</a>
		  </div>
		</div>		
    	<?php endforeach ?>

	</div>
    <?php $this->load->view('master/foot');?>
    