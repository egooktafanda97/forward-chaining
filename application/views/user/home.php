       				<div class="container">
       					<div class="row justify-content-end fullscreen align-items-center">
       						<div class="col-lg-6 col-md-12 banner-left">
       							<h2 class="text-white">
       								Konsultasi penyakit anda segera..
       							</h2>
       							<p class="mx-auto text-white  mt-20 mb-40">
       								...
       							</p>
       							<?php
									if ($this->session->userdata('is_login') == TRUE && $this->session->userdata('level') == 'pasien') {
									?>
       								<a href="<?php echo site_url() ?>/welcome/diagnosa" class="text-uppercase header-btn">Diagnosa Sekarang <i class="fa fa-arrow-right"></i></span></a>
       							<?php } else { ?>
       								<a href="<?php echo site_url() ?>/login_user" class="text-uppercase header-btn">Diagnosa Sekarang <i class="fa fa-arrow-right"></i></span></a>
       							<?php } ?>
       						</div>
       						<div class="col-lg-6 col-md-12 no-padding banner-right">
       							<img style="height: 570px; width: 700px; margin-bottom: 30px;" src="<?php echo base_url() ?>assets/templateuser/img/img_banner3.png" alt="">
       						</div>
       					</div>
       				</div>
       				</section>
       				<!-- End banner Area -->


       				<!-- Start service Area -->
       				<section class="service-area section-gap" id="feature" style="background-color: #F9F9FF;">
       					<div class="container">
       						<div class="row d-flex justify-content-center" ">
						<div class=" menu-content pb-60 col-lg-8">
       							<div class="title text-center">
       								<h2 class="mb-10">Informasi Penyakit</h2>
       								<p>Lihat beberapa informasi seputar penyakit dan dan Gejala yang menyebabkan yang dapat di cek pada sistem</p>
       							</div>
       						</div>
       					</div>
       					<div class="container-fluid">
       						<div class="row">
       							<!-- <div class="col-lg-6  col-md-6 mb-30">
       								<div class="single-service" style="background-color: white; padding: 20px;">
       									<img class="d-block mx-auto mb-30" src="<?php echo base_url() ?>assets/templateuser/img/1.png" alt="">
       									<h4><a href="#">Gyrodactylosis</a></h4>
       									<span>Penyakit ini disebabkan oleh bakteri Myxobacteria. Salah satu species yang sering menginfeksi pada ikan mas adalah Flexibacter columnaris. Penyakit ini biasanya terjadi pada ikan yang stress akibat bertambahnya panas atau bertambah dinginnya suhu air.
       										Luka pada kulit pada awalnya berwarna pucat keputih‑ putihan dan luka tersebut makin lama berkembang menjadi borok yang dalam. Lama‑kelamaan ikan berwarna lebih gelap, gerakannya lamban dan akhirnya mati. Apabila bakteri tersebut menginfeksi insang maka produksi lendir biasanya akan bertambah dan lama‑lama insang ikan akan rontok. Selain itu bakteri ini dapat pula merontokkan sirip ikan. .</span>
       								</div>
       							</div> -->


       						</div>
       					</div>
       					</div>
       				</section>
       				<!-- End service Area -->

       				<!-- Start call-to-action Area -->
       				<section id="tentang" class="call-to-action-area section-gap">
       					<div class="container">
       						<div class="row justify-content-center top">
       							<div class="col-lg-12">
       								<h1 class="text-white text-center">Tentang Kami!</h1>
       								<div class="col-lg-6" style="float: right;">
       									<img src="<?php echo base_url() ?>assets/templateuser/img/bg-02.png">
       								</div>
       								<div class="col-lg-6" style="float:right">
       									<p class="text-white mt-30" style="margin-top: 0">
       										Apakah Anda sudah melakukan pemeriksaan kesehatan secara rutin di Klinik AlQasha? Jagalah kesehatan Anda dengan baik, karena pertumbuhan dan perkembangan Anda bergantung pada pengetahuan mengenai gejala dan penyakit yang mungkin timbul.

       										Klinik AlQasha menyediakan sistem diagnosis penyakit yang dapat membantu Anda memeriksa kondisi kesehatan secara mandiri, gratis, dan bisa dilakukan di mana saja.

       										Sistem Pakar dalam Mendiagnosis Penyakit di Klinik AlQasha menggunakan metode berbasis gejala untuk memberikan solusi dan informasi tentang berbagai penyakit yang mungkin Anda alami. Di sini, Anda dapat menemukan informasi lengkap mengenai berbagai penyakit, serta melakukan diagnosis mandiri disertai dengan panduan pencegahan atau penanganan awal berdasarkan kondisi kesehatan Anda.
       									</p>

       								</div>

       							</div>
       							<?php
									if ($this->session->userdata('is_login') == TRUE && $this->session->userdata('level') == 'pasien') {
									?>
       								<a href="<?php echo site_url() ?>/welcome/diagnosa" class="text-uppercase header-btn">Diagnosa Sekarang <i class="fa fa-arrow-right"></i></span></a>
       							<?php } else { ?>
       								<a href="<?php echo site_url() ?>/login_user" class="text-uppercase header-btn">Diagnosa Sekarang <i class="fa fa-arrow-right"></i></span></a>
       							<?php } ?>
       						</div>

       					</div>
       				</section>