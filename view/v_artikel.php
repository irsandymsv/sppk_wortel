<?php 
include_once '../model/allModel.php';
include_once '../controller/c_getArtikel.php';
session_start();

?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Artikel</title>
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="css/css_header.css" rel="stylesheet">
	<link href="css/css_footer.css" rel="stylesheet">
	<style type="text/css">
		.back{
			padding: 20px;
			padding-top: 0;
			min-height: 518px;
			background-color: rgb(230,230,230);
		}

		.konten{
			width: 75%;
			min-height: 490px;
			padding: 30px;
			margin-right: auto;
			margin-left: auto;
			background-color: white;
		}

		.card{
			width: 80%;
			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
			/*padding: 15px;*/
			background-color: #f1f1f1;
			border-left: 5px solid #ff5c33;
			margin-bottom: 20px;
			overflow: hidden;
		}

		.depan{
			float: left;
			width: 80%;
			color: black;
			padding: 5px;
			padding-left: 10px;
			padding-top: 10px;
		}

		.belakang{
			float: left;
			width: 20%;
			padding: 5px;
			text-align: center;
			background-color: grey;
			color: white;
		}

		.card:hover{
			box-shadow: none;
			box-shadow: 0 6px 10px 0 rgba(0, 0, 200, 0.3);

		}

		.teks{
			font-size: 14px;
		}
	</style>
</head>
<body>

	<div class="container-fluid">

		<?php include_once 'layout/header.php'; ?>

		<div class="row">
			<div class="back">
				
				<div class="konten">
					
					<H2><b>Artikel Wortel</b></H2>
					<br>
					<div class="artikel">

						<?php for ($i=0; $i < count($allArtikel); $i++) { 
							$tgl_dibuat = date_create($allArtikel[$i]->created_at, timezone_open('Asia/Jakarta'));
						?>
							<a href="v_detailArtikel.php?id=<?php echo $allArtikel[$i]->id ?>">
								<span>
									<div class="card">
										<div class="depan">
											<h4><?php echo $allArtikel[$i]->judul; ?></h>
											<br><br>
											<p class="teks"><?php echo substr(strip_tags($allArtikel[$i]->isi, "<h1>"), strpos(strip_tags($allArtikel[$i]->isi, "<h1>"), "</h1>"), 150)."..."; ?></p>
										</div>

										<div class="belakang">
											<h5><?php echo date_format($tgl_dibuat, "d M Y"); ?></h5>
										</div>
								</div>		
								</span>
							</a>
							
						<?php } ?>

					</div>

				</div>

			</div>
		</div>

		<?php include_once 'layout/footer.php'; ?>	

	</div>

	<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>