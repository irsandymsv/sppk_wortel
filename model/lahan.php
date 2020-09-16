<?php 
/**
 * 
 */
class lahan 
{
	public $nama;
	public $ph;
	public $suhu;
	public $air;
	public $tinggi;
	public $tanah;

	public $bobot_ph;
	public $bobot_suhu;
	public $bobot_air;
	public $bobot_tinggi;
	public $bobot_tanah;

	public $normal_ph;
	public $normal_suhu;
	public $normal_air;
	public $normal_tinggi;
	public $normal_tanah;

	public $hasil;

	public $ph_kurang = "PH lahan ini masih terlalu rendah untuk ditanami wortel. Dibutuhkan pengelolaan lahan lebih lanjut untuk meningkatkan PH tanah sehingga wortel dapat tumbuh dengan optimal";

	public $air_kurang = "Sumber air yang rendah dapat menyebabkan masalah dalam penanaman wortel, karenanya dibutuhkan pengelolaan lahan untuk meningkatkan pengairan di lahan ini";

	public $tanah_kurang= "Tanah yang kurang subur memerlukan pengelolaan lahan untuk meningkatkan unsur hara, sehingga wortel dapat ditanama di lahan ini";



	function __construct($nama, $ph, $suhu, $air, $tinggi, $tanah)
	{
		$this->nama = $nama;
		$this->ph = $ph;
		$this->suhu = $suhu;
		$this->air = $air;
		$this->tinggi = $tinggi;
		$this->tanah = $tanah;

	}
}
?>