<?php 
	include_once 'model/allModel.php';
	include_once 'controller/c_getSaranArtikel.php';
	session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Sistem Pendukung Keputusan Pemilihan Lahan untuk Wortel</title>

	<link href="view/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="view/css/css_header.css" rel="stylesheet">
	<link href="view/css/css_footer.css" rel="stylesheet">
	<style>
		body{
			/*padding: 0;*/
			/*margin: 0;*/
			background-color: rgb(240,240,240); 
		}
		

		.container-fluid{
			/*padding: 20px;*/
			background-color: white;
			overflow: hidden;
		}

		.row{
			padding: 0px;
			/*overflow: hidden;*/
		}

		#r0{
			background-image: url('storage/wortel_crop.jpg');
			height: 100%;
			background-size: cover;
			background-position: bottom;
			background-repeat: no-repeat;
			border-bottom: 5px solid lightgrey;
		}

		#r1{
			height: 518px;
		}

		.col-md-5{
			/*background-color: #ffff33;*/
			background-color: #2C7873;
			color: white;
			height: 100%;
		}

		.col-md-7{
			/*background-color: #9933ff;*/
			background-color: #A2C523;
			height: 100%;
		}

		.input{
			padding: 5px;
			
		}

		.list{
			padding: 5px;
		}

		#tbl-input{
			width: 100%;
			margin-right: auto;
			margin-left: auto;
		}

		#tbl-input tr td{
			padding: 10px;
		}

		#tbl-daftar{
			overflow-y: scroll;
			/*width: 100%;*/
			height: 320px;
			display: block;
			margin-right: auto;
			margin-left: auto;
			background-color: white;
			
		}	

		#tbl-daftar th{
			width: 300px;
			top: 0;
			position: sticky;
			background-color: rgb(240,240,240);
			text-align: center;
			border-bottom: 0.3px solid lightgrey;
		}				

		#tbl-daftar td{
			/*width: 300px;*/
		}

		#r2{
			display: none;
		}

		.hasil{
			padding: 25px;
			padding-top: 40px;
			min-height: 613px;
			color: black;
			/*height: 100%;*/
			/*background-color: #79ff4d;*/
			background-color: #6FB98F;
		}

		.hasil table{
			background-color: white;
			width: 90%;
			font-size: 16px;
			margin-right: auto;
			margin-left: auto;
		}

		.tulisan{
			width: 90%;
			margin-right: auto;
			margin-left: auto;
			font-size: 16px;
		}

		.saran{
			width: 90%;
			margin-right: auto;
			margin-left: auto;
			padding: 15px;
			padding-top: 5px;
			margin-top: 25px;
			overflow: hidden;
			border: 4px solid white;
			/*background-color: red;*/
		}

		.cardSaran{
			padding: 10px;
			background-color: white;
			display: none;
		}

		button[name="munculkan"]{
			margin-top: 10px;
			width: 100%;
		}

	</style>
