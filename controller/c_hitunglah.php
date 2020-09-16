<?php 
include_once '../model/lahan.php';

$daftarLahan = array();
$ph = 5;
$suhu = 4;
$air = 3;
$tinggi = 3;
$tanah = 2;

$max_ph = 5;
$min_ph = 1;
$selisih_ph = $max_ph - $min_ph;

$max_suhu = 5;
$min_suhu = 1;
$selisih_suhu = $max_suhu - $min_suhu;

$max_air = 5;
$min_air = 1;
$selisih_air = $max_air - $min_air;

$max_tinggi = 5;
$min_tinggi = 1;
$selisih_tinggi = $max_tinggi - $min_tinggi;

$max_tanah = 5;
$min_tanah = 1;
$selisih_tanah = $max_tanah - $min_tanah;

foreach ($_POST["listLahan"] as $key) {
	$lahan = new lahan($key[0], $key[1], $key[2], $key[3], $key[4], $key[5]);
	array_push($daftarLahan, $lahan);
}

//Pembobotan
foreach ($daftarLahan as $key) {

	//Pembobotan PH
	if ($key->ph == "1 - 2") {
		$key->bobot_ph = 1;
	}
	elseif ($key->ph == "3 - 4") {
		$key->bobot_ph = 2;	
	}
	elseif ($key->ph == "5 - 6") {
		$key->bobot_ph = 4;	
	}
	elseif ($key->ph == "6,5 - 7") {
		$key->bobot_ph = 5;	
	}
	elseif ($key->ph == "7,5 - 8") {
		$key->bobot_ph = 3;	
	}

	//Pembobotan Suhu
	if ($key->suhu == "3 - 8") {
		$key->bobot_suhu = 3;
	}
	elseif ($key->suhu == "9 - 14") {
		$key->bobot_suhu = 4;	
	}
	elseif ($key->suhu == "15 - 21") {
		$key->bobot_suhu = 5;	
	}
	elseif ($key->suhu == "22 - 25") {
		$key->bobot_suhu = 2;	
	}
	elseif ($key->suhu == ">26") {
		$key->bobot_suhu = 1;	
	}

	//Pembobotan Air
	if ($key->air == "Sangat Baik") {
		$key->bobot_air = 5;
	}
	elseif ($key->air == "Baik") {
		$key->bobot_air = 4;	
	}
	elseif ($key->air == "Cukup Baik") {
		$key->bobot_air = 3;	
	}
	elseif ($key->air == "Buruk") {
		$key->bobot_air = 2;	
	}
	elseif ($key->air == "Sangat Buruk") {
		$key->bobot_air = 1;	
	}

	//Pembobotan Tinggi
	if ($key->tinggi == "1 - 459") {
		$key->bobot_tinggi = 1;
	}
	elseif ($key->tinggi == "460 - 999") {
		$key->bobot_tinggi = 2;	
	}
	elseif ($key->tinggi == "1000 - 1200") {
		$key->bobot_tinggi = 5;	
	}
	elseif ($key->tinggi == "1201 - 1450") {
		$key->bobot_tinggi = 4;	
	}
	elseif ($key->tinggi == "1451 - 2000") {
		$key->bobot_tinggi = 3;	
	}

	//Pembobotan Tanah
	if ($key->tanah == "Sangat Subur") {
		$key->bobot_tanah = 5;
	}
	elseif ($key->tanah == "Subur") {
		$key->bobot_tanah = 4;	
	}
	elseif ($key->tanah == "Cukup Subur") {
		$key->bobot_tanah = 3;	
	}
	elseif ($key->tanah == "Tidak Subur") {
		$key->bobot_tanah = 2;	
	}
	elseif ($key->tanah == "Tandus") {
		$key->bobot_tanah = 1;	
	}

}

//Normalisasi
foreach ($daftarLahan as $key) {
	$key->normal_ph = ($key->bobot_ph - $min_ph) / $selisih_ph;
	$key->normal_suhu = ($key->bobot_suhu - $min_suhu) / $selisih_suhu;
	$key->normal_air = ($key->bobot_air - $min_air) / $selisih_air;
	$key->normal_tinggi = ($key->bobot_tinggi - $min_tinggi) / $selisih_tinggi;
	$key->normal_tanah = ($key->bobot_tanah - $min_tanah) / $selisih_tanah;
}

//Hitung Nilai Akhir
foreach ($daftarLahan as $key) {
	$key->hasil = ($ph * $key->normal_ph) + ($suhu * $key->normal_suhu) + ($air * $key->normal_air) + ($tinggi * $key->normal_tinggi) +($tanah * $key->normal_tanah);
}

//sorting
function compare_hasil($a, $b)
{
	return ($a->hasil < $b->hasil);
}

usort($daftarLahan, 'compare_hasil');

echo json_encode($daftarLahan);

// $no=0;
// foreach ($daftarLahan as $key) {
// 	echo $no;
// 	echo 'nama= '.$key->nama.' nilai= '.$key->hasil.'<br>';
// 	echo 'bobot_ph= '.$key->bobot_ph.' bobot_suhu= '.$key->bobot_suhu.' bobot_air= '.$key->bobot_air.' bobot_tinggi= '.$key->bobot_tinggi.' bobot_tanah= '.$key->bobot_tanah.'<br>';
// 	echo 'normal_ph= '.$key->normal_ph.' normal_suhu= '.$key->normal_suhu.' normal_air= '.$key->normal_air.' normal_tinggi= '.$key->normal_tinggi.' normal_tanah'.$key->normal_tanah.'<br>';
// 	echo "<br>";
// 	$no++;
// }

?>