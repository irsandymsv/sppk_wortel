<?php 
include_once '../model/allModel.php';

$art = new m_artikel();
$id = $_GET["id"];

if ($art->hapusArtikel($id)) {
	header("location: ../view/v_admArtikel.php");
}
else{
	echo "hapus gagal";
}

?>