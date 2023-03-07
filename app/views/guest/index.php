<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="<?= BASEURL ?>/assets/img/logo/logo-bfi.png">
    <title>Blasfolie | <?= $data['title'] ?></title>
		
		<!-- main bootstrap -->
		<link rel="stylesheet" href="<?= BASEURL; ?>/assets/css/main/app.css">
		<!-- sweet alerts -->
		<link rel="stylesheet" href="<?= BASEURL ?>/assets/package/dist/sweetalert2.min.css">

		<!-- <script src="<?= BASEURL; ?>/assets/jquery/jquery-3.6.1.min.js"></script> -->
		
		<style>
			body {
				background-color: rgb(2,0,36);
			}
			
			.text-justify {
				text-align: justify;
			}
          
            @media(min-width: 1200px) {
              .my-responsive-font {
                font-size: 13px;
              }
            }
          
            @media(max-width: 1199.98px) {
              .my-responsive-font {
                font-size: 8px;
              }
            }
		</style>
</head>
<body>
	<div class="container mt-5">
		<div class="col-md-10 mx-auto">
			<div class="card">
				<div class="card-header">
					<div class="row mb-3">
						<div class="col-4">
							<img src="<?= BASEURL ?>/assets/img/logo/logo-bfi-full-transparent.png" alt="Logo BFI" class="w-100">
						</div>
						<div class="col-8">
							<table class="float-end border">
								<tr>
									<td colspan="2" class="px-2 my-responsive-font"><b><u>Registered Form</u></b></td>
								</tr>
								<tr>
									<td class="ps-2 my-responsive-font">No</td>
									<td class="pe-2 my-responsive-font">: BFI-F-HRD-27</td>
								</tr>
								<tr>
									<td class="ps-2 my-responsive-font">Rev</td>
									<td class="pe-2 my-responsive-font">: 00/08-09-16</td>
								</tr>
								<tr>
									<td class="ps-2 my-responsive-font">Date</td>
									<td class="pe-2 my-responsive-font">: 03-09-16</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="row">
						<div class="col text-center">
							<h2>SURAT TAMU</h2>
							<span class="lead"><i>Guest Permission Form</i></span>
						</div>
					</div>
					<hr>
				</div>
				<div class="card-body">
					<form id="myForm">
						<div class="row">
							<div class="col-md">
								<label for="tgl_kunjungan" class="form-label">Tanggal Kunjungan</label>
								<input type="date" class="form-control" id="tgl_kunjungan" name="tgl_kunjungan" required>
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-md">
								<label for="nama" class="form-label">Nama</label>
								<input type="text" class="form-control" id="nama" name="nama" placeholder="Your name" autocomplete="off" required>
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-md">
								<label for="nam	a_perusahaan" class="form-label">Nama Perusahaan</label>
								<input type="text" class="form-control" id="nama_perusahaan" name="nama_perusahaan" placeholder="Company name" autocomplete="off" required>
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-md">
								<label for="alamat_perusahaan" class="form-label">Alamat Perusahaan</label>
								<textarea class="form-control" id="alamat_perusahaan" name="alamat_perusahaan" placeholder="Company address" required></textarea>
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-md">
								<label for="personel_bfi" class="form-label">Nama Personel BFI</label>
								<input type="text" class="form-control" id="personel_bfi" name="personel_bfi" placeholder="Contact person BFI" autocomplete="off" required>
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-md">
								<label for="tujuan_kunjungan" class="form-label">Tujuan Kunjungan</label>
								<textarea class="form-control" id="tujuan_kunjungan" name="tujuan_kunjungan" placeholder="Purpose of visit" required></textarea>
							</div>
							<div class="col-md mt-3">
								<label class="form-label">Dengan Perjanjian / <span class="text-muted"><i>Appoinment</i></span></label>
								<select name="dengan_janji" id="dengan_janji" class="form-select" required>
									<option value="" selected disabled>Choose One</option>
									<option value="Ya">Ya</option>
									<option value="Tidak">Tidak</option>
								</select>
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-md">
								<label class="form-label">Kendaraan / <span class="text-muted"><i>Vehicle</i></span></label>
								<select name="kendaraan" id="kendaraan" class="form-select" required>
									<option value="" selected disabled>Choose One</option>
									<option value="Mobil">Mobil</option>
									<option value="Motor">Motor</option>
								</select>
							</div>
							<div class="col-md mt-3">
								<label for="nomor_kendaraan" class="form-label">Nomor Kendaraan</label>
								<input type="text" class="form-control" id="nomor_kendaraan" name="nomor_kendaraan" placeholder="Vehicle Registration Number" autocomplete="off" required>
							</div>
						</div>
						<hr>
						<div class="row mt-3">
							<div class="col-md">
								<h5>Syarat & Ketentuan</h5>
								<span class="lead"><i>Terms & Condition</i></span>
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-md">
								<span>Dengan menandatangani dokumen ini, saya menyatakan :</span> <br>
								<span><i>By signing this document, I declare :</i></span>
								<ol>
									<li class="text-justify">
										Bersedia mematuhi semua peraturan dan rambu keamanan yang berlaku di PT Blasfolie Internasional Indonesia <br>
										<i>Willing to comply with all safety rules and signs that apply at PT. Blasfolie Internasional Indonesia</i>
									</li>
									<li class="text-justify">
										Menyatakan sehat dan tidak berpenyakit menular khusus (Covid 19, TBC, Flu Berat, Hepatitis, dsb.) <br>
										<i>Declare healthy and not suffer from special infectious diseases (Covid 19, TB, Severe Flu, Hepatitis, etc.)</i>
									</li>
								</ol>
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-md">
								<label class="form-label">Tandatangan disini / <i>Sign here</i></label> <br>
								<canvas id="sig" name="signatured" style="border: 1px dashed grey"></canvas> <br>
								<button type="submit" class="btn btn-sm btn-primary" id="btnSend"btnSend>Submit</button>
								<button type="button" class="btn btn-sm btn-secondary" id="btnClear">Clear</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- main bootstrap -->
	<script src="<?= BASEURL; ?>/assets/js/bootstrap.js"></script>
	<!--signature_pad -->
	<script src="<?= BASEURL ?>/assets/signature_pad-4.1.5/dist/signature_pad.umd.min.js"></script>
	<!-- sweet alerts -->
	<script src="<?= BASEURL ?>/assets/package/dist/sweetalert2.min.js"></script>
	<!-- my scripts -->
	<script>
		const canvas = document.querySelector('canvas');
		const signaturePad = new SignaturePad(canvas, {
      backgroundColor: 'rgb(255, 255, 255)',
      penColor: 'blue'
    });

		const storeData = () => {
			const tgl_kunjungan = document.getElementById('tgl_kunjungan');
			const nama = document.getElementById('nama');
			const nama_perusahaan = document.getElementById('nama_perusahaan');
			const alamat_perusahaan = document.getElementById('alamat_perusahaan');
			const personel_bfi = document.getElementById('personel_bfi');
			const tujuan_kunjungan = document.getElementById('tujuan_kunjungan');
			const dengan_janji = document.getElementById('dengan_janji');
			const kendaraan = document.getElementById('kendaraan');
			const nomor_kendaraan = document.getElementById('nomor_kendaraan');
			let date = new Date();
			let hari = date.getDay();
			let tgl = date.getDate();
			let bulan = date.getMonth();
			let tahun = date.getFullYear();
			let jam = date.getHours();
			let menit = date.getMinutes();

			switch(hari) {
				case 0 : hari = 'Minggu'; break;
				case 1 : hari = 'Senin'; break;
				case 2 : hari = 'Selasa'; break;
				case 3 : hari = 'Rabu'; break;
				case 4 : hari = 'Kamis'; break;
				case 5 : hari = 'Jum\'at'; break;
				case 6 : hari = 'Sabtu'; break;
			}

			switch(bulan) {
				case 0 : bulan = 'Januari'; break;
				case 1 : bulan = 'Februari'; break;
				case 2 : bulan = 'Maret'; break;
				case 3 : bulan = 'April'; break;
				case 4 : bulan = 'Mei'; break;
				case 5 : bulan = 'Juni'; break;
				case 6 : bulan = 'Juli'; break;
				case 7 : bulan = 'Agustus'; break;
				case 8 : bulan = 'September'; break;
				case 9 : bulan = 'Oktober'; break;
				case 10 : bulan = 'November'; break;
				case 11 : bulan = 'Desember'; break;
			}

			let timeStamp = hari + ', ' + tgl + '-' + bulan + '-' + tahun + ' ' + jam + ':' + menit + ' WIB';

			let formData = 'tgl_kunjungan=' + tgl_kunjungan.value + '&nama=' + nama.value + '&nama_perusahaan=' + nama_perusahaan.value + '&alamat_perusahaan=' + alamat_perusahaan.value + '&personel_bfi=' + personel_bfi.value + '&tujuan_kunjungan=' + tujuan_kunjungan.value + '&dengan_janji=' + dengan_janji.value + '&kendaraan=' + kendaraan.value + '&nomor_kendaraan=' + nomor_kendaraan.value + '&signatured=' + signaturePad.toDataURL();

			let request = new XMLHttpRequest();
			request.open('POST', '<?= BASEURL ?>/guest/store');
			request.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			request.onreadystatechange = () => {
				if(request.readyState == 4 && request.status == 200) {
					let results = request.responseText;
					if(results == 'success') {
						
							Swal.fire({
									icon: 'success',
									title: 'Berhasil mengisi daftar tamu',
									html: '[ ' + timeStamp + ' ] <br> Dear Bapak/Ibu <b>' + nama.value +'</b>, <br> Terimakasih telah bersedia mengikuti prosedur. <br> Ikuti selalu panduan keselamatan selama Anda berada di area PT. Blasolie Internasional Indonesia. <br><br> Selanjutnya, mohon tunjukkan pesan ini kepada security yang bertugas. <br> Terimakasih ...',
									showConfirmButton: true
							});
					} else {
							Swal.fire({
									icon: 'error',
									title: 'Terjadi kesalahan',
									text: 'Silahkan ulangi lagi. Jika masih terulang, informasikan kepada Security yang bertugas',
									showConfirmButton: true
							});
					}
				}
			};
			request.send(formData);
		};

		document.getElementById('myForm').addEventListener('submit', (e) => {
			e.preventDefault();
			if(signaturePad._lastPoints.length < 3) {
				Swal.fire({
					icon: 'error',
					title: 'Tanda tangan tidak terdeteksi',
					text: 'Silahkan isi tandatangan terlebih dahulu !',
					showConfirmButton: true
				});
			} else {
				storeData();
			}
		});

		document.getElementById('btnClear').addEventListener('click', () => {
			signaturePad.clear();
		});
	</script>
</body>
</html>