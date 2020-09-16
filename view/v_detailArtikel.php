<?php 
include_once '../model/allModel.php';
include_once '../controller/c_getArtikel.php';
session_start();

// var_dump($artikel);

?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	<title><?php echo $artikel->judul; ?></title>
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

	</style>
</head>
<body>

	<div class="container-fluid">

		<?php include_once 'layout/header.php'; ?>

		<div class="row">
			<div class="back">
				
				<div class="konten">
					<p>
						<?php 
						$tgl_dibuat = date_create($artikel->created_at, timezone_open('Asia/Jakarta'));
						echo date_format($tgl_dibuat, "d M Y H:i");
						?>
					</p>
					<?php echo $artikel->isi; ?>
				</div>

			</div>
		</div>

		<?php include_once 'layout/footer.php'; ?>	

	</div>

	<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>