<?php 
include_once '../model/allModel.php';
session_start();

$artikel = new m_artikel();
if (empty($_POST["judul"]) || empty($_POST["isi"])) {
	$_SESSION["input-kosong"] = "Harap isi semua data artikel";
	
	header("location: ../view/v_buatArtikel.php#error");
}
else{
	
	$data = array("judul" => strip_tags($_POST["judul"]),
					"isi" => $_POST["isi"],
					"id_penulis" => $_SESSION["user"]->id,
					"saran" => $_POST["saran"]
	);

	$hasil = $artikel->buatArtikel($data);
	// var_dump($hasil[0]);
	// var_dump($hasil[1]);
	// exit();

	if ($hasil[0]) {
		// $dir = "../storage/";
		// $fileType = strtolower(pathinfo(basename($_FILES["picture"]["name"]), PATHINFO_EXTENSION));
		// $picture = $dir . "artikel-" . $hasil[1] . "." . $fileType; //set id terbaru sebagai nama pic
		// $upload = move_uploaded_file($_FILES["picture"]["tmp_name"], $picture);

		// $setPic = $artikel->setPicture($picture, $hasil[1]); //set pic untuk laporan terbaru

		// if ($setPic) {
			header("location: ../view/v_admLihatArtikel.php?id=".$hasil[1]);
		// }
		// else{
		// 	echo "gagal upload picture";
		// }
	}
	else{
		echo "gagal input artikel";
	}
}

?>