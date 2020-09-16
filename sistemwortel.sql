-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2018 at 02:37 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemwortel`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `picture` text,
  `id_penulis` int(11) NOT NULL,
  `saran` enum('PH','Air','Tanah') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `isi`, `picture`, `id_penulis`, `saran`, `created_at`, `updated_at`) VALUES
(5, 'Budidaya Wortel edited 2', '<h2><strong>Persiapan Lahan&nbsp;Budidaya Wortel</strong></h2><p><strong><img alt=\"\" src=\"../storage/wor 1.jpg\" style=\"float:left; height:225px; margin-left:10px; margin-right:10px; width:400px\" /></strong></p><p>Untuk budidaya wortel, lahan yang akan digunakan haruslah subur dan gembur, maka hal pertama yang harus dilakukan dalam persiapan lahan budidaya wortel adalah kita harus membajak&nbsp;tanah terlebih dahulu hingga gembur. Kemudian&nbsp;membuat bedengan-bedengan yang lebarnya bisa mencapai 2 meter dan tingginya kira-kira 15 cm. Selanjutnya di antara bedengan-bedengan tersebut kita buat parit-parit selebar kira-kira 25 cm. Jika tingkat kesuburan dirasa masih kurang untuk budidaya wortel, maka kita bisa berikan pupuk kandang untuk meningkatkan kesuburannya.</p><p>Tanah dengan PH tinggi juga perlu untuk budidaya wortel, sementara kebanyakan dataran tinggi di Indonesia memiliki PH tanah yang cukup rendah. Oleh karena itu kita perlu memberikan kapur pertanian atau dolomit pada tanah agar tingkat keasaman tanah tidak menghambat pertumbuhan umbi tanaman wortel. Jika persiapan lahan sudah selesai, maka tahap selanjutnya adalah teknik penanaman.</p><h2><strong>Penanaman Budidaya&nbsp;Wortel</strong></h2><p>Lahan untuk budidaya wortel yang sudah dibuat Bedengan sesuai pembahasan di atas, selanjutnya sebar&nbsp;benih wortel yang sudah disiapkan tadi secara merata mengikuti alur/garitan yang tersedia. Benih wortel yang baru disebar&nbsp;tersebut kemudian ditutup dengan tanah tipis sedalam 0,5-1 cm. Buat pula garitan dangkal sejauh +/- 5 cm dari tempat benih guna meletakan pupuk dasar. Sebarkan dengan merata pupuk tersebut dan tutup dengan tanah tipis.</p><p>Untuk pencegahan agar benih wortel tidak hanyut terbawa air, tutuplah tiap alur dengan pelepah daun pisang atau dedaunan kering selama 7-10 hari. Penutupan ini juga berfungsi agar kestabilan kelembaban tanah tetap terjaga. Penutup baru bisa dibuka setelah benih wortel menyembul dari permukaan tanah.</p><h2><strong>Pemupukan Budidaya&nbsp;Wortel</strong></h2><p><strong>I. Pemupukan Dasar&nbsp;untuk Budidaya Wortel&nbsp;(pada saat olah lahan/pembuatan bedengan)</strong></p><p>Untuk Pemupukan dasar pada budidaya wortel diharuskan, agar menambah kesuburan pada tanah. Ada 2 cara untuk pemupukan dasar pada budidaya wortel. Bisa dengan menggunakan cara pemupukan dasar budidaya wortel secara organik ataupun pemupukan dasar budidaya wortel&nbsp;secara kimia. Kedua cara sama saja, tetapi lebih bagus organik karena lebih alami. Sahabat Tani Organik bisa memilih salah satunya.</p><ul><li><strong>Cara Organik</strong>&nbsp;: pupuk kandang (ayam/kambing/kuda) + dolomit + tepung ikan + tepung tulang/tepung bulu + disemprot&nbsp;<a href=\"http://www.taniorganik.com/category/order-produk/produk-kami/\">nopatek</a>&nbsp;+&nbsp;<a href=\"http://www.taniorganik.com/category/order-produk/produk-kami/\">poc bmw</a></li><li><strong>Cara Kimia</strong>&nbsp;:&nbsp;pupuk kandang (ayam/kambing/kuda) + dolomit + &nbsp;za + sp36 + kcl + disemprot&nbsp;<a href=\"http://www.taniorganik.com/category/order-produk/produk-kami/\">nopatek</a>&nbsp;+&nbsp;<a href=\"http://www.taniorganik.com/category/order-produk/produk-kami/\">poc bmw</a></li></ul><p><strong>II. Pemupukan Susulan&nbsp;</strong><strong>untuk Budidaya&nbsp;Wortel</strong></p><p>Pemupukan susulan pada budidaya wortel&nbsp;juga dianjurkan sekali untuk menjadikan kualitas wortel yang baik dan optimal. Pemupukan susulan budidaya wortel&nbsp;kita berikan 2 cara juga. Bisa menggunakan pemupukan susulan secara organik ataupun secara kimia. Silahkan dipilih cara pemupukan mana yang sahabat minati.</p><p><strong>CARA ORGANIK</strong></p><ul><li>Pupuk kandang (ayam/kambing/kuda) 1 karung + dolomit 4 kg + tepung ikan 4 kg + tepung tulang/tepung bulu 4 kg +&nbsp;<a href=\"http://www.taniorganik.com/category/order-produk/produk-kami/\">nopatek</a>&nbsp;1 btl +&nbsp;<a href=\"http://www.taniorganik.com/category/order-produk/produk-kami/\">poc bmw</a>&nbsp;1 btl. Semua bahan dimasukkan ke dalam drum 200 ltr, ditambahkan air sampai hampir penuh, diaduk rata. Kemudian drum ditutup rapat, dan diamkan 5 hari. Bahan siap digunakan.</li><li>Cara penggunaan: ambil 1/2 gayung pupuk dari peraman kemudian tambahkan air 1 ember falkon. Diaduk, lalu kocorkan ke tanaman wortel, dosis 100 ml per lubang tanam.</li></ul><p><strong>CARA KIMIA</strong></p><ul><li>Pupuk kandang (ayam/kambing/kuda) 1 karung + dolomit 4 kg + &nbsp;za 4 kg + sp36 2 kg + kcl 3 kg +&nbsp;<a href=\"http://www.taniorganik.com/category/order-produk/produk-kami/\">nopatek</a>&nbsp;1 botol +&nbsp;<a href=\"http://www.taniorganik.com/category/order-produk/produk-kami/\">poc bmw</a>&nbsp;1 btl.&nbsp;Semua bahan dimasukkan ke dalam drum 200 ltr, ditambahkan air sampai hampir penuh, diaduk rata. Kemudian drum ditutup rapat, dan diamkan 5 hari. Bahan siap digunakan.</li><li>Cara penggunaan: ambil 1/2 gayung pupuk dari peraman kemudian tambahkan air 1 ember falkon. Diaduk, lalu kocorkan ke tanaman wortel, dosis 100 ml per lubang tanam.</li></ul><h2><strong>Perawatan&nbsp;Budidaya&nbsp;Wortel</strong></h2><p>Setelah tanaman wortel tumbuh, tahap selanjutnya dalam budidaya wortel adalah melakukan perawatan. Perawatan pertama dalam budidaya wortel adalah penyiraman yang dapat dilakukan sekali atau dua kali sehati apabila&nbsp;udaranya sangat kering. Pemberian air yang lain juga dapat dilakukan dengan jalan menggenangi parit di antara bedengan. Cara ini dapat dilakukan bila terdapat saluran drainase. Kemudian selanjutnya tanaman yang telah tumbuh harus segera diseleksi dengan cara mencabut tanaman yang lemah atau kering, tinggalkan tanaman yang sehat dan kokoh. Tindakan ini sekaligus diikuti dengan penjarangan, ini berguna untuk memberikan jarak dalam alur dan menjaga kecukupan sinar matahari sehingga tanaman wortel tumbuh subur. Penjarangan menghasilkan alur yang rapi berjarak antara 5- 10 cm. Perawatan budidaya wortel selanjutnya adalah pemupukan yang sudah dapat dilakukan sejak tanaman berumur dua minggu. Lakukan pemupukan susulan sesuai pembahasan yang telah kami bahas pada poin pemupukan. Ketika budidaya wortel&nbsp;berumur satu bulan perlu dilakukan penyiangan dan pendangiran gulma. Tujuannya agar budidaya wortel tidak terganggu oleh gulma dan menjaga agar akar tanaman wortel tidak terkena sinar matahari secara langsung.</p><h2><strong>Hama dan Penyakit Pada Budidaya&nbsp;Wortel</strong></h2><p>Hama yang sering ada pada budidaya wortel&nbsp;adalah Ulat tanah (Agrotis ipsilon&nbsp;Hufn.),&nbsp;Kutu daun (Aphid, Aphis spp.),&nbsp;Lalat atau magot (Psila rosae). Hama dalam budidaya wortel tersebut perlu adanya pengendalian berupa insektisida hayati&nbsp;<a href=\"http://www.taniorganik.com/category/order-produk/produk-kami/\">ANTILAT</a>&nbsp;dengan cara semprotkan&nbsp;<a href=\"http://www.taniorganik.com/category/order-produk/produk-kami/\">ANTILAT</a>&nbsp;4 hari sekali, dosis 4 tutup btl per 17 ltr air. Sedangkan Penyakit yang sering menyerang tanaman&nbsp;wortel&nbsp;adalah Bercak daun&nbsp;Cercospora,&nbsp;Nematoda bintil akar,&nbsp;Busuk alternaria. Pengendalian penyakit pada budidaya wortel dapat disemprotkan fungisida hayati&nbsp;<a href=\"http://www.taniorganik.com/category/order-produk/produk-kami/\">NOPATEK</a>&nbsp;4 hari sekali, dosis 4 tutup btl per 17 ltr air. Pengaplikasiannya bisa di gabungkan antara&nbsp;<a href=\"http://www.taniorganik.com/category/order-produk/produk-kami/\">ANTILAT</a>dan&nbsp;<a href=\"http://www.taniorganik.com/category/order-produk/produk-kami/\">NOPATEK</a>.</p><h2><strong>Pemanenan&nbsp;Budidaya&nbsp;Wortel</strong></h2><p>Dalam budidaya wortel sudah dapat dipanen dengan ciri-ciri sebagai berikut:</p><ul><li>Budidaya&nbsp;wortel yang telah berumur &plusmn; 3 bulan sejak benih disebar atau tergantung varietasnya juga. Varietas wortel yang Ideal dapat dipanen&nbsp;pada umur 100 sampai 120 hari setelah tanam.</li><li>Ukuran umbi wortel telah maksimal dan tidak terlalu tua. Panen yang terlalu tua atau terlambat panen ini dapat mengakibatkan&nbsp;umbi wortel menjadi keras dan berkatu, sehingga kualitas wortel menjadi rendah atau tidak laku dipasaran. Demikian juga jika&nbsp;panen terlalu awal, hanya akan menghasilkan umbi wortel berukuran kecil, sehingga produksi wortel menjadi turun.</li></ul><p>Untuk cara panen pada budidaya wortel&nbsp;ini relatif gampang, yaitu dengan mencabut seluruh tanaman bersama umbi-umbinya. Hasil budidaya wortel yang baik dan dipelihara secara intensif dapat menghasilkan umbi antara 20-30 ton/hektar.</p>', '../storage/artikel-5.png', 1, '', '2018-11-25 16:35:16', '2018-12-16 12:53:33'),
(6, 'Hama dan Penyakit Pada Tanaman Wortel', '<h1>Hama dan Penyakit Pada Tanaman Wortel</h1><p>Wortel, seperti tanaman pada umumnya, memiliki berbagai hama serta penyakit yang dapat menyerang kapanpun. Hama dan penyakit ini tentunya akan menjadi penghalang dalam proses budidaya wortel, karenanya petani harus memahami berbagai ancaman hama dan penyakit yang mungkin menyerang tanaman wortel. Berikut merupakan beberapa hama dan penyakit yang dapat menyerang tanaman wortel.</p><p><img alt=\"\" src=\"../storage/budidaya-wortel.jpg\" style=\"float:right; height:250px; margin-left:5px; margin-right:5px; width:400px\" /></p><h2><strong>1. Hama&nbsp; Pada Tanaman Wortel</strong></h2><h3><strong>1.1. Ulat tanah (Agrotis ipsilon Hufn.)</strong></h3><p><span style=\"font-size:14px\">Hama ini sering disebut uler lutung (Jawa) atau hileud taneuh (Sunda) dan &ldquo;Cutworms&rdquo; (Inggris). Serangga dewasa berupa kupu-kupu berwarna coklat tua, bagian sayap depannya bergaris-garis dan terdapat titik putih. Stadium hama yang merugikan tanaman adalah ulat atau larva. Ciri: ulat tanah adalah berwarna coklat sampai hitam, panjangnya antara 4-5 cm dan bersembunyi di dalam tanah. Gejala: ulat tanah menyerang bagian pucuk atau titik tumbuh tanaman wortel yang masih muda. Akibat serangan, tanaman layu atau terkulai, terutama pada bagian tanaman yang dirusak hama. Pengendalian non kimiawi: dilakukan dengan mengumpulkan ulat pada pagi atau siang hari, dari tempat yang dicurigai bekas serangannya untuk segera dibunuh, menjaga kebersihan kebun dan pergiliran tanaman. Pengendalian kimiawi: dengan menggunakan insektisida Furadan 3G atau Indofuran 3G pada saat tanam atau disemprot Hostathion 40 EC dan lain-lain pada konsentrasi yang dianjurkan.</span></p><h3><strong>1.2. Kutu daun (Aphid, Aphis spp.)</strong></h3><p><span style=\"font-size:14px\">Cir i: kutu daun dewasa berwarna hijau sampai hitam, hidup berkelompok di bawah daun atau pada pucuk tanaman. Gejala: menyerang tanaman dengan cara mengisap cairan selnya, sehingga menyebabkan daun keriting atau abnormal. Pengendalian: mengatur waktu tanam secara serempak dalam satu hamparan lahan untuk memutus siklus hidupnya.</span></p><h3><strong>1.3. Lalat atau magot (Psila rosae)</strong></h3><p><span style=\"font-size:14px\">Gejala: stadium hama yang sering merusak tanaman wortel adalah larvanya. Larva masuk ke dalam umbi dengan cara menggerek atau melubanginya. Pengendalian: pergiliran tanaman dengan jenis yang tidak sefamili atau disemprot insektisida Decis 2,5 EC dan lain-lain dengan dosis yang dianjurkan.</span></p><p>&nbsp;</p><h2><strong>2. Penyakit Pada Tanaman Wortel</strong></h2><h3><strong>2.1.&nbsp; Bercak daun Cercospora</strong></h3><p><span style=\"font-size:14px\">Penyebab: cendawan (jamur) Cercospora carotae (Pass.) Solheim. Gejala: pada daun-daun yang sudah tua timbul bercak-bercak berwarna coklat muda atau putih dengan pinggiran berwarna coklat tua sampai hitam. Pengendalian: (1) disinfeksi benih dengan larutan fungisida yang mengandung tembaga klorida satu permil selama 5 menit; (2) pergiliran tanaman dengan jenis lain yang tidak sefamili; (3) pembersihan sisa-sisa tanaman dari sekitar kebun; (4) penyemprotan fungisida yang mangkus dan sangkil seperti Dithane M-45 0,2%.</span></p><h3><strong>2.2.&nbsp; Nematoda bintil akar</strong></h3><p><span style=\"font-size:14px\">Penyebab: mikro organisme nematoda Sista (Heterodera carotae). Gejala: umbi dan akar tanaman wortel menjadi salah bentuk, berbenjol-benjol abnormal. Pengendalian: melakukan pergiliran tanaman dengan jenis lain yang tidak sefamili, pemberaan lahan dan penggunaan nematisida seperti Rugby 10 G atau Rhocap 10 G.</span></p><h3><strong>2.3. Busuk alternaria</strong></h3><p><span style=\"font-size:14px\">Penyebab: cendawan Alternaria dauci Kuhn. Gejala: Pada daun terjadi bercak-bercak kecil, berwarna coklat tua sampi hitam yang dikelilingi oleh jaringan berwarna hijau-kuning (klorotik). Pada umbi ada gejala bercak-bercak tidak beraturan bentuknya, kemudian membusuk berwarna hitam sampai hitam kelam. Pengendalian: sama dengan cara yang dilakukan pada Cercospora.</span></p>', NULL, 1, '', '2018-11-26 13:11:31', '2018-12-16 12:53:18'),
(7, 'Cara Menaikkan PH Tanah Masam', '<h1>Cara Menaikkan PH Tanah Masam</h1><p><img alt=\"\" src=\"../storage/ph-check.jpg\" style=\"float:left; height:199px; margin:2px 10px; width:400px\" /><strong>Apa itu tanah masam</strong>? Secara umum&nbsp;<em><strong>pengertian tanah masam</strong></em>&nbsp;atau&nbsp;<em><strong>definisi tanah masam</strong></em>&nbsp;adalah tanah yang memiliki pH rendah, yaitu pH kurang dari 6,5. Nilai pH menunjukkan jumlah konsentrasi ion hidrogen (H+) didalam tanah. Semakin tinggi kadar ion hidrogen didalam tanah maka semakin rendah nilai pH tanah tersebut dan tanah semakin masam.&nbsp; Di Indonesia umumnya tanah bereaksi masam dengan nilai pH rata-rata 4,0 &ndash; 5,5. Tanah yang bereaksi masam seringkali menjadi penyebab utama menurunnya produktifitas berbagai jenis tanaman. Tanah masam tersebar luas di Indonesia, yaitu pada tanah gambut dan rawa-rawa yang terdapat di berbagai daerah seperti Riau, Sumatera Barat, Sumatera Selatan, Kalimantan Tengah, Kalimantan Selatan, Kalimantan Barat, Papua dan sebagian Pulau Jawa. Pada daerah-daerah tersebut curah hujan sangat tinggi dan banyak terkandung bahan-bahan organik. Kita seringkali menganggap bahwa tanah yang ber pH 6,0 &ndash; 6,5 cukup netral walaupun sebenarnya masih agak asam. Pada rentang pH tersebut masih bisa ditolelir oleh sebagian besar tanaman. Di daerah rawa-rawa sering ditemukan&nbsp; tanh yang sangat masam dengan pH kurang dari 3,0. Tanah tersebut sangat masam karena kandungan asam sulfat yang sangat tinggi.</p><p>&nbsp;</p><h3><strong>A.&nbsp;Karakteristik dan Sifat Tanah Masam</strong></h3><p>Karakteristik tanah masam yang ekstrim menyebabkan pertumbuhan tanaman tidak normal dan merana. Hal ini disebabkan oleh beberapa faktor, seperti keracunan unsur tertentu dan tidak tersedianya beberapa unsur hara. Secara umum karakteristik dan sifat-sifat tanah masam dapat dicirikan sebagai berikut ;</p><ul><li>tanah ber-pH kurang dari 6,5</li><li>kapasitas penyangga basa sangat besar</li><li>daya simpan air sangat tinggi</li><li>daya isap air tinggi</li><li>ada keracunan unsur Al, Mn dan Fe pada tanaman</li><li>kandungan N, P, K, Ca, Mo dan Mg sangat rendah</li><li>pengikatan unsur N dan kegiatan mikroba menurun</li><li>mg dan kapur dapat bertukar rendah</li><li>dapat disertai kekurangan unsur Cu dan S</li></ul><h3><strong>B. Cara Mengatasi dan Menetralkan pH Tanah Masam</strong></h3><p>Pada prinsipnya ada tiga kelompok cara penanganan masalah tanah masam yang berhubungan dengan pengelolaan kesuburan tanah dan pengendalian gulma di tingkat masyarakat, yaitu cara kimia, cara fisik-mekanik dan cara biologi. Masing-masing cara memiliki kelebihan dan kekurangan, sehingga dalam praktek ketiga cara tersebut seringkali diterapkan secara bersama-sama. Cara kimia merupakan salah satu upaya pemecahan masalah kesuburan tanah dengan menggunakan bahan-bahan kimia buatan. Beberapa upaya yang sudah dikenal adalah pengapuran, pemupukan, dan penyemprotan herbisida.</p><h3><span style=\"font-size:14px\"><strong>1.&nbsp;&nbsp; &nbsp;Pengapuran</strong></span></h3><p>Pengapuran merupakan upaya pemberian bahan kapur ke dalam tanah masam dengan tujuan untuk:</p><p><em>a).&nbsp;&nbsp; &nbsp;Menaikkan pH tanah</em></p><p>Nilai pH tanah dinaikkan sampai pada tingkat mana Al tidak bersifat racun lagi bagi tanaman dan unsur hara tersedia dalam kondisi yang seimbang di dalam tanah. Peningkatan pH tanah yang terjadi sebagai akibat dari pemberian kapur, tidak dapat bertahan lama, karena tanah mempunyai sistem penyangga, yang menyebabkan pH akan kembali ke nilai semula setelah beberapa waktu berselang.</p><p><em>b).&nbsp;&nbsp; &nbsp;Meningkatkan KTK (Kapasitas Tukar Kation)</em></p><p>KTK meningkat sebagai akibat dari peningkatan pH tanah. Namun peningkatan KTK ini juga bersifat tidak tetap, karena sistem penyangga pH tanah tersebut di atas.</p><p><em>c).&nbsp;&nbsp; &nbsp;Menetralkan Al yang meracuni tanaman</em></p><p>Karena unsur Ca bersifat tidak mudah bergerak, maka kapur harus dibenamkan sampai mencapai kedalaman lapisan tanah yang mempunyai konsentrasi Al tinggi. Hal ini agak sulit dilakukan di lapangan, karena dibutuhkan tenaga dalam jumlah banyak dan menimbulkan masalah baru yaitu pemadatan tanah. Alternatif lain adalah menambahkan dolomit (Ca, Mg(CO3)2) yang lebih mudah bergerak, sehingga mampu mencapai lapisan tanah bawah dan menetralkan Al. Pemberian kapur seperti ini memerlukan pertimbangan yang seksama mengingat pemberian Ca dan Mg akan mengganggu keseimbangan unsur hara yang lain.</p><p>Tanaman dapat tumbuh baik, jika terdapat nisbah Ca/Mg/K yang tepat di dalam tanah. Penambahan Ca atau Mg seringkali malah mengakibatkan tanaman menunjukkan gejala kekurangan K, walaupun jumlah K sebenarnya sudah cukup di dalam tanah. Masalah ini menjadi semakin sulit dipecahkan, jika pada awalnya sudah terjadi kahat unsur K pada tanah tersebut.</p><p>&nbsp;</p><h3><span style=\"font-size:14px\"><strong>2.&nbsp;&nbsp; &nbsp;Penambahan Unsur Hara / Pemupukan</strong></span></h3><p>Pemupukan merupakan jalan termudah dan tercepat dalam menangani masalah kahat hara, namun bila kurang memperhatikan kaidah-kaidah pemupukan, pupuk yang diberikan juga akan hilang percuma. Pada saat ini sudah diketahui secara luas bahwa tanah-tanah pertanian di Indonesia terutama tanah masam kahat unsur nitrogen (N), fosfor (P) dan kalium (K). Oleh karena itu petani biasanya memberikan pupuk N, P, K secara sendiri-sendiri atau kombinasi dari ketiganya. Pupuk N mudah teroksidasi, sehingga cepat menguap atau tercuci&nbsp; sebelum tanaman menyerap seluruhnya. Pupuk P diperlukan dalam jumlah banyak karena selain untuk memenuhi kebutuhan tanaman juga untuk menutup kompleks pertukaran mineral tanah agar selalu dapat tersedia dalam larutan tanah.Pemupukan K atau unsur hara lain dalam bentuk kation, akan banyak yang hilang kalau diberikan sekaligus, karena tanah masam hanya mempunyai daya ikat kation yang sangat terbatas (nilai KTK tanah-tanah masam umumnya sangat rendah). Unsur hara yang diberikan dalam bentuk kation mudah sekali tercuci.</p><p>Supaya tujuan yang ingin dicapai melalui pemupukan dapat berhasil dengan baik, maka harus diperhatikan hal-hal berikut:</p><p><em>a).&nbsp;&nbsp; &nbsp;Waktu pemberian pupuk</em></p><p>Waktu pemberian pupuk harus diperhitungkan supaya pada saat pupuk diberikan bertepatan dengan saat tanaman membutuhkannya, yang dikenal dengan istilah sinkronisasi. Hal ini dimaksudkan agar tidak banyak unsur hara yang hilang tercuci oleh aliran air, mengingat intensitas dan curah hujan di kawasan ini sangat tinggi. Waktu pemberian pupuk yang tepat bervariasi untuk berbagai jenis pupuk dan jenis tanamannya. Pemupukan N untuk tanaman semusim sebaiknya diberikan paling tidak dua kali, yaitu pada saat tanam dan pada saat pertumbuhan maksimum (sekitar 1-2 bulan setelah tanam). Sementara pupuk P dan K bisa diberikan sekali saja yaitu pada saat tanam.</p><p><em>b).&nbsp;&nbsp; &nbsp;Penempatan pupuk</em></p><p>Penempatan pupuk harus diusahakan berada dalam daerah aktivitas akar, agar pupuk dapat diserap oleh akar tanaman secara efektif. Kesesuaian letak pupuk dengan posisi akar tanaman disebut dengan istilah sinlokalisasi.</p><p><em>c).&nbsp;&nbsp; &nbsp;Dosis pupuk</em></p><p>Jumlah pupuk yang diberikan harus sesuai dengan kebutuhan tanaman, supaya pupuk yang diberikan tidak banyak yang hilang percuma sehingga dapat menekan biaya produksi serta menghindari terjadinya polusi dan keracunan bagi tanaman. Walaupun pemupukan merupakan cara yang mudah dan cepat untuk mengatasi permasalahan kahat (defisiensi) hara, namun terdapat beberapa kelemahan dari cara ini yang harus dipertimbangkan dalam merencanakan program pemupukan.</p><p>Beberapa kelemahan dari pengelolaan tanah secara kimia adalah:</p><ul><li>Pemupukan membutuhkan biaya tinggi karena harga pupuk mahal</li><li>Penggunaan pupuk tidak dapat menyelesaikan masalah kerusakan fisik dan biologi tanah, bahkan cenderung mengasamkan tanah.</li><li>Pemupukan yang tidak tepat dan berlebihan menyebabkan pencemaran lingkungan</li></ul><p>&nbsp;</p><h3><span style=\"font-size:14px\"><strong>3.&nbsp;&nbsp; &nbsp;Penyemprotan Herbisida</strong></span></h3><p>Tumbuhan pengganggu atau gulma yang tumbuh dalam lahan yang ditanami menyebabkan kerugian karena mengambil unsur hara dan air yang seharusnya dapat digunakan oleh tanaman. Oleh karena itu keberadaan dan pertumbuhan gulma harus ditekan. Cara kimia juga dipergunakan untuk menekan pertumbuhan gulma yang banyak ditemukan pada tanah masam seperti alang-alang, yakni dengan memakai herbisida. Pemakaian herbisida harus dilakukan secara tepat baik dalam hal jumlah (dosis), waktu dan penempatannya, demikian pula harus disesuaikan antara macam herbisida dengan gulma yang akan diberantas. Penggunaan herbisida yang berlebihan dapat menyebabkan bahaya keracunan pada si pemakai dan pada produk pertanian yang dihasilkan serta pencemaran lingkungan.</p><p>&nbsp;</p><h3><span style=\"font-size:14px\"><strong>4.&nbsp;&nbsp; &nbsp;Pemberian Mikrorganisme Pengurai</strong></span></h3><p>Terdapatnya bahan organik yang belum terurai juga akan menyumbangkan tingkat keasaman tanah, pristiwa ini sering terlihat pada tanah-tanah sawah yang terlalu cepat pengerjaannya. Pemberian mikroorganisme pengurai akan mempercepat dekomposisi bahan organik dalam tanah sehingga akan membantu ketersediaan dan keseimbangan unsur hara. Selain itu perombakan bahan organik juga akan menyeimbangkan KTK tanah.</p><p>&nbsp;</p><h3><span style=\"font-size:14px\"><strong>5.&nbsp;&nbsp; &nbsp;Pemberian Pupuk Phospat</strong></span></h3><p>Kekahatan P merupakan salah satu kendala utama bagi kesuburan tanah masam. Tanah ini memerlukan P dengan takaran tinggi untuk memperbaiki kesuburantanah dan meningkatkan produktivitas tanaman. Untuk mengatasi kendala kekahatan P umumnya menggunakan pupuk P yang mudah larut seperti TSP, SP-36, SSP, DAP. Pupuk tersebut mudah larut dalam air sehingga sebagian besar P akan segera difiksasi oleh Al dan Fe yang terdapat di dalam tanah dan P menjadi tidak tersedia bagi tanaman. Fosfat alam dengan kandungan Ca setara CaO yang cukup tinggi (&gt;40%) umumnya mempunyai reaktivitas tinggi sehingga sesuai digunakan pada tanah-tanah masam. Sebaliknya, fosfat alam dengan kandungan sesquioksida tinggi (Al2O3 dan Fe2O3) tinggi kurang sesuai digunakan pada tanah-tanah masam.</p>', NULL, 1, 'PH', '2018-12-10 11:42:58', '2018-12-16 10:31:26'),
(8, 'Cara Sederhana Meningkatkan Kesuburan Tanah', '<h1>Cara Sederhana Meningkatkan Kesuburan Tanah</h1><p><img alt=\"\" src=\"../storage/mengenal-pertanian-organik.jpg\" style=\"float:right; height:197px; margin-left:5px; margin-right:5px; width:350px\" /></p><p>Dalam urusan pertanian, kesuburan tanah adalah hal yang sangat penting. Jika media tanam adalah tanah, maka kesuburan merupakan syarat mutlak untuk memperoleh hasil yang baik.&nbsp;Berikut beberapa cara sederhanan menambah kesuburan tanah.</p><ol><li><strong>Tambahkan bahan organik</strong><br />Variasi bahan organik merupakan cara yang paling baik untuk meningkatkan kesuburan tanah. Pupuk kandang mengandung nitrogen yang merupakan kompenen penting bagi kesuburan tanah. Kotoran ternak seperti sapi, kambing atau babi merupakan pilihan yang baik. Berusahalah untuk mendapatkan kotoran ternak dari peternak biasa dan ternak yang sehat. Saat menambahkan bahan organik dalam bentuk mentah seperti kotoran binatang, hindari penambahan pada lahan yang sudah ada tanamannya. Setelah bahan organik ditambahkan ke tanah, tunggulah hingga bahan organik tersebut terurai menjadi tanah.</li><li><strong>Tambahkan kompos</strong><br />Kompos merupakan sumber nitrogen yang cukup baik bagi tanah. Kompos memiliki manfaat tambahan yaitu membantu memecah partikel tanah dan membantu pengairan air. Selain itu, pada tanah lempung berpasir, kompos membuat butiran-butiran tanah menyatu dan mengurangi kelembaban sehingga membuat tanah menjadi lebih subur.<br />Membuat pupuk kompos cukup mudah. Cukup dengan mengumpulkan daun-daunan, sampah dapur, bahkan sobekan-sobekan kertas.</li><li><strong>Model tanam tumpang sari</strong><br />Menanam berbagai macam tanaman pada lokasi yang sama atau tumpang sari merupakan salah satu cara untuk mempertahankan bahkan meningkatkan kesuburan tanah. Metode tumpang sari berguna untuk mencegah erosi tanah dan mengendalikan penyebaran penyakit yang ditularkan melalui tanah. Tanaman kacang polong, kedelai merupakan tanaman-tanaman yang bisa meningkatkan kualitas tanah. Tanamilah juga dengan jenis sayuran berakar dalam. Ini akan menambah nutrisi tanah secara alami.</li><li><strong>Tambahkan mulsa</strong><br />Mulsa berguna untuk menutupi tanah sehingga bisa menahan air, mengendalikan gulma dan mencegah erosi sehingga meningkatkan kesuburan tanah. Mulsa merupakan limbah tanaman misalnya jerami, atau bisa dibeli toko-toko pertanian. Hindari pemakaian mulsa yang terlalu tebal karena berefek terlalu banyak menahan air sehingga kelembaban tidak terkontrol dan menyebabkan penyakit tanaman.</li></ol><p>Ada berbagai macam cara untuk meningkatakan kualitas tanah. Anda bisa bebas memilih mana yang Anda sukai, pada intinya agar produksi pertanian Anda semakin meningkat.</p>', NULL, 1, 'Tanah', '2018-12-10 12:02:53', '2018-12-16 10:31:34'),
(9, 'Konservasi Air Untuk Lahan Pertanian', '<h1>Konservasi Air Untuk Lahan Pertanian</h1><p>&nbsp;</p><p><img alt=\"\" src=\"../storage/Embung_Temanggung.jpg\" style=\"float:left; height:300px; margin:2px 6px; width:400px\" /></p><p>Konservasi air pada prinsipnya adalah penggunaan air yang jatuh ke tanah seefisien mungkin dan pengaturan waktu aliran yang tepat, sehingga tidak terjadi banjir yang merusak pada musim hujan dan terdapat cukup air pada musim kemarau. Konservasi air dapat dilakukan dengan (a) meningkatkan pemanfaatan dua komponen hidrologi, yaitu air permukaan, dan air tanah dan (b) meningkatkan efisiensi pemakaian air irigasi.</p><p>&nbsp;</p><p>Pengelolaan air permukaan (<em>surface water management</em>) meliputi (1) pengendalian aliran permukaan; (2) pemanenan air (<em>water harvesting</em>); (3) meningkatkan kapasitas infiltrasi tanah; (4) pengolahan tanah; (5) penggunaan bahan penyumbat tanah dan penolak air; dan (6) melapisi saluran air. Pengelolaan air bawah permukaan tanah (<em>sub-surface water management</em>) dapat dilakukan dengan (1) perbaikan drainase; (2) pengendalian perkolasi (<em>deep percolation</em>) dan aliran bawah permukaan (<em>sub-surface</em>&nbsp;<em>flow</em>); dan (3) perubahan struktur tanah lapisan bawah. Perbaikan drainase akan meningkatkan efisiensi pemakaian air oleh tanaman, karena hilangnya air yang berlebih (<em>excess water</em>) akan memungkinkan akar tanaman berkembang lebih luas ke lapisan tanah yang lebih dalam daripada hanya terbatas di lapisan atas yang dangkal yang akan cepat kering jika permukaan air tanah menurun.</p><p>&nbsp;</p><p>Teknologi konservasi air dirancang untuk meningkatkan masuknya air ke dalam tanah melalui infiltrasi dan pengisian kantong-kantong air di daerah cekungan serta mengurangi kehilangan air melalui evaporasi. Untuk mencapai kedua hal tersebut upaya-upaya konservasi air yang dapat diterapkan adalah teknik pemanenan air (<em>water harvesting</em>), dan teknologi pengelolaan kelengasan tanah. Penerapan teknologi panen air dimaksudkan untuk mengurangi volume air aliran permukaan dan meningkatkan cadangan air tanah serta ketersediaan air bagi tanaman. Dengan demikian pengelolaan lahan kering tidak semata-mata tergantung kepada air hujan, melainkan dapat dioptimalkan melalui pemanfaatan sumber air permukaan (<em>surface water</em>) maupun air tanah (<em>groundwater</em>).</p>', NULL, 1, 'Air', '2018-12-16 10:26:00', '2018-12-16 12:04:26'),
(10, 'Meningkatkan Unsur Hara Tanah', '<h1>Meningkatkan Unsur Hara Tanah</h1><p>&nbsp;</p><p>Ini artikel abaru</p>', NULL, 1, 'Tanah', '2018-12-17 05:03:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `created_at`) VALUES
(1, 'admin', 'admin', 'admin1', '2018-11-25 09:01:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
