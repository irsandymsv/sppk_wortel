<?php 
include_once '../model/allModel.php';

$artikel = new m_artikel();
if (empty($_GET["id"])) {
	echo "id tak ada";
}
elseif (empty($_POST["judul"]) || empty($_POST["isi"])) {
	$_SESSION["input-kosong"] = "Harap isi semua data artikel";
	
	header("location: ../view/v_admEditArtikel.php#error");
}
else{
	$data = array("id" => $_GET["id"],
					"judul" => strip_tags($_POST["judul"]),
					"isi" => $_POST["isi"],
					"saran" => $_POST["saran"]
			);

	if ($artikel->editArtikel($data)) {
		header("location: ../view/v_admLihatArtikel.php?id=".$_GET["id"]);
	}
	else{
		echo "edit gagal";
	}
}

?>