</head>
<body>

	<div class="container-fluid">

		<!-- <div class="row" id="kepala">
			
			<br>
		</div> -->

		<div class="row" id="r0">
			<div class="judul">
				<h2>SPPK Wortel</h2>
			</div>

			<div class="navbar">
				<div class="menu">
					<a href="index.php">Home</a>
					<a href="view/v_artikel.php">Artikel</a>
					<?php if (!empty($_SESSION["user"])) {
							echo '<a href="view/v_admArtikel.php">Dashboard</a>';
						}
						else{
							echo '<a href="view/v_login.php">Login</a>';
						}
					?>
				</div>
			</div>
		</div>

		<div class="row" id="r1">
			<div class="col-md-5">
				<div class="input">
					<br>
					<p style="font-size: 28px; text-align: center;">Masukkan Data Lahan</p>
					<br>
					<!-- <form action="index.php" method="post"> -->
						<table id="tbl-input">
							<tr>
								<td><label>Nama Lahan</label></td>
								<td><input class="form-control" type="text" name="namaLahan"></td>
							</tr>

							<tr>
								<td><label>PH</label></td>
								<td>
									<select class="form-control" name="ph">
										<option value="">pilih</option>
										<option value="1 - 2">1 - 2</option>
										<option value="3 - 4">3 - 4</option>
										<option value="5 - 6">5 - 6</option>
										<option value="6,5 - 7">6,5 - 7</option>
										<option value="7,5 - 8">7,5 - 8</option>
									</select>
								</td>
							</tr>

							<tr>
								<td><label>Suhu (&deg;C)</label></td>
								<td>
									<select class="form-control" name="suhu">
										<option value="">pilih</option>
										<option value="3 - 8">3 - 8</option>
										<option value="9 - 14">9 - 14</option>
										<option value="15 - 21">15 - 21</option>
										<option value="22 - 25">22 - 25</option>
										<option value=">26">>26</option>
									</select>
								</td>
							</tr>

							<tr>
								<td><label>Ketinggian (mdpl)</label></td>
								<td>
									<select class="form-control" name="tinggi">
										<option value="">pilih</option>
										<option value="1 - 459">1 - 459</option>
										<option value="460 - 999">460 - 999</option>
										<option value="1000 - 1200">1000 - 1200</option>
										<option value="1201 - 1450">1201 - 1450</option>
										<option value="1451 - 2000">1451 - 2000</option>
									</select>
								</td>
							</tr>

							<tr>
								<td><label>Sumber Air</label></td>
								<td>
									<select class="form-control" name="air">
										<option value="">pilih</option>
										<option value="Sangat Baik">Sangat Baik</option>
										<option value="Baik">Baik</option>
										<option value="Cukup Baik">Cukup Baik</option>
										<option value="Buruk">Buruk</option>
										<option value="Sangat Buruk">Sangat Buruk</option>

									</select>
								</td>
							</tr>

							<tr>
								<td><label>Kondisi Tanah</label></td>
								<td>
									<select class="form-control" name="tanah">
										<option value="">pilih</option>
										<option value="Sangat Subur">Sangat Subur</option>
										<option value="Subur">Subur</option>
										<option value="Cukup Subur">Cukup Subur</option>
										<option value="Tidak Subur">Tidak Subur</option>
										<option value="Tandus">Tandus</option>
									</select>			
								</td>
							</tr>

						</table>
						<br>
						<div style="text-align: center;">
							<button class="btn btn-success" id="tambahkan">Tambahkan</button>
						</div>
					<!-- </form> -->
				</div>	
			</div>

			<div class="col-md-7">
				<div class="list">
					<br>
					<p style="font-size: 28px; color: white; text-align: center;">Daftar Lahan</p>
					<br>
					<table class="table table-bordered" id="tbl-daftar">
						<thead>
							<tr>
								<th>No</th>
								<th>Nama</th>
								<th>PH</th>
								<th>Suhu</th>
								<th>Sumber Air</th>
								<th>Ketinggian</th>
								<th>Kondisi Tanah</th>
								<th>Aksi</th>
							</tr>
						</thead>
						<tbody id="body-list">
						</tbody>
					</table>	

					<div style="text-align: center;">
						<button class="btn btn-danger" disabled="disabled" id="btn-kosong" style="margin-right: 10px;">Kosongkan</button>
						<button class="btn btn-primary" disabled="disabled" id="btn-result">Tampilkan Hasil</button>
					</div>	
				</div>
			</div>
		</div>

		<div class="row" id="r2">
			<div class="hasil">
				<br>
				<p style="font-size: 30px; text-align: center;"><b>Hasil Perangkingan Lahan</b></p>
				<br>
				<table class="table table-striped">
					<tr>
						<th>No</th>
						<th>Nama Lahan</th>
						<th>Nilai</th>
						<th>PH</th>
						<th>Suhu</th>
						<th>Sumber Air</th>
						<th>Ketinggian</th>
						<th>Kondisi Tanah</th>
					</tr>
					<tbody id="body-result">
						
					</tbody>
				</table>
				<br>

				<div class="tulisan">
					
				</div>

				<div class="saran">
				<h3><b>Saran</b></h3>

				</div>

			</div>
		</div>

		<?php include_once 'view/layout/footer.php'; ?>

	</div>
	
	<script src="view/bootstrap/js/jquery-3.3.1.min.js"></script>
	<script src="view/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript">

		function disbale_btn() {
			if (listLahan.length < 2) {
				$('#btn-result').attr('disabled', 'disabled');
			}else{
				$('#btn-result').removeAttr('disabled');
			}

			if (listLahan.length < 1) {
				$('#btn-kosong').attr('disabled', 'disabled');
			}else{
				$('#btn-kosong').removeAttr('disabled');
			}
		}

		function set_table() {
			var gabungkan = "";
				jQuery.each(listLahan, function(index, el) {
					var no = index + 1;
					gabungkan += "<tr>"+
									"<td>"+no+"</td>"+
									"<td>"+el[0]+"</td>"+
									"<td>"+el[1]+"</td>"+
									"<td>"+el[2]+"</td>"+
									"<td>"+el[3]+"</td>"+
									"<td>"+el[4]+"</td>"+
									"<td>"+el[5]+"</td>"+
									'<td><button class="btn btn-danger" name="hapuskan" id="'+index+'">Hapus</button></td>'
								+"<tr>";
					
				});
				$("#body-list").html(gabungkan);
		}

		function cekNama(nama) {
			var nilai = false;
			jQuery.each(listLahan, function(index, val) {
			  if (nama == val[0]) {
			  	nilai = true;
			  }
			});
			return nilai;
		}

		var lahan = "";
		var listLahan = [];
		disbale_btn();

		$('#tambahkan').click(function(event) {
			var nama = $('input[name="namaLahan"]').val();
			var ph = $('select[name="ph"]').val();
			var suhu = $('select[name="suhu"]').val();
			var air = $('select[name="air"]').val();
			var tinggi = $('select[name="tinggi"]').val();
			var tanah = $('select[name="tanah"]').val();
			if (nama == "" || ph == "" || suhu == "" || tinggi == "" || air == "" || tanah == "") {
				alert("Harap isi semua data lahan");
			}
			else if (cekNama(nama)) {
				alert("nama lahan telah ada, harap gunakan nama lain");
			}
			else{
				lahan = [nama, ph, suhu, air, tinggi, tanah];
				listLahan.push(lahan);

				set_table(); //set data input ke tabel daftar lahan 

				$('input[name="namaLahan"]').val("");
				$('select').each(function(index, el) {
					$(this).val($(this).find("option[selected]").val() );
				});
			}
			disbale_btn();
		});
		
		$('#body-list').on('click','button[name="hapuskan"]', function(event) {
			event.preventDefault();
			var index = $(this).attr('id');
			console.log("to be deleted= "+index);
			listLahan.splice(index, 1); //hapus elemen
			// var del = listLahan[index];
			// listBaru = listLahan.filter(function(item) {
			// 	return item !== del;
			// });
			// console.log('listBaru= '+listBaru[0][0]);
			// listLahan = [];
			// listLahan = listBaru;
			// console.log('listLahan= '+listLahan[0][0]);

			jQuery.each(listLahan, function(index, el){
				console.log('index='+index +" "+"elemen="+el[0]);
			});
			set_table();
			disbale_btn();
		});

		jQuery(document).ready(function($) {
			$('#btn-result').on('click', function(event) {

				$.ajax({
					url: 'controller/c_hitunglah.php',
					type: 'POST',
					dataType: 'JSON',
					data: {'listLahan': listLahan},
				})
				.done(function(hasil) {
					console.log("success");

					$('#r2').css('display', 'block');
					var ini = $('#r2');
					if (ini.hash != "" ) {
						event.preventDefault();
						var hash = ini.hash;

						$('html, body').animate({
							scrollTop: $('#r2').offset().top
						}, 800, function () {
							window.location.hash = hash;
						});

					}

					var no = 0;
					var gabungkan = "";
					var best_lahan= [hasil[0].nama];
					jQuery.each(hasil, function(index, el) {
						no++;
						gabungkan += "<tr>"+
									"<td>"+no+"</td>"+
									"<td>"+el.nama+"</td>"+
									"<td>"+el.hasil+"</td>"+
									"<td>"+el.ph+"</td>"+
									"<td>"+el.suhu+"</td>"+
									"<td>"+el.air+"</td>"+
									"<td>"+el.tinggi+"</td>"+
									"<td>"+el.tanah+"</td>"+
								+"<tr>";

						console.log('nama='+el.nama);
						console.log('nilai='+el.hasil);
						console.log('bobot_ph='+el.bobot_ph);
						console.log('bobot_suhu='+el.bobot_suhu);
						console.log('bobot_air='+el.bobot_air);
						console.log('bobot_tinggi='+el.bobot_tinggi);
						console.log('bobot_tanah='+el.bobot_tanah);
						console.log('');
						console.log('normal_ph='+el.normal_ph);
						console.log('normal_suhu='+el.normal_suhu);
						console.log('normal_air='+el.normal_air);
						console.log('normal_tinggi='+el.normal_tinggi);
						console.log('normal_tanah='+el.normal_tanah);
						console.log('');
						console.log('');
					});

					$('#body-result').html(gabungkan);
					$('.tulisan').html('<p><b>Dari hasil perangkingan, diketahui '+best_lahan+' memiliki nilai tertinggi</b></p>'+
						'<p><i>Hasil teratas belum tentu menjadi lahan yang cocok ditanami wortel, bacalah "saran" untuk mengetahui langkah-langkah yang dapat dilakukan guna mengatasi lahan dengan kriteria rendah</i></p>');
					$('button[name="munculkan"]').remove();
					$('.cardSaran').remove();

					var tampilSaran = false;
					jQuery.each(hasil, function(index, el) {
					  if (el.bobot_ph < 3 || el.bobot_air < 3 || el.bobot_tanah < 3) {
					  	console.log('tampilkan saran');
					  	tampilSaran = true;
					  	return false;
					  }
					});

					console.log('ini Saran')
					if (tampilSaran) {
						jQuery.each(hasil, function(index, el) {
							var nama_lahan="";
							var saran_ph="";
							var saran_air="";
							var saran_tanah="";

						  if (el.bobot_ph < 3) {
						  	nama_lahan = el.nama;
						  	saran_ph = '<li>' + 
						  			el.ph_kurang + 
						  			'<br> Lihat: '+
						  			'<?php 
						  			$jml = count($artikelPH);
						  			$no=0;
						  			foreach ($artikelPH as $artikel) { ?>' +
						  			'<a href="view/v_detailArtikel.php?id=<?php echo $artikel->id ?>" target="_blank"><?php echo $artikel->judul ?></a><?php echo ($no != $jml-1)? ", ": "" ?>' +
						  			'<?php $no++; } ?>'+
						  			'</li>';
						  } 

						  if (el.bobot_air < 3) {
						  	nama_lahan = el.nama;
						  	saran_air = '<li>' + 
						  			el.air_kurang + 
						  			'<br> Lihat: '+
						  			'<?php 
						  			$jml = count($artikelAir);
						  			$no=0;
						  			foreach ($artikelAir as $artikel) { ?>' +
						  			'<a href="view/v_detailArtikel.php?id=<?php echo $artikel->id ?>" target="_blank"><?php echo $artikel->judul ?></a><?php echo ($no != $jml-1)? ", ": "" ?>' +
						  			'<?php $no++; } ?>'+
						  			'</li>';
						  }

						  if (el.bobot_tanah < 3) {
						  	nama_lahan = el.nama;
						  	saran_tanah = '<li>' + 
						  			el.tanah_kurang + 
						  			'<br> Lihat: '+
						  			'<?php 
						  			$jml = count($artikelTanah);
						  			$no=0;
						  			foreach ($artikelTanah as $artikel) { ?>' +
						  			'<a href="view/v_detailArtikel.php?id=<?php echo $artikel->id ?>" target="_blank"><?php echo $artikel->judul ?></a><?php echo ($no != $jml-1)? ", ": "" ?>' +
						  			'<?php $no++; } ?>'+
						  			'</li>';
						  }
						  // var sarannya = saran_ph + saran_air + saran_tanah;
						  if (nama_lahan != "") {
						  	$('.saran').append('<button class="btn btn-default btn-lg" name="munculkan" id="'+index+'">'+nama_lahan+' <span class="glyphicon glyphicon-triangle-bottom"></span> </button>'+
						  					'<div class="cardSaran" id="'+index+'">'+
						  						// '<p><b>'+nama_lahan+'</b></p>'+
						  						'<ul>'+
						  							saran_ph+
						  							saran_air+
						  							saran_tanah+
						  						'</ul>'+
						  					'</div>'
						  	);	
						  } 

						});
					}

					$('button[name="munculkan"]').click(function(event) {
						var nom = $(this).attr('id');
						console.log('id muncul='+nom);
						$('div#'+nom+'.cardSaran').slideToggle(400);
					});
					
				})
				.fail(function() {
					console.log("error");
				})
				.always(function() {
					console.log("complete");
				});
			
			});	
		});
		

		$('#btn-kosong').click(function(event) {
			listLahan = [];
			set_table();
			disbale_btn();
		});
		
		

	</script>
</body>
</html>