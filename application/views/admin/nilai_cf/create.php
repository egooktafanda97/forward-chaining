<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="x_panel tile fixed_height_350">
			<div class="x_title">

				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h3>Tambah Rule</h3>

							<br>
							<form action="" method="POST">
								<div class="container">
									<div class="row">
										<div class="col-md-2" style="margin-bottom: 5px;">
											<span>Gejala : </span>
										</div>
										<!-- <div class="col-md-12">
											<input type="text" name="gejala_id" class="form-control " style="font-size: 12px;">
										</div> -->
									</div>
										<select name="gejala_id" class="form-control " style="font-size: 12px;" required="required">
											<option>-Pilih-</option>
											<?php $kelompok_gejala = $this->Nilaicf_model->getgejala();
											?>
											<?php foreach ($kelompok_gejala->result() as $key){ ?>
												<option value="<?php echo $key->id ?>">[<?php echo $key->kode; ?>] <?php echo $key->nama_gejala; ?></option>
											<?php } ?> 
										
										</select>
									<br>
									<div class="row">
										<div class="col-md-2" style="margin-bottom: 5px;">
											<span>Nama Penyakit : </span>
										</div>
										<!-- <div class="col-md-12">
											<input type="text" name="penyakit_id" class="form-control" style="font-size: 12px;">
										</div> -->
									</div>
									<select name="penyakit_id" class="form-control " style="font-size: 12px;" required="required">
											<option>-Pilih-</option>
											<?php $kelompok_gejala = $this->Nilaicf_model->getpenyakit();
											?>
											<?php foreach ($kelompok_gejala->result() as $key){ ?>
												<option value="<?php echo $key->id ?>">[<?php echo $key->kode; ?>] <?php echo $key->nama; ?></option>
											<?php } ?> 
										
										</select>
									<br>
								 		<div class="row">
										<div class="col-md-2" style="margin-bottom: 5px;">
											<span>Persentase (100/Jumlah Gejala setiap Penyakit Misalnya Jumlah Gejala = 4 = 100/4) : </span>
										</div>
										<div class="col-md-12">
											<input type="text" name="md" class="form-control" style="font-size: 12px;" required="required">
										</div>
									</div>
									<br>
									<button type="submit" name="submit" class="btn btn-primary btn-sm" style="border-radius: 0px; background: #3EA8FF; border-color: #3EA8FF;">Simpan</button>
									<a href="<?php echo site_url('/nilai_cf/index') ?>" class="btn btn-default btn-flat btn-sm" style="border-radius: 0px;">Batal</a>
								</div>
							</form>
						</div>	
					</div>
				</div>
				
			</div>
		</div>
	</div>
</div>