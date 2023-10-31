-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2023 at 02:35 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stunting`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posted` char(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `title`, `published_at`, `content`, `img`, `posted`, `created_at`, `updated_at`) VALUES
(1, 2, 'Apa_Itu_Stunting…', '2023-09-09 00:50:15', '<div>Sahabat sehat, definisi <em>stunting</em> sendiri mengalami perubahan. Menurut WHO (2015), <em>stunting </em>adalah gangguan pertumbuhan dan perkembangan anak akibat kekurangan gizi kronis dan infeksi berulang, yang ditandai dengan panjang atau tinggi badannya berada di bawah standar. Selanjutnya menurut WHO (2020) <em>stunting </em>adalah pendek atau sangat pendek berdasarkan panjang / tinggi badan menurut usia yang kurang dari -2 standar deviasi (SD) pada kurva pertumbuhan WHO yang terjadi dikarenakan kondisi irreversibel akibat asupan nutrisi yang tidak adekuat dan/atau infeksi berulang / kronis yang terjadi dalam 1000 HPK.<br><br></div><div><strong>Apakah semua balita pendek itu pasti </strong><strong><em>stunting</em></strong><strong>?</strong></div><div>Perlu diketahui bahwa tidak semua balita pendek itu <em>stunting</em>, sehingga perlu dibedakan oleh dokter anak, tetapi anak yang <em>stunting</em> pasti pendek.<br><br></div><div><strong>Dampak masalah </strong><strong><em>stunting</em></strong><strong> di Indonesia :</strong></div><div><strong>1.&nbsp; &nbsp; &nbsp; Dampak kesehatan :&nbsp;</strong></div><div>a.&nbsp; &nbsp; &nbsp; Gagal tumbuh (berat lahir rendah, kecil, pendek, kurus), hambatan perkembangan kognitif dan motoric.</div><div>b.&nbsp; &nbsp; &nbsp; Gangguan metabolik pada saat dewasa → risiko penyakit tidak menular (diabetes, obesitas, <em>stroke</em>, penyakit jantung, dan lain sebagainya).<br><br></div><div><strong>2.&nbsp; &nbsp; &nbsp; Dampak ekonomi :</strong></div><div>Berpotensi menimbulkan kerugian setiap tahunnya : 2-3 % GDP.<br><br></div><div><strong>Penyebab </strong><strong><em>Stunting</em></strong></div><div>Ada beberapa faktor yang mendasari terjadinya stunting, antara lain yaitu :<br><br></div><div><strong>1.&nbsp; &nbsp; &nbsp; Asupan kalori yang tidak adekuat.</strong></div><div>a.&nbsp; &nbsp; &nbsp; Faktor sosio-ekonomi (kemiskinan).</div><div>b.&nbsp; &nbsp; &nbsp; Pendidikan dan pengetahuan yang rendah mengenai praktik pemberian makan untuk bayi dan batita (kecukupan ASI).</div><div>c.&nbsp; &nbsp; &nbsp; Peranan protein hewani dalam MPASI.</div><div>d.&nbsp; &nbsp; &nbsp; Penelantaran</div><div>e.&nbsp; &nbsp; &nbsp; Pengaruh budaya</div><div>f.&nbsp; &nbsp; &nbsp; &nbsp;Ketersediaan bahan makanan setempat.<br><br></div><div><strong>2.&nbsp; &nbsp; &nbsp; Kebutuhan yang meningkat.</strong></div><div>a.&nbsp; &nbsp; &nbsp; Penyakit jantung bawaan.</div><div>b.&nbsp; &nbsp; &nbsp; Alergi susu sapi.</div><div>c.&nbsp; &nbsp; &nbsp; Bayi berat badan lahir sangat rendah.</div><div>d.&nbsp; &nbsp; &nbsp; Kelainan metabolisme bawaan.</div><div>e.&nbsp; &nbsp; &nbsp; Infeksi kronik yang disebabkan kebersihan personal dan lingkungan yang buruk (diare kronis) dan penyakit-penyakit yang dapat dicegah oleh imunisasi (Tuberculosis / TBC, difteri, pertussis, dan campak).<br><br></div><div><strong>Apakah </strong><strong><em>stunting</em></strong><strong> bisa dicegah?</strong></div><div>Tentu <em>stunting</em> dapat dicegah. Berikut beberapa tips mencegah <em>stunting</em> :</div><div><strong>1.&nbsp; &nbsp; &nbsp; Saat Remaja Putri</strong></div><div>Skrining anemia dan konsumsi tablet tambah darah.</div><div><strong>2.&nbsp; &nbsp; &nbsp; Saat Masa Kehamilan</strong></div><div>Disarankan untuk rutin memeriksakan kondisi kehamilan ke dokter. Perlu juga memenuhi asupan nutrisi yang baik selama kehamilan. Dengan makanan sehat dan juga asupan mineral seperti zat besi, asam folat, dan yodium harus tercukupi.</div><div><strong>3.&nbsp; &nbsp; &nbsp; Balita</strong></div><div>a.&nbsp; &nbsp; &nbsp; Terapkan Inisiasi Menyusui Dini (IMD).</div><div>Sesaat setelah bayi lahir, segera lakukan IMD agar berhasil menjalankan ASI Eksklusif. Setelah itu, lakukan pemeriksaan ke dokter atau ke Posyandu dan Puskesmas secara berkala untuk memantau pertumbuhan dan perkembangan anak.</div><div>b.&nbsp; &nbsp; &nbsp; Imunisasi</div><div>Perhatikan jadwal imunisasi rutin yang diterapkan oleh Pemerintah agar anak terlindungi dari berbagai macam penyakit.</div><div>c.&nbsp; &nbsp; &nbsp; ASI Eksklusif</div><div>Berikan ASI eksklusif sampai anak berusia 6 (enam) bulan dan diteruskan dengan MPASI yang sehat dan bergizi.</div><div>d.&nbsp; &nbsp; &nbsp; Pemantauan tumbuh kembang à <em>weight faltering.</em></div><div><strong>4.&nbsp; &nbsp; &nbsp; Gaya Hidup Bersih dan Sehat</strong></div><div>Terapkan gaya hidup bersih dan sehat, seperti mencuci tangan sebelum makan, memastikan air yang diminum merupakan air bersih, buang air besar di jamban, sanitasi sehat, dan lain sebagainya.<br><br></div><div><strong>Bagaimana alurnya jika menemukan kasus masalah gizi supaya dapat mencegah </strong><strong><em>stunting</em></strong><strong>?</strong></div><div>1.&nbsp; &nbsp; &nbsp; &nbsp;Surveilans gizi dan penemuan dan penangan kasus (Posyandu à Puskesmas).</div><div>2.&nbsp; &nbsp; &nbsp; &nbsp;Pelayanan sekunder atau tersier, memiliki Sp.A atau Sp.AK (gizi, tumbuh kembang). Memiliki sarana dan prasarana : klinik khusus tumbuh kembang.<br><br></div><div><strong>Referensi :<br></strong><br></div><div>Pusat Data dan Informasi, Kementerian Kesehatan RI. 2018. <em>Situasi Balita Pendek (Stunting) di Indonesia</em>. Buletin Jendela. ISSN 2088 - 270 X.</div><div>Atikah Rahayu, SKM, MPH; Fahrini Yulidasari, SKM, MPH; Andini Octaviana Putri, SKM, M.Kes; dan Lia Anggraini, SKM. 2018. <em>Study Guide Stunting dan Upaya Pencegahannya</em>. CV Mine Yogyakarta.</div><div><em>World Health Organization </em>(WHO)<em>. www.who.int.<br></em><br></div>', 'img_article/RBKI3QRRfajUht1B9kzKUF4DnM0yzM1ZhGqQksM4.jpg', '1', '2023-09-02 01:18:44', '2023-09-10 00:01:31'),
(4, 3, 'Mengenal_Stunting,_Penyebab_Hingga_Cara_Pencegahannya', '2023-10-30 13:55:47', '<div><strong><em>Stunting </em></strong><strong>adalah</strong> masalah gizi kronis akibat kurangnya asupan gizi dalam jangka waktu panjang sehingga mengakibatkan terganggunya pertumbuhan pada anak. <em>Stunting </em>juga menjadi salah satu penyebab tinggi badan anak terhambat, sehingga lebih rendah dibandingkan anak-anak seusianya. Tidak jarang masyarakat menganggap kondisi tubuh pendek merupakan faktor genetika dan tidak ada kaitannya dengan masalah kesehatan. Faktanya, faktor genetika memiliki pengaruh kecil terhadap kondisi kesehatan seseorang dibandingkan dengan faktor lingkungan dan pelayanan kesehatan. Biasanya, <em>stunting </em>mulai terjadi saat anak masih berada dalam kandungan dan terlihat saat mereka memasuki usia dua tahun. <em>Stunting </em>memiliki gejala-gejala yang bisa Anda kenali, misalnya:</div><div><br></div><div>Pihak Kementrian Kesehatan menegaskan bahwa stunting merupakan ancaman utama terhadap kualitas masyarakat Indonesia. Bukan hanya mengganggu pertumbuhan fisik, anak-anak juga mengalami gangguan perkembangan otak yang akan memengaruhi kemampuan dan prestasi mereka. Selain itu, anak yang menderita <em>stunting </em>akan memiliki riwayat kesehatan buruk karena daya tahan tubuh yang juga buruk. <em>Stunting </em>juga bisa menurun ke generasi berikutnya bila tidak ditangani dengan serius.<br><br></div><div>Faktor-faktor yang Menyebabkan Stunting<br><br></div><div>Mengingat <em>stunting </em>adalah salah satu masalah kesehatan yang cukup membahayakan, memahami faktor penyebab <em>stunting </em>sangat penting untuk dilakukan. Dengan begitu, Anda bisa melakukan langkah-langkah preventif untuk menghindarinya. Berikut ini beberapa faktor <strong>penyebab </strong><strong><em>stunting</em></strong><em> </em>yang perlu Anda ketahui:<br><br></div><div><em>Stunting </em>adalah masalah gizi kronis akibat kurangnya asupan gizi dalam jangka waktu panjang sehingga mengakibatkan terganggunya pertumbuhan pada anak. <em>Stunting </em>juga menjadi salah satu penyebab tinggi badan anak terhambat, sehingga lebih rendah dibandingkan anak-anak seusianya. Tidak jarang masyarakat menganggap kondisi tubuh pendek merupakan faktor genetika dan tidak ada kaitannya dengan masalah kesehatan. Faktanya, faktor genetika memiliki pengaruh kecil terhadap kondisi kesehatan seseorang dibandingkan dengan faktor lingkungan dan pelayanan kesehatan. Biasanya, <em>stunting </em>mulai terjadi saat anak masih berada dalam kandungan dan terlihat saat mereka memasuki usia dua tahun. <em>Stunting </em>memiliki gejala-gejala yang bisa Anda kenali, misalnya:<br><br></div><ol><li>Wajah tampak lebih muda dari anak seusianya</li><li>Pertumbuhan tubuh dan gigi yang terlambat</li><li>Memiliki kemampuan fokus dan memori belajar yang buruk</li><li>Pubertas yang lambat</li><li>Saat menginjak usia 8-10 tahun, anak cenderung lebih pendiam dan tidak banyak melakukan kontak mata dengan orang sekitarnya</li><li>Berat badan lebih ringan untuk anak seusianya</li></ol><div>Pihak Kementrian Kesehatan menegaskan bahwa stunting merupakan ancaman utama terhadap kualitas masyarakat Indonesia. Bukan hanya mengganggu pertumbuhan fisik, anak-anak juga mengalami gangguan perkembangan otak yang akan memengaruhi kemampuan dan prestasi mereka. Selain itu, anak yang menderita <em>stunting </em>akan memiliki riwayat kesehatan buruk karena daya tahan tubuh yang juga buruk. <em>Stunting </em>juga bisa menurun ke generasi berikutnya bila tidak ditangani dengan serius.<br><br></div><div><strong>1. Kurang Gizi dalam Waktu Lama<br></strong>Tanpa disadari, penyebab <em>stunting </em>pada dasarnya sudah bisa terjadi sejak anak berada di dalam kandungan. Sebab, sejak di dalam kandungan, anak bisa jadi mengalami masalah kurang gizi. Penyebabnya, adalah karena sang ibu tidak memiliki akses terhadap makanan sehat dan bergizi seperti makanan berprotein tinggi, sehingga menyebabkan buah hatinya turut kekurangan nutrisi. Selain itu, rendahnya asupan vitamin dan mineral yang dikonsumsi ibu juga bisa ikut memengaruhi kondisi malnutrisi janin. Kekurangan gizi sejak dalam kandungan inilah yang juga bisa menjadi penyebab terbesar kondisi <em>stunting </em>pada anak.<br><br></div><div><strong>2. Pola Asuh Kurang Efektif<br></strong>Pola asuh yang kurang efektif juga menjadi salah satu penyebab <em>stunting </em>pada anak. Pola asuh di sini berkaitan dengan perilaku dan praktik pemberian makanan kepada anak. Bila orang tua tidak memberikan asupan gizi yang baik, maka anak bisa mengalami <em>stunting</em>. Selain itu, faktor ibu yang masa remaja dan kehamilannya kurang nutrisi serta masa laktasi yang kurang baik juga dapat memengaruhi pertumbuhan dan otak anak.<br><br></div><div><strong>3. Pola Makan<br></strong>Rendahnya akses terhadap makanan dengan nilai gizi tinggi serta menu makanan yang tidak seimbang dapat memengaruhi pertumbuhan anak dan meningkatkan risiko <em>stunting</em>. Hal ini dikarenakan ibu kurang mengerti tentang konsep gizi sebelum, saat, dan setelah melahirkan.<br><br></div><div><strong>4. Tidak Melakukan Perawatan Pasca Melahirkan<br></strong>Setelah bayi lahir, sebaiknya ibu dan bayi menerima perawatan pasca melahirkan. Sangat dianjurkan juga bagi bayi untuk langsung menerima asupan ASI agar dapat memperkuat sistem imunitasnya. Perawatan pasca melahirkan dianggap perlu untuk mendeteksi gangguan yang mungkin dialami ibu dan anak pasca persalinan.<br><br></div><div><strong>5. Gangguan Mental dan Hipertensi Pada Ibu<br></strong>Pola asuh yang kurang efektif juga menjadi salah satu penyebab stunting pada anak. Pola asuh di sini berkaitan dengan perilaku dan praktik pemberian makanan kepada anak. Bila orang tua tidak memberikan asupan gizi yang baik, maka anak bisa mengalami stunting. Selain itu, faktor ibu yang masa remaja dan kehamilannya kurang nutrisi serta masa laktasi yang kurang baik juga dapat memengaruhi pertumbuhan dan otak anak.<br><br></div><div><strong>6. Sakit Infeksi yang Berulang<br></strong>Sakit infeksi yang berulang pada anak disebabkan oleh sistem imunitas tubuh yang tidak bekerja secara maksimal. Saat imunitas tubuh anak tidak berfungsi baik, maka risiko terkena berbagai jenis gangguan kesehatan, termasuk <em>stunting</em>, menjadi lebih tinggi. Karena <em>stunting </em>adalah penyakit yang rentan menyerang anak, ada baiknya Anda selalu memastikan imunitas buah hati terjaga sehingga terhindar dari infeksi.<br><br></div><div><strong>7. Faktor Sanitasi<br></strong>Sanitasi yang buruk serta keterbatasan akses pada air bersih akan mempertinggi risiko <em>stunting </em>pada anak. Bila anak tumbuh di lingkungan dengan sanitasi dan kondisi air yang tidak layak, hal ini dapat memengaruhi pertumbuhannya. Rendahnya akses terhadap pelayanan kesehatan juga merupakan salah satu faktor penyebab <em>stunting</em>.<br><br></div><div>Bagaimana Cara Mencegah Stunting?<br><br></div><div>Menyadari bahwa <em>stunting </em>adalah masalah kesehatan yang berisiko tinggi dan dapat memengaruhi pertumbuhan anak hingga dewasa, Anda tentu perlu mengenal berbagai usaha pencegahannya. Simak beberapa tindakan preventif yang dapat dilakukan untuk mencegah <em>stunting</em>. Tindakan pencegahan ini sebaiknya dilakukan sebelum, saat, dan sesudah masa kehamilan.<br><br></div><div><strong>1. Pahami Konsep Gizi<br></strong>Pastikan Anda mendapatkan asupan gizi yang cukup setiap hari, terlebih saat masa kehamilan. Pahami konsep gizi dengan baik dan terapkan dalam pola asuh anak.<br><br></div><div><strong>2. Pilihan Menu Beragam<br></strong>Upayakan untuk selalu memberi menu makanan yang beragam untuk anak. Jangan lupakan faktor gizi dan nutrisi yang dibutuhkan mereka setiap harinya. Saat masa kehamilan dan setelahnya, ibu pun perlu mendapatkan gizi yang baik dan seimbang agar dapat menghindari masalah <em>stunting</em>.<br><br></div><div><strong>3. Pemeriksaan Rutin<br></strong>Selama masa kehamilan, ibu perlu melakukan <em>check up </em>atau pemeriksaan rutin untuk memastikan berat badan sesuai dengan usia kehamilan. Ibu hamil juga tidak boleh mengalami anemia atau kekurangan darah karena akan memengaruhi janin dalam kandungan. Kontrol tekanan darah ini bisa dilakukan saat <em>check up </em>rutin.<br><br></div><div><strong>4. Pentingnya ASI<br></strong>Air susu ibu (ASI) mengandung banyak gizi baik yang dapat menunjang pertumbuhan anak. Dalam ASI, terdapat zat yang dapat membangun sistem imun anak sehingga menjauhkan mereka dari berbagai masalah kesehatan, salah satunya adalah <em>stunting</em>.<br><br></div><div><strong>5. Konsumsi Asam Folat<br></strong>Asam folat berperan penting untuk mendukung perkembangan otak dan sumsum tulang belakang bayi. Zat ini juga dapat mengurangi risiko gangguan kehamilan hingga 72%. Dengan asupan asam folat, kegagalan perkembangan organ bayi selama masa kehamilan juga bisa dicegah.<br><br></div><div><strong>6. Tingkatkan Kebersihan<br></strong>Sakit infeksi yang berulang pada anak disebabkan oleh sistem imunitas tubuh yang tidak bekerja secara maksimal. Saat imunitas tubuh anak tidak berfungsi baik, maka risiko terkena berbagai jenis gangguan kesehatan, termasuk <em>stunting</em>, menjadi lebih tinggi. Karena <em>stunting </em>adalah penyakit yang rentan menyerang anak, ada baiknya Anda selalu memastikan imunitas buah hati terjaga sehingga terhindar dari infeksi.<br><br></div><div><strong>7. Faktor Sanitasi<br></strong>Faktor sanitasi dan akses air bersih menjadi salah satu fokus yang bisa Anda lakukan untuk mencegah <em>stunting </em>pada anak. Jagalah kebersihan diri dan lingkungan agar tidak ada bakteri, jamur, kuman, dan virus yang mengontaminasi tubuh Anda dan si kecil. Anda juga disarankan selalu memperhatikan kebersihan tubuh maupun tangan. Sebab, apabila tangan kotor, bukan tidak mungkin kuman menjangkiti makanan yang masuk ke dalam tubuh sehingga menyebabkan masalah kurang gizi. Dalam waktu lama, masalah kurang gizi yang berkepanjangan tersebut dapat menyebabkan <em>stunting.<br><br></em><br></div><div>Sumber :<br>&nbsp;<a href=\"https://hellosehat.com/parenting/kesehatan-anak/tanda-anak-stunting-adalah/\">hellosehat.com/parenting/kesehatan-anak/tanda-anak-stunting-adalah/<br></a><br></div>', 'img_article/Ysk5iHXlESv6YdIuRNN1NJ2u1khsQdvIgLmpkpZ8.jpg', '1', '2023-09-09 11:00:17', '2023-10-30 13:55:47'),
(5, 3, 'Cara_Mencegah_Stunting_agar_Anak_Tumbuh_Tinggi_dan_Sehat', '2023-09-09 11:05:02', '<div>Stunting adalah gangguan yang terjadi pada anak-anak dan berpengaruh terhadap pertumbuhan mereka. Sebagian dari Anda mungkin masih cukup asing dengan istilah ini, namun kasus stunting cukup umum terjadi di Indonesia.<br><br></div><div>Stunting adalah salah satu jenis <a href=\"https://www.siloamhospitals.com/informasi-siloam/artikel/ragam-masalah-kesehatan-anak-akibat-gizi-buruk\"><strong>masalah kesehatan anak akibat gizi buruk</strong></a>, terutama bila berlangsung dalam jangka panjang. Kondisi ini bisa jadi disebabkan oleh malnutrisi pada ibu hamil atau semasa anak dalam masa pertumbuhan.<br><br></div><div>Ciri-ciri paling umum yang terlihat ketika anak mengalami stunting adalah berperawakan lebih pendek dibandingkan anak seusianya. Tetapi, pada dasarnya postur tubuh anak dipengaruhi oleh banyak faktor. Agar lebih jelas, simak pembahasan di bawah ini sampai tuntas.<br><br></div><div><strong>Apa itu Stunting?</strong></div><div>Stunting adalah kondisi yang ditandai dengan kurangnya tinggi badan anak apabila dibandingkan dengan anak-anak seusianya. Sederhananya, stunting merupakan sebutan bagi gangguan pertumbuhan pada anak.</div><div>Penyebab utama dari stunting adalah kurangnya asupan nutrisi selama masa pertumbuhan anak. Banyak yang tidak menyadari bahwa tinggi pendeknya anak bisa menjadi tanda adanya masalah gizi kronis.</div><div>Perlu diingat bahwa anak pendek belum tentu mengalami stunting. Namun anak yang mengidap stunting pasti berperawakan pendek. Anak dengan asupan gizi terbatas sejak kecil dan telah berlangsung lama berisiko mengalami pertumbuhan yang terhambat.</div><div>Menurut WHO, suatu negara dikatakan memiliki masalah stunting bila kasusnya mencapai angka di atas 20%. Sementara, di Indonesia, berdasarkan data Kemenkes pada tahun 2021, kasus balita stunting di Indonesia sebanyak 24,4% sehingga termasuk dalam masalah yang perlu ditangani.<br><br></div>', 'img_article/TnngzZCs2GWtdxvdOkzZLFP1wdkYS9AzZO4bUwJp.png', '1', '2023-09-09 11:02:43', '2023-09-09 11:05:02'),
(6, 3, 'Stunting,_Apa,_Penyebab_Dan_Upaya_Penanganannya', '2023-09-09 11:05:09', '<div><em>Stunting</em> jika dikutip dari Peraturan Presiden Republik Indonesia&nbsp; Nomor 72 Tahun 2021 adalah gangguan pertumbuhan dan perkembangan anak akibat kekurangan gizi kronis dan infeksi berulang, yang ditandai dengan panjang atau tinggi badannya di bawah standar yang ditetapkan oleh menteri yang menyelenggarakan urusan pemerintahan di bidang kesehatan. Sedangkan pengertian<em> stunting</em> menurut Kementerian Kesehatan (Kemenkes) adalah anak balita dengan nilai z-scorenya kurang dari -2.00 SD/standar deviasi (<em>stunted</em>) dan kurang dari -3.00 SD (<em>severely</em> <em>stunted</em>). Jadi dapat disimpulkan bahwa <em>stunting</em> merupakan gangguan pertumbuhan yang dialami oleh balita yang mengakibatkan keterlambatan pertumbuhan anak yang tidak sesuai dengan standarnya sehingga mengakibatkan dampak baik jangka pendek maupun jangka panjang.<br><br></div><div>Arahan presiden Republik Indonesia terhadap percepatan penurunan <em>stunting</em> di Indonesia telah tertuang dalam Peraturan Presiden Nomor 72 Tahun 2021 tentang Percepatan Penurunan <em>Stunting</em>. Hal ini menjadi fokus utama Presiden, karena semakin banyak kasus <em>stunting</em> yang terjadi di Indonesia. Penyebab <em>stunting</em> adalah kurangnya asupan gizi yang diperoleh oleh balita sejak awal masa emas kehidupan pertama, dimulai dari dalam kandungan (9 bulan 10 hari) sampai dengan usia dua tahun. <em>Stunting</em> akan terlihat pada anak saat menginjak usia dua tahun, yang mana tinggi rata-rata anak kurang dari anak seusianya.<br><br></div><div>Penyebab utama <em>stunting</em> diantaranya, asupan gizi dan nutrisi yang kurang mencukupi kebutuhan anak, pola asuh yang salah akibat kurangnya pengetahuan dan edukasi bagi ibu hamil dan ibu menyusui, buruknya sanitasi lingkungan tempat tinggal seperti kurangnya sarana air bersih dan tidak tersedianya sarana MCK yang memadai serta keterbatasan akses fasilitas kesehatan yang dibutuhkan bagi ibu hami, ibu menyusui dan balita.<br><br></div><div>Dampak <em>stunting</em> pada anak akan terlihat pada jangka pendek dan jangka panjang. Pada jangka pendek berdampak terhadap pertumbuhan fisik yaitu tinggi anak di bawah rata-rata anak seusianya. Selain itu, juga berdampak pada perkembangan kognitif dikarenakan terganggunya perkembangan otak sehingga dapat menurunkan kecerdasan anak. Sedangkan untuk jangka panjang, <em>stunting</em> akan menyebakan anak menjadi rentan terjangkit&nbsp; penyakit seperti penyakit diabetes, obesitas, penyakit jantung, pembuluh darah, kanker, <em>stroke</em>, dan disabilitas di usia tua. Selain itu, dampak jangka panjang bagi anak yang menderita <em>stunting</em> adalah berkaitan dengan kualitas SDM suatu negara. Anak-anak merupakan generasi penerus bangsa. Jika <em>stunting</em> tidak segera diatasi hal ini tentunya akan menyebabkan penurunan kualitas SDM di masa yang akan datang.<br><br></div><div>Sesuai dengan arahan Presiden Republik Indonesia, upaya penurunan <em>stunting</em> tidak hanya dilakukan oleh Kementerian Kesehatan saja, tetapi diharapkan bisa dilakukan oleh semua pihak, baik itu pemerintah desa, pemerintah daerah maupun pemerintah pusat. Dengan adanya sinergi dan kerja sama di berbagai sektor pemerintahan diharapkan bisa menurunkan angka <em>stunting</em> di Indonesia.<br><br></div><div>Dalam rangka menurunkan <em>stunting</em> di Indonesia pemerintah telah menetapkan Strategi Nasional Percepatan penurunan <em>stunting</em> dalam waktu lima tahun ke depan. Upaya yang dapat dilakukan untuk mencegah <em>stunting</em> diantaranya adalah sebagai berikut:<br><br></div><ol><li>memperhatikan asupan gizi dan nutrisi bagi ibu hamil dan ibu menyusui, hal ini bisa juga dilakukan dengan memperhatikan pola makan dengan mengomsumsi jenis makanan beragam dan seimbang;</li><li>melakukan pemeriksaan kesehatan secara rutin bagi ibu hamil, bayi dan balita;</li><li>mengatasi permasalahan anak yang susah makan dengan cara memberikan variasi makanan kepada anak:</li><li>menjaga sanitasi lingkungan tempat tinggal yang baik bagi keluarga;</li><li>memberikan edukasi dan penyuluhan bagi ibu hamil dan menyusui terkait <em>stunting</em>, pola asuh yang baik untuk mencegah <em>stunting</em> serta mendorong para ibu untuk senantiasa mencari informasi terkait asupan gizi dan nutrisi yang baik bagi tumbuh kembang anak;</li><li>melakukan vaksinasi lengkap semenjak bayi lahir sesuai dengan anjuran dan himbauan IDAI.</li></ol><div>Sedangkan upaya yang dilakukan untuk pengobatan <em>stunting </em>jika anak sudah didiagnosa menderita <em>stunting </em>adalah sebagai berikut:<br><br></div><ol><li>melakukan terapi awal seperti memberikan asupan makanan yang bernutrisi dan bergizi;</li><li>memberikan suplemen tambahan berupa vitamin A, Zinc, zat besi, kalsium dan yodium;</li><li>memberikan edukasi dan pemahaman kepada keluarga untuk menerapkan pola hidup bersih dengan menjaga sanitasi dan kebersihan lingkungan tempat tinggal.</li></ol><div>Sesuai dengan amanat Presiden Republik Indonesia mengenai percepatan penurunan <em>stunting</em> demi mewujudkan Indonesia Emas 2045, Kementerian Keuangan telah menyiapkan anggaran untuk menangani <em>stunting </em>yang terdiri atas anggaran untuk Kementerian/Lembaga di pemerintah pusat, Dana Alokasi Khusus (DAK) Fisik dan Dana Alokasi Khusus (DAK) Non Fisik. Dengan anggaran yang tersedia untuk menangani <em>stunting</em> tersebut diharapkan kasus <em>stunting </em>di Indonesia menurun, dengan target 14% di tahun 2024.</div>', 'img_article/RRqTxcUBtTCkOQ0kZfU2BsNHNaoSSCrGjwpJ8NQX.jpg', '1', '2023-09-09 11:04:51', '2023-10-28 11:14:02');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hasil_zscore`
--

CREATE TABLE `hasil_zscore` (
  `id_hasil` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `id_anak` varchar(30) NOT NULL,
  `umur` int(2) NOT NULL,
  `tanggal` date NOT NULL,
  `bb` double NOT NULL,
  `tb` double NOT NULL,
  `imt` double NOT NULL,
  `z_bbpu` double NOT NULL,
  `bbpu` tinytext NOT NULL,
  `z_tbpu` double NOT NULL,
  `tbpu` tinytext NOT NULL,
  `z_bbptb` double NOT NULL,
  `bbptb` tinytext NOT NULL,
  `z_imtpu` double NOT NULL,
  `imtpu` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_zscore`
--

INSERT INTO `hasil_zscore` (`id_hasil`, `id`, `id_anak`, `umur`, `tanggal`, `bb`, `tb`, `imt`, `z_bbpu`, `bbpu`, `z_tbpu`, `tbpu`, `z_bbptb`, `bbptb`, `z_imtpu`, `imtpu`) VALUES
(8, 3, 'L20230910002', 0, '2023-09-29', 3, 50, 12, -0.75, 'Berat Badan Normal', 0.053, 'Normal', -1, 'Gizi Baik / Normal', -1.167, 'Gizi Baik / Normal'),
(9, 3, 'L20230929003', 4, '2023-09-29', 5, 60, 13.889, -2.5, 'Berat Badan Kurang', -1.857, 'Normal', -2, 'Gizi Baik / Normal', -2.365, 'Gizi Kurang'),
(10, 3, 'L20230929004', 24, '2023-09-29', 9, 90, 11.111, -2.286, 'Berat Badan Kurang', 0.935, 'Normal', -3.9, 'Gizi Buruk', -4.074, 'Gizi Buruk'),
(11, 3, 'L20230929004', 24, '2023-09-29', 12, 90, 14.815, -0.143, 'Berat Badan Normal', 0.935, 'Normal', -0.9, 'Gizi Baik / Normal', -0.988, 'Gizi Baik / Normal'),
(12, 3, 'L20230910002', 0, '2023-10-02', 4, 60, 11.111, 1.167, 'Risiko Berat Badan Lebih', 5.316, 'Tinggi', -4, 'Gizi Buruk', -1.908, 'Gizi Baik / Normal'),
(13, 3, 'L20230929004', 24, '2023-10-02', 10, 100, 10, -1.571, 'Berat Badan Normal', 4.161, 'Tinggi', -4.5, 'Gizi Buruk', -5, 'Gizi Buruk'),
(14, 4, 'L20231030005', 0, '2023-10-30', 3, 50, 12, -0.75, 'Berat Badan Normal', 0.053, 'Normal', -1, 'Gizi Baik / Normal', -1.167, 'Gizi Baik / Normal');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatans`
--

CREATE TABLE `kecamatans` (
  `id_kcm` bigint(20) UNSIGNED NOT NULL,
  `nama_kcm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longtd_kcm` double DEFAULT NULL,
  `latd_kcm` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kecamatans`
--

INSERT INTO `kecamatans` (`id_kcm`, `nama_kcm`, `longtd_kcm`, `latd_kcm`, `created_at`, `updated_at`) VALUES
(1, 'Ajung', -8.245307, 113.653131, '2023-09-25 13:13:53', '2023-09-28 12:48:03'),
(2, 'Ambulu', -8.3419295, 113.604818, '2023-09-25 13:16:39', '2023-09-28 13:02:47'),
(3, 'Arjasa', -8.1170918, 113.7463219, '2023-09-25 13:27:39', '2023-09-28 13:04:07'),
(4, 'Balung', -8.2774005, 113.5143093, '2023-09-25 13:29:09', '2023-09-28 13:04:39'),
(5, 'Bangsalsari', -8.201326, 113.5297973, '2023-09-25 13:32:26', '2023-09-28 13:05:15'),
(6, 'Gumukmas', -8.3093587, 113.4012363, '2023-09-25 13:33:20', '2023-09-28 13:05:41'),
(7, 'Jelbuk', -8.0840406, 113.7560218, '2023-09-25 13:35:22', '2023-09-25 13:35:22'),
(8, 'Jenggawah', -8.2683203, 113.6451287, '2023-09-25 13:36:22', '2023-09-25 13:36:22'),
(9, 'Jombang', -8.244049, 113.3445882, '2023-09-25 13:37:49', '2023-09-25 13:37:49'),
(10, 'Kalisat', -8.1336231, 113.8038495, '2023-09-25 13:38:44', '2023-09-25 13:38:44'),
(11, 'Kaliwates', -8.1884328, 113.6544476, '2023-09-25 13:39:30', '2023-09-25 13:39:30'),
(12, 'Kencong', -8.2802071, 113.3742864, '2023-09-25 13:40:56', '2023-09-25 13:40:56'),
(13, 'Ledokombo', -8.2096585, 113.4577499, '2023-09-25 13:41:58', '2023-09-25 13:41:58'),
(14, 'Mayang', -8.1744254, 113.7949424, '2023-09-25 13:42:55', '2023-09-25 13:42:55'),
(15, 'Mumbulsari', -8.2494718, 113.7435049, '2023-09-25 13:43:43', '2023-09-25 13:43:43'),
(16, 'Pakusari', -8.1540803, 113.7625049, '2023-09-25 13:44:30', '2023-09-25 13:44:30'),
(17, 'Panti', -8.1754698, 113.6164714, '2023-09-25 13:45:23', '2023-09-25 13:45:23'),
(18, 'Patrang', -8.1417791, 113.7174073, '2023-09-25 13:46:07', '2023-09-25 13:46:07'),
(19, 'Puger', -8.3713895, 113.4755153, '2023-09-25 13:46:44', '2023-09-25 13:46:44'),
(20, 'Rambipuji', -8.2080216, 113.6060086, '2023-09-25 13:47:29', '2023-09-25 13:47:29'),
(21, 'Semboro', -8.1937897, 113.4445074, '2023-09-25 13:48:08', '2023-09-25 13:48:08'),
(22, 'Silo', -8.186469, 113.8740141, '2023-09-25 13:48:44', '2023-09-25 13:48:44'),
(23, 'Sukorambi', -8.1576754, 113.6637448, '2023-09-25 13:49:23', '2023-09-25 13:49:23'),
(24, 'Sukowono', -8.0591666, 113.833771, '2023-09-25 13:50:03', '2023-09-25 13:50:03'),
(25, 'Sumberbaru', -8.119179, 113.3902252, '2023-09-25 13:50:44', '2023-09-25 13:50:44'),
(26, 'Sumberjambe', -8.0659021, 113.8964167, '2023-09-25 13:51:25', '2023-09-25 13:51:25'),
(27, 'Sumbersari', -8.1866666, 113.7188771, '2023-09-25 13:52:10', '2023-09-25 13:52:10'),
(28, 'Tanggul', -8.1613573, 113.4490089, '2023-09-25 13:52:48', '2023-09-25 13:52:48'),
(29, 'Tempurejo', -8.2993074, 113.6767301, '2023-09-25 13:53:27', '2023-09-25 13:53:27'),
(30, 'Umbulsari', -8.2640446, 113.4458131, '2023-09-25 13:54:19', '2023-09-25 13:54:19'),
(31, 'Wuluhan', -8.339222, 113.5505237, '2023-09-25 13:54:57', '2023-09-25 13:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_10_042139_create_articles_table', 1),
(6, '2023_09_10_061234_create_videos_table', 1),
(7, '2023_09_25_152636_create_kecamatan_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_anak`
--

CREATE TABLE `tbl_anak` (
  `id_anak` varchar(30) NOT NULL,
  `id_kcm` int(11) NOT NULL,
  `nama_anak` varchar(30) NOT NULL,
  `nama_ayah` varchar(30) NOT NULL,
  `nama_ibu` varchar(30) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kelurahan` varchar(30) NOT NULL,
  `rt` varchar(3) NOT NULL,
  `rw` varchar(3) NOT NULL,
  `posyandu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_anak`
--

INSERT INTO `tbl_anak` (`id_anak`, `id_kcm`, `nama_anak`, `nama_ayah`, `nama_ibu`, `jenis_kelamin`, `tgl_lahir`, `kelurahan`, `rt`, `rw`, `posyandu`) VALUES
('L20230910002', 2, 'ainun', '', 'aiii', 'L', '2023-09-10', 'tegal besar', '1', '1', 'tegal besar'),
('L20230929003', 11, 'didin', 'didin', 'didin', 'L', '2023-05-29', 'tegal besar', '02', '06', 'tegal besar'),
('L20230929004', 11, 'shaka', 'irfan', 'rahma', 'L', '2021-09-05', 'tegal besar', '02', '06', 'tegal besar'),
('L20231030005', 3, 'ai', 'ai', 'ai', 'L', '2023-10-30', 'arjasa', '02', '02', 'arjasa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bbpb`
--

CREATE TABLE `tbl_bbpb` (
  `id_bbpb` int(11) NOT NULL,
  `pb` double NOT NULL,
  `m3SD` double NOT NULL,
  `m2SD` double NOT NULL,
  `m1SD` double NOT NULL,
  `median` double NOT NULL,
  `p1SD` double NOT NULL,
  `p2SD` double NOT NULL,
  `p3SD` double NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bbpb`
--

INSERT INTO `tbl_bbpb` (`id_bbpb`, `pb`, `m3SD`, `m2SD`, `m1SD`, `median`, `p1SD`, `p2SD`, `p3SD`, `jenis_kelamin`) VALUES
(1, 45, 1.9, 2, 2.2, 2.4, 2.7, 3, 3.3, 'L'),
(2, 45.5, 1.9, 2.1, 2.3, 2.5, 2.8, 3.1, 3.4, 'L'),
(3, 46, 2, 2.2, 2.4, 2.6, 2.9, 3.1, 3.5, 'L'),
(4, 46.5, 2.1, 2.3, 2.5, 2.7, 3, 3.2, 3.6, 'L'),
(5, 47, 2.1, 2.3, 2.5, 2.8, 3, 3.3, 3.7, 'L'),
(6, 47.5, 2.2, 2.4, 2.6, 2.9, 3.1, 3.4, 3.8, 'L'),
(7, 48, 2.3, 2.5, 2.7, 2.9, 3.2, 3.6, 3.9, 'L'),
(8, 48.5, 2.3, 2.6, 2.8, 3, 3.3, 3.7, 4, 'L'),
(9, 49, 2.4, 2.6, 2.9, 3.1, 3.4, 3.8, 4.2, 'L'),
(10, 49.5, 2.5, 2.7, 3, 3.2, 3.5, 3.9, 4.3, 'L'),
(11, 50, 2.6, 2.8, 3, 3.3, 3.6, 4, 4.4, 'L'),
(12, 50.5, 2.7, 2.9, 3.1, 3.4, 3.8, 4.1, 4.5, 'L'),
(13, 51, 2.7, 3, 3.2, 3.5, 3.9, 4.2, 4.7, 'L'),
(14, 51.5, 2.8, 3.1, 3.3, 3.6, 4, 4.4, 4.8, 'L'),
(15, 52, 2.9, 3.2, 3.5, 3.8, 4.1, 4.5, 5, 'L'),
(16, 52.5, 3, 3.3, 3.6, 3.9, 4.2, 4.6, 5.1, 'L'),
(17, 53, 3.1, 3.4, 3.7, 4, 4.4, 4.8, 5.3, 'L'),
(18, 53.5, 3.2, 3.5, 3.8, 4.1, 4.5, 4.9, 5.4, 'L'),
(19, 54, 3.3, 3.6, 3.9, 4.3, 4.7, 5.1, 5.6, 'L'),
(20, 54.5, 3.4, 3.7, 4, 4.4, 4.8, 5.3, 5.8, 'L'),
(21, 55, 3.6, 3.8, 4.2, 4.5, 5, 5.4, 6, 'L'),
(22, 55.5, 3.7, 4, 4.3, 4.7, 5.1, 5.6, 6.1, 'L'),
(23, 56, 3.8, 4.1, 4.4, 4.8, 5.3, 5.8, 6.3, 'L'),
(24, 56.5, 3.9, 4.2, 4.6, 5, 5.4, 5.9, 6.5, 'L'),
(25, 57, 4, 4.3, 4.7, 5.1, 5.6, 6.1, 6.7, 'L'),
(26, 57.5, 4.1, 4.5, 4.9, 5.3, 5.7, 6.3, 6.9, 'L'),
(27, 58, 4.3, 4.6, 5, 5.4, 5.9, 6.4, 7.1, 'L'),
(28, 58.5, 4.4, 4.7, 5.1, 5.6, 6.1, 6.6, 7.2, 'L'),
(29, 59, 4.5, 4.8, 5.3, 5.7, 6.2, 6.8, 7.4, 'L'),
(30, 59.5, 4.6, 5, 5.4, 5.9, 6.4, 7, 7.6, 'L'),
(31, 60, 4.7, 5.1, 5.5, 6, 6.5, 7.1, 7.8, 'L'),
(32, 60.5, 4.8, 5.2, 5.6, 6.1, 6.7, 7.3, 8, 'L'),
(33, 61, 4.9, 5.3, 5.8, 6.3, 6.8, 7.4, 8.1, 'L'),
(34, 61.5, 5, 5.4, 5.9, 6.4, 7, 7.6, 8.3, 'L'),
(35, 62, 5.1, 5.6, 6, 6.5, 7.1, 7.7, 8.5, 'L'),
(36, 62.5, 5.2, 5.7, 6.1, 6.7, 7.2, 7.9, 8.6, 'L'),
(37, 63, 5.3, 5.8, 6.2, 6.8, 7.4, 8, 8.8, 'L'),
(38, 63.5, 5.4, 5.9, 6.4, 6.9, 7.5, 8.2, 8.9, 'L'),
(39, 64, 5.5, 6, 6.5, 7, 7.6, 8.3, 9.1, 'L'),
(40, 64.5, 5.6, 6.1, 6.6, 7.1, 7.8, 8.5, 9.3, 'L'),
(41, 65, 5.7, 6.2, 6.7, 7.3, 7.9, 8.6, 9.4, 'L'),
(42, 65.5, 5.8, 6.3, 6.8, 7.4, 8, 8.7, 9.6, 'L'),
(43, 66, 5.9, 6.4, 6.9, 7.5, 8.2, 8.9, 9.7, 'L'),
(44, 66.5, 6, 6.5, 7, 7.6, 8.3, 9, 9.9, 'L'),
(45, 67, 6.1, 6.6, 7.1, 7.7, 8.4, 9.2, 10, 'L'),
(46, 67.5, 6.2, 6.7, 7.2, 7.9, 8.5, 9.3, 10.2, 'L'),
(47, 68, 6.3, 6.8, 7.3, 8, 8.7, 9.4, 10.3, 'L'),
(48, 68.5, 6.4, 6.9, 7.5, 8.1, 8.8, 9.6, 10.5, 'L'),
(49, 69, 6.5, 7, 7.6, 8.2, 8.9, 9.7, 10.6, 'L'),
(50, 69.5, 6.6, 7.1, 7.7, 8.3, 9, 9.8, 10.8, 'L'),
(51, 70, 6.6, 7.2, 7.8, 8.4, 9.2, 10, 10.9, 'L'),
(52, 70.5, 6.7, 7.3, 7.9, 8.5, 9.3, 10.1, 11.1, 'L'),
(53, 71, 6.8, 7.4, 8, 8.6, 9.4, 10.2, 11.2, 'L'),
(54, 71.5, 6.9, 7.5, 8.1, 8.8, 9.5, 10.4, 11.3, 'L'),
(55, 72, 7, 7.6, 8.2, 8.9, 9.6, 10.5, 11.5, 'L'),
(56, 72.5, 7.1, 7.6, 8.3, 9, 9.8, 10.6, 11.6, 'L'),
(57, 73, 7.2, 7.7, 8.4, 9.1, 9.9, 10.8, 11.8, 'L'),
(58, 73.5, 7.2, 7.8, 8.5, 9.2, 10, 10.9, 11.9, 'L'),
(59, 74, 7.3, 7.9, 8.6, 9.3, 10.1, 11, 12.1, 'L'),
(60, 74.5, 7.4, 8, 8.7, 9.4, 10.2, 11.2, 12.2, 'L'),
(61, 75, 7.5, 8.1, 8.8, 9.5, 10.3, 11.3, 12.3, 'L'),
(62, 75.5, 7.6, 8.2, 8.8, 9.6, 10.4, 11.4, 12.5, 'L'),
(63, 76, 7.6, 8.3, 8.9, 9.7, 10.6, 11.5, 12.6, 'L'),
(64, 76.5, 7.7, 8.3, 9, 9.8, 10.7, 11.6, 12.7, 'L'),
(65, 77, 7.8, 8.4, 9.1, 9.9, 10.8, 11.7, 12.8, 'L'),
(66, 77.5, 7.9, 8.5, 9.2, 10, 10.9, 11.9, 13, 'L'),
(67, 78, 7.9, 8.6, 9.3, 10.1, 11, 12, 13.1, 'L'),
(68, 78.5, 8, 8.7, 9.4, 10.2, 11.1, 12.1, 13.2, 'L'),
(69, 79, 8.1, 8.7, 9.5, 10.3, 11.2, 12.2, 13.3, 'L'),
(70, 79.5, 8.2, 8.8, 9.5, 10.4, 11.3, 12.3, 13.4, 'L'),
(71, 80, 8.2, 8.9, 9.6, 10.4, 11.4, 12.4, 13.6, 'L'),
(72, 80.5, 8.3, 9, 9.7, 10.5, 11.5, 12.5, 13.7, 'L'),
(73, 81, 8.4, 9.1, 9.8, 10.6, 11.6, 12.6, 13.8, 'L'),
(74, 81.5, 8.5, 9.1, 9.9, 10.7, 11.7, 12.7, 13.9, 'L'),
(75, 82, 8.5, 9.2, 10, 10.8, 11.8, 12.8, 14, 'L'),
(76, 82.5, 8.6, 9.3, 10.1, 10.9, 11.9, 13, 14.2, 'L'),
(77, 83, 8.7, 9.4, 10.2, 11, 12, 13.1, 14.3, 'L'),
(78, 83.5, 8.8, 9.5, 10.3, 11.2, 12.1, 13.2, 14.4, 'L'),
(79, 84, 8.9, 9.6, 10.4, 11.3, 12.2, 13.3, 14.6, 'L'),
(80, 84.5, 9, 9.7, 10.5, 11.4, 12.4, 13.5, 14.7, 'L'),
(81, 85, 9.1, 9.8, 10.6, 11.5, 12.5, 13.6, 14.9, 'L'),
(82, 85.5, 9.2, 9.9, 10.7, 11.6, 12.6, 13.7, 15, 'L'),
(83, 86, 9.3, 10, 10.8, 11.7, 12.8, 13.9, 15.2, 'L'),
(84, 86.5, 9.4, 10.1, 11, 11.9, 12.9, 14, 15.3, 'L'),
(85, 87, 9.5, 10.2, 11.1, 12, 13, 14.2, 15.5, 'L'),
(86, 87.5, 9.6, 10.4, 11.2, 12.1, 13.2, 14.3, 15.6, 'L'),
(87, 88, 9.7, 10.5, 11.3, 12.2, 13.3, 14.5, 15.8, 'L'),
(88, 88.5, 9.8, 10.6, 11.4, 12.4, 13.4, 14.6, 15.9, 'L'),
(89, 89, 9.9, 10.7, 11.5, 12.5, 13.5, 14.7, 16.1, 'L'),
(90, 89.5, 10, 10.8, 11.6, 12.6, 13.7, 14.9, 16.2, 'L'),
(91, 90, 10.1, 10.9, 11.8, 12.7, 13.8, 15, 16.4, 'L'),
(92, 90.5, 10.2, 11, 11.9, 12.8, 13.9, 15.1, 16.5, 'L'),
(93, 91, 10.3, 11.1, 12, 13, 14.1, 15.3, 16.7, 'L'),
(94, 91.5, 10.4, 11.2, 12.1, 13.1, 14.2, 15.4, 16.8, 'L'),
(95, 92, 10.5, 11.3, 12.2, 13.2, 14.3, 15.6, 17, 'L'),
(96, 92.5, 10.6, 11.4, 12.3, 13.3, 14.4, 15.7, 17.1, 'L'),
(97, 93, 10.7, 11.5, 12.4, 13.4, 14.6, 15.8, 17.3, 'L'),
(98, 93.5, 10.7, 11.6, 12.5, 13.5, 14.7, 16, 17.4, 'L'),
(99, 94, 10.8, 11.7, 12.6, 13.7, 14.8, 16.1, 17.6, 'L'),
(100, 94.5, 10.9, 11.8, 12.7, 13.8, 14.9, 16.3, 17.7, 'L'),
(101, 95, 11, 11.9, 12.8, 13.9, 15.1, 16.4, 17.9, 'L'),
(102, 95.5, 11.1, 12, 12.9, 14, 15.2, 16.5, 18, 'L'),
(103, 96, 11.2, 12.1, 13.1, 14.1, 15.3, 16.7, 18.2, 'L'),
(104, 96.5, 11.3, 12.2, 13.2, 14.3, 15.5, 16.8, 18.4, 'L'),
(105, 97, 11.4, 12.3, 13.3, 14.4, 15.6, 17, 18.5, 'L'),
(106, 97.5, 11.5, 12.4, 13.4, 14.5, 15.7, 17.1, 18.7, 'L'),
(107, 98, 11.6, 12.5, 13.5, 14.6, 15.9, 17.3, 18.9, 'L'),
(108, 98.5, 11.7, 12.6, 13.6, 14.8, 16, 17.5, 19.1, 'L'),
(109, 99, 11.8, 12.7, 13.7, 14.9, 16.2, 17.6, 19.2, 'L'),
(110, 99.5, 11.9, 12.8, 13.9, 15, 16.3, 17.8, 19.4, 'L'),
(111, 100, 12, 12.9, 14, 15.2, 16.5, 18, 19.6, 'L'),
(112, 100.5, 12.1, 13, 14.1, 15.3, 16.6, 18.1, 19.8, 'L'),
(113, 101, 12.2, 13.2, 14.2, 15.4, 16.8, 18.3, 20, 'L'),
(114, 101.5, 12.3, 13.3, 14.4, 15.6, 16.9, 18.5, 20.2, 'L'),
(115, 102, 12.4, 13.4, 14.5, 15.7, 17.1, 18.7, 20.4, 'L'),
(116, 102.5, 12.5, 13.5, 14.6, 15.9, 17.3, 18.8, 20.6, 'L'),
(117, 103, 12.6, 13.6, 14.8, 16, 17.4, 19, 20.8, 'L'),
(118, 103.5, 12.7, 13.7, 14.9, 16.2, 17.6, 19.2, 21, 'L'),
(119, 104, 12.8, 13.9, 15, 16.3, 17.8, 19.4, 21.2, 'L'),
(120, 104.5, 12.9, 14, 15.2, 16.5, 17.9, 19.6, 21.5, 'L'),
(121, 105, 13, 14.1, 15.3, 16.6, 18.1, 19.8, 21.7, 'L'),
(122, 105.5, 13.2, 14.2, 15.4, 16.8, 18.3, 20, 21.9, 'L'),
(123, 106, 13.3, 14.4, 15.6, 16.9, 18.5, 20.2, 22.1, 'L'),
(124, 106.5, 13.4, 14.5, 15.7, 17.1, 18.6, 20.4, 22.4, 'L'),
(125, 107, 13.5, 14.6, 15.9, 17.3, 18.8, 20.6, 22.6, 'L'),
(126, 107.5, 13.6, 14.7, 16, 17.4, 19, 20.8, 22.8, 'L'),
(127, 108, 13.7, 14.9, 16.2, 17.6, 19.2, 21, 23.1, 'L'),
(128, 108.5, 13.8, 15, 16.3, 17.8, 19.4, 21.2, 23.3, 'L'),
(129, 109, 14, 15.1, 16.5, 17.9, 19.6, 21.4, 23.6, 'L'),
(130, 109.5, 14.1, 15.3, 16.6, 18.1, 19.8, 21.7, 23.8, 'L'),
(131, 110, 14.2, 15.4, 16.8, 18.3, 20, 21.9, 24.1, 'L'),
(132, 45, 1.9, 2.1, 2.3, 2.5, 2.7, 3, 3.3, 'P'),
(133, 45.5, 2, 2.1, 2.3, 2.5, 2.8, 3.1, 3.4, 'P'),
(134, 46, 2, 2.2, 2.4, 2.6, 2.9, 3.2, 3.5, 'P'),
(135, 46.5, 2.1, 2.3, 2.5, 2.7, 3, 3.3, 3.6, 'P'),
(136, 47, 2.2, 2.4, 2.6, 2.8, 3.1, 3.4, 3.7, 'P'),
(137, 47.5, 2.2, 2.4, 2.6, 2.9, 3.2, 3.5, 3.8, 'P'),
(138, 48, 2.3, 2.5, 2.7, 3, 3.3, 3.6, 4, 'P'),
(139, 48.5, 2.4, 2.6, 2.8, 3.1, 3.4, 3.7, 4.1, 'P'),
(140, 49, 2.4, 2.6, 2.9, 3.2, 3.5, 3.8, 4.2, 'P'),
(141, 49.5, 2.5, 2.7, 3, 3.3, 3.6, 3.9, 4.3, 'P'),
(142, 50, 2.6, 2.8, 3.1, 3.4, 3.7, 4, 4.5, 'P'),
(143, 50.5, 2.7, 2.9, 3.2, 3.5, 3.8, 4.2, 4.6, 'P'),
(144, 51, 2.8, 3, 3.3, 3.6, 3.9, 4.3, 4.8, 'P'),
(145, 51.5, 2.8, 3.1, 3.4, 3.7, 4, 4.4, 4.9, 'P'),
(146, 52, 2.9, 3.2, 3.5, 3.8, 4.2, 4.6, 5.1, 'P'),
(147, 52.5, 3, 3.3, 3.6, 3.9, 4.3, 4.7, 5.2, 'P'),
(148, 53, 3.1, 3.4, 3.7, 4, 4.4, 4.9, 5.4, 'P'),
(149, 53.5, 3.2, 3.5, 3.8, 4.2, 4.6, 5, 5.5, 'P'),
(150, 54, 3.3, 3.6, 3.9, 4.3, 4.7, 5.2, 5.7, 'P'),
(151, 54.5, 3.4, 3.7, 4, 4.4, 4.8, 5.3, 5.9, 'P'),
(152, 55, 3.5, 3.8, 4.2, 4.5, 5, 5.5, 6.1, 'P'),
(153, 55.5, 3.6, 3.9, 4.3, 4.7, 5.1, 5.7, 6.3, 'P'),
(154, 56, 3.7, 4, 4.4, 4.8, 5.3, 5.8, 6.4, 'P'),
(155, 56.5, 3.8, 4.1, 4.5, 5, 5.4, 6, 6.6, 'P'),
(156, 57, 3.9, 4.3, 4.6, 5.1, 5.6, 6.1, 6.8, 'P'),
(157, 57.5, 4, 4.4, 4.8, 5.2, 5.7, 6.3, 7, 'P'),
(158, 58, 4.1, 4.5, 4.9, 5.4, 5.9, 6.5, 7.1, 'P'),
(159, 58.5, 4.2, 4.6, 5, 5.5, 6, 6.6, 7.3, 'P'),
(160, 59, 4.3, 4.7, 5.1, 5.6, 6.2, 6.8, 7.5, 'P'),
(161, 59.5, 4.4, 4.8, 5.3, 5.7, 6.3, 6.9, 7.7, 'P'),
(162, 60, 4.5, 4.9, 5.4, 5.9, 6.4, 7.1, 7.8, 'P'),
(163, 60.5, 4.6, 5, 5.5, 6, 6.6, 7.3, 8, 'P'),
(164, 61, 4.7, 5.1, 5.6, 6.1, 6.7, 7.4, 8.2, 'P'),
(165, 61.5, 4.8, 5.2, 5.7, 6.3, 6.9, 7.6, 8.4, 'P'),
(166, 62, 4.9, 5.3, 5.8, 6.4, 7, 7.7, 8.5, 'P'),
(167, 62.5, 5, 5.4, 5.9, 6.5, 7.1, 7.8, 8.7, 'P'),
(168, 63, 5.1, 5.5, 6, 6.6, 7.3, 8, 8.8, 'P'),
(169, 63.5, 5.2, 5.6, 6.2, 6.7, 7.4, 8.1, 9, 'P'),
(170, 64, 5.3, 5.7, 6.3, 6.9, 7.5, 8.3, 9.1, 'P'),
(171, 64.5, 5.4, 5.8, 6.4, 7, 7.6, 8.4, 9.3, 'P'),
(172, 65, 5.5, 5.9, 6.5, 7.1, 7.8, 8.6, 9.5, 'P'),
(173, 65.5, 5.5, 6, 6.6, 7.2, 7.9, 8.7, 9.6, 'P'),
(174, 66, 5.6, 6.1, 6.7, 7.3, 8, 8.8, 9.8, 'P'),
(175, 66.5, 5.7, 6.2, 6.8, 7.4, 8.1, 9, 9.9, 'P'),
(176, 67, 5.8, 6.3, 6.9, 7.5, 8.3, 9.1, 10, 'P'),
(177, 67.5, 5.9, 6.4, 7, 7.6, 8.4, 9.2, 10.2, 'P'),
(178, 68, 6, 6.5, 7.1, 7.7, 8.5, 9.4, 10.3, 'P'),
(179, 68.5, 6.1, 6.6, 7.2, 7.9, 8.6, 9.5, 10.5, 'P'),
(180, 69, 6.1, 6.7, 7.3, 8, 8.7, 9.6, 10.6, 'P'),
(181, 69.5, 6.2, 6.8, 7.4, 8.1, 8.8, 9.7, 10.7, 'P'),
(182, 70, 6.3, 6.9, 7.5, 8.2, 9, 9.9, 10.9, 'P'),
(183, 70.5, 6.4, 6.9, 7.6, 8.3, 9.1, 10, 11, 'P'),
(184, 71, 6.5, 7, 7.7, 8.4, 9.2, 10.1, 11.1, 'P'),
(185, 71.5, 6.5, 7.1, 7.7, 8.5, 9.3, 10.2, 11.3, 'P'),
(186, 72, 6.6, 7.2, 7.8, 8.6, 9.4, 10.3, 11.4, 'P'),
(187, 72.5, 6.7, 7.3, 7.9, 8.7, 9.5, 10.5, 11.5, 'P'),
(188, 73, 6.8, 7.4, 8, 8.8, 9.6, 10.6, 11.7, 'P'),
(189, 73.5, 6.9, 7.4, 8.1, 8.9, 9.7, 10.7, 11.8, 'P'),
(190, 74, 6.9, 7.5, 8.2, 9, 9.8, 10.8, 11.9, 'P'),
(191, 74.5, 7, 7.6, 8.3, 9.1, 9.9, 10.9, 12, 'P'),
(192, 75, 7.1, 7.7, 8.4, 9.1, 10, 11, 12.2, 'P'),
(193, 75.5, 7.1, 7.8, 8.5, 9.2, 10.1, 11.1, 12.3, 'P'),
(194, 76, 7.2, 7.8, 8.5, 9.3, 10.2, 11.2, 12.4, 'P'),
(195, 76.5, 7.3, 7.9, 8.6, 9.4, 10.3, 11.4, 12.5, 'P'),
(196, 77, 7.4, 8, 8.7, 9.5, 10.4, 11.5, 12.6, 'P'),
(197, 77.5, 7.4, 8.1, 8.8, 9.6, 10.5, 11.6, 12.8, 'P'),
(198, 78, 7.5, 8.2, 8.9, 9.7, 10.6, 11.7, 12.9, 'P'),
(199, 78.5, 7.6, 8.2, 9, 9.8, 10.7, 11.8, 13, 'P'),
(200, 79, 7.7, 8.3, 9.1, 9.9, 10.8, 11.9, 13.1, 'P'),
(201, 79.5, 7.7, 8.4, 9.1, 10, 10.9, 12, 13.3, 'P'),
(202, 80, 7.8, 8.5, 9.2, 10.1, 11, 12.1, 13.4, 'P'),
(203, 80.5, 7.9, 8.6, 9.3, 10.2, 11.2, 12.3, 13.5, 'P'),
(204, 81, 8, 8.7, 9.4, 10.3, 11.3, 12.4, 13.7, 'P'),
(205, 81.5, 8.1, 8.8, 9.5, 10.4, 11.4, 12.5, 13.8, 'P'),
(206, 82, 8.1, 8.8, 9.6, 10.5, 11.5, 12.6, 13.9, 'P'),
(207, 82.5, 8.2, 8.9, 9.7, 10.6, 11.6, 12.8, 14.1, 'P'),
(208, 83, 8.3, 9, 9.8, 10.7, 11.8, 12.9, 14.2, 'P'),
(209, 83.5, 8.4, 9.1, 9.9, 10.9, 11.9, 13.1, 14.4, 'P'),
(210, 84, 8.5, 9.2, 10.1, 11, 12, 13.2, 14.5, 'P'),
(211, 84.5, 8.6, 9.3, 10.2, 11.1, 12.1, 13.3, 14.7, 'P'),
(212, 85, 8.7, 9.4, 10.3, 11.2, 12.3, 13.5, 14.9, 'P'),
(213, 85.5, 8.8, 9.5, 10.4, 11.3, 12.4, 13.6, 15, 'P'),
(214, 86, 8.9, 9.7, 10.5, 11.5, 12.6, 13.8, 15.2, 'P'),
(215, 86.5, 9, 9.8, 10.6, 11.6, 12.7, 13.9, 15.4, 'P'),
(216, 87, 9.1, 9.9, 10.7, 11.7, 12.8, 14.1, 15.5, 'P'),
(217, 87.5, 9.2, 10, 10.9, 11.8, 13, 14.2, 15.7, 'P'),
(218, 88, 9.3, 10.1, 11, 12, 13.1, 14.4, 15.9, 'P'),
(219, 88.5, 9.4, 10.2, 11.1, 12.1, 13.2, 14.5, 16, 'P'),
(220, 89, 9.5, 10.3, 11.2, 12.2, 13.4, 14.7, 16.2, 'P'),
(221, 89.5, 9.6, 10.4, 11.3, 12.3, 13.5, 14.8, 16.4, 'P'),
(222, 90, 9.7, 10.5, 11.4, 12.5, 13.7, 15, 16.5, 'P'),
(223, 90.5, 9.8, 10.6, 11.5, 12.6, 13.8, 15.1, 16.7, 'P'),
(224, 91, 9.9, 10.7, 11.7, 12.7, 13.9, 15.3, 16.9, 'P'),
(225, 91.5, 10, 10.8, 11.8, 12.8, 14.1, 15.5, 17, 'P'),
(226, 92, 10.1, 10.9, 11.9, 13, 14.2, 15.6, 17.2, 'P'),
(227, 92.5, 10.1, 11, 12, 13.1, 14.3, 15.8, 17.4, 'P'),
(228, 93, 10.2, 11.1, 12.1, 13.2, 14.5, 15.9, 17.5, 'P'),
(229, 93.5, 10.3, 11.2, 12.2, 13.3, 14.6, 16.1, 17.7, 'P'),
(230, 94, 10.4, 11.3, 12.3, 13.5, 14.7, 16.2, 17.9, 'P'),
(231, 94.5, 10.5, 11.4, 12.4, 13.6, 14.9, 16.4, 18, 'P'),
(232, 95, 10.6, 11.5, 12.6, 13.7, 15, 16.5, 18.2, 'P'),
(233, 95.5, 10.7, 11.6, 12.7, 13.8, 15.2, 16.7, 18.4, 'P'),
(234, 96, 10.8, 11.7, 12.8, 14, 15.3, 16.8, 18.6, 'P'),
(235, 96.5, 10.9, 11.8, 12.9, 14.1, 15.4, 17, 18.7, 'P'),
(236, 97, 11, 12, 13, 14.2, 15.6, 17.1, 18.9, 'P'),
(237, 97.5, 11.1, 12.1, 13.1, 14.4, 15.7, 17.3, 19.1, 'P'),
(238, 98, 11.2, 12.2, 13.3, 14.5, 15.9, 17.5, 19.3, 'P'),
(239, 98.5, 11.3, 12.3, 13.4, 14.6, 16, 17.6, 19.5, 'P'),
(240, 99, 11.4, 12.4, 13.5, 14.8, 16.2, 17.8, 19.6, 'P'),
(241, 99.5, 11.5, 12.5, 13.6, 14.9, 16.3, 18, 19.8, 'P'),
(242, 100, 11.6, 12.6, 13.7, 15, 16.5, 18.1, 20, 'P'),
(243, 100.5, 11.7, 12.7, 13.9, 15.2, 16.6, 18.3, 20.2, 'P'),
(244, 101, 11.8, 12.8, 14, 15.3, 16.8, 18.5, 20.4, 'P'),
(245, 101.5, 11.9, 13, 14.1, 15.5, 17, 18.7, 20.6, 'P'),
(246, 102, 12, 13.1, 14.3, 15.6, 17.1, 18.9, 20.8, 'P'),
(247, 102.5, 12.1, 13.2, 14.4, 15.8, 17.3, 19, 21, 'P'),
(248, 103, 12.3, 13.3, 14.5, 15.9, 17.5, 19.2, 21.3, 'P'),
(249, 103.5, 12.4, 13.5, 14.7, 16.1, 17.6, 19.4, 21.5, 'P'),
(250, 104, 12.5, 13.6, 14.8, 16.2, 17.8, 19.6, 21.7, 'P'),
(251, 104.5, 12.6, 13.7, 15, 16.4, 18, 19.8, 21.9, 'P'),
(252, 105, 12.7, 13.8, 15.1, 16.5, 18.2, 20, 22.2, 'P'),
(253, 105.5, 12.8, 14, 15.3, 16.7, 18.4, 20.2, 22.4, 'P'),
(254, 106, 13, 14.1, 15.4, 16.9, 18.5, 20.5, 22.6, 'P'),
(255, 106.5, 13.1, 14.3, 15.6, 17.1, 18.7, 20.7, 22.9, 'P'),
(256, 107, 13.2, 14.4, 15.7, 17.2, 18.9, 20.9, 23.1, 'P'),
(257, 107.5, 13.3, 14.5, 15.9, 17.4, 19.1, 21.1, 23.4, 'P'),
(258, 108, 13.5, 14.7, 16, 17.6, 19.3, 21.3, 23.6, 'P'),
(259, 108.5, 13.6, 14.8, 16.2, 17.8, 19.5, 21.6, 23.9, 'P'),
(260, 109, 13.7, 15, 16.4, 18, 19.7, 21.8, 24.2, 'P'),
(261, 109.5, 13.9, 15.1, 16.5, 18.1, 20, 22, 24.4, 'P'),
(262, 110, 14, 15.3, 16.7, 18.3, 20.2, 22.3, 24.7, 'P');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bbtb`
--

CREATE TABLE `tbl_bbtb` (
  `id_bbtb` int(11) NOT NULL,
  `tb` double NOT NULL,
  `m3SD` double NOT NULL,
  `m2SD` double NOT NULL,
  `m1SD` double NOT NULL,
  `median` double NOT NULL,
  `p1SD` double NOT NULL,
  `p2SD` double NOT NULL,
  `p3SD` double NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bbtb`
--

INSERT INTO `tbl_bbtb` (`id_bbtb`, `tb`, `m3SD`, `m2SD`, `m1SD`, `median`, `p1SD`, `p2SD`, `p3SD`, `jenis_kelamin`) VALUES
(1, 65, 5.9, 6.3, 6.9, 7.4, 8.1, 8.8, 9.6, 'L'),
(2, 65.5, 6, 6.4, 7, 7.6, 8.2, 8.9, 9.8, 'L'),
(3, 66, 6.1, 6.5, 7.1, 7.7, 8.3, 9.1, 9.9, 'L'),
(4, 66.5, 6.1, 6.6, 7.2, 7.8, 8.5, 9.2, 10.1, 'L'),
(5, 67, 6.2, 6.7, 7.3, 7.9, 8.6, 9.4, 10.2, 'L'),
(6, 67.5, 6.3, 6.8, 7.4, 8, 8.7, 9.5, 10.4, 'L'),
(7, 68, 6.4, 6.9, 7.5, 8.1, 8.8, 9.6, 10.5, 'L'),
(8, 68.5, 6.5, 7, 7.6, 8.2, 9, 9.8, 10.7, 'L'),
(9, 69, 6.6, 7.1, 7.7, 8.4, 9.1, 9.9, 10.8, 'L'),
(10, 69.5, 6.7, 7.2, 7.8, 8.5, 9.2, 10, 11, 'L'),
(11, 70, 6.8, 7.3, 7.9, 8.6, 9.3, 10.2, 11.1, 'L'),
(12, 70.5, 6.9, 7.4, 8, 8.7, 9.5, 10.3, 11.3, 'L'),
(13, 71, 6.9, 7.5, 8.1, 8.8, 9.6, 10.4, 11.4, 'L'),
(14, 71.5, 7, 7.6, 8.2, 8.9, 9.7, 10.6, 11.6, 'L'),
(15, 72, 7.1, 7.7, 8.3, 9, 9.8, 10.7, 11.7, 'L'),
(16, 72.5, 7.2, 7.8, 8.4, 9.1, 9.9, 10.8, 11.8, 'L'),
(17, 73, 7.3, 7.9, 8.5, 9.2, 10, 11, 12, 'L'),
(18, 73.5, 7.4, 7.9, 8.6, 9.3, 10.2, 11.1, 12.1, 'L'),
(19, 74, 7.4, 8, 8.7, 9.4, 10.3, 11.2, 12.2, 'L'),
(20, 74.5, 7.5, 8.1, 8.8, 9.5, 10.4, 11.3, 12.4, 'L'),
(21, 75, 7.6, 8.2, 8.9, 9.6, 10.5, 11.4, 12.5, 'L'),
(22, 75.5, 7.7, 8.3, 9, 9.7, 10.6, 11.6, 12.6, 'L'),
(23, 76, 7.7, 8.4, 9.1, 9.8, 10.7, 11.7, 12.8, 'L'),
(24, 76.5, 7.8, 8.5, 9.2, 9.9, 10.8, 11.8, 12.9, 'L'),
(25, 77, 7.9, 8.5, 9.2, 10, 10.9, 11.9, 13, 'L'),
(26, 77.5, 8, 8.6, 9.3, 10.1, 11, 12, 13.1, 'L'),
(27, 78, 8, 8.7, 9.4, 10.2, 11.1, 12.1, 13.3, 'L'),
(28, 78.5, 8.1, 8.8, 9.5, 10.3, 11.2, 12.2, 13.4, 'L'),
(29, 79, 8.2, 8.8, 9.6, 10.4, 11.3, 12.3, 13.5, 'L'),
(30, 79.5, 8.3, 8.9, 9.7, 10.5, 11.4, 12.4, 13.6, 'L'),
(31, 80, 8.3, 9, 9.7, 10.6, 11.5, 12.6, 13.7, 'L'),
(32, 80.5, 8.4, 9.1, 9.8, 10.7, 11.6, 12.7, 13.8, 'L'),
(33, 81, 8.5, 9.2, 9.9, 10.8, 11.7, 12.8, 14, 'L'),
(34, 81.5, 8.6, 9.3, 10, 10.9, 11.8, 12.9, 14.1, 'L'),
(35, 82, 8.7, 9.3, 10.1, 11, 11.9, 13, 14.2, 'L'),
(36, 82.5, 8.7, 9.4, 10.2, 11.1, 12.1, 13.1, 14.4, 'L'),
(37, 83, 8.8, 9.5, 10.3, 11.2, 12.2, 13.3, 14.5, 'L'),
(38, 83.5, 8.9, 9.6, 10.4, 11.3, 12.3, 13.4, 14.6, 'L'),
(39, 84, 9, 9.7, 10.5, 11.4, 12.4, 13.5, 14.8, 'L'),
(40, 84.5, 9.1, 9.9, 10.7, 11.5, 12.5, 13.7, 14.9, 'L'),
(41, 85, 9.2, 10, 10.8, 11.7, 12.7, 13.8, 15.1, 'L'),
(42, 85.5, 9.3, 10.1, 10.9, 11.8, 12.8, 13.9, 15.2, 'L'),
(43, 86, 9.4, 10.2, 11, 11.9, 12.9, 14.1, 15.4, 'L'),
(44, 86.5, 9.5, 10.3, 11.1, 12, 13.1, 14.2, 15.5, 'L'),
(45, 87, 9.6, 10.4, 11.2, 12.2, 13.2, 14.4, 15.7, 'L'),
(46, 87.5, 9.7, 10.5, 11.3, 12.3, 13.3, 14.5, 15.8, 'L'),
(47, 88, 9.8, 10.6, 11.5, 12.4, 13.5, 14.7, 16, 'L'),
(48, 88.5, 9.9, 10.7, 11.6, 12.5, 13.6, 14.8, 16.1, 'L'),
(49, 89, 10, 10.8, 11.7, 12.6, 13.7, 14.9, 16.3, 'L'),
(50, 89.5, 10.1, 10.9, 11.8, 12.8, 13.9, 15.1, 16.4, 'L'),
(51, 90, 10.2, 11, 11.9, 12.9, 14, 15.2, 16.6, 'L'),
(52, 90.5, 10.3, 11.1, 12, 13, 14.1, 15.3, 16.7, 'L'),
(53, 91, 10.4, 11.2, 12.1, 13.1, 14.2, 15.5, 16.9, 'L'),
(54, 91.5, 10.5, 11.3, 12.2, 13.2, 14.4, 15.6, 17, 'L'),
(55, 92, 10.6, 11.4, 12.3, 13.4, 14.5, 15.8, 17.2, 'L'),
(56, 92.5, 10.7, 11.5, 12.4, 13.5, 14.6, 15.9, 17.3, 'L'),
(57, 93, 10.8, 11.6, 12.6, 13.6, 14.7, 16, 17.5, 'L'),
(58, 93.5, 10.9, 11.7, 12.7, 13.7, 14.9, 16.2, 17.6, 'L'),
(59, 94, 11, 11.8, 12.8, 13.8, 15, 16.3, 17.8, 'L'),
(60, 94.5, 11.1, 11.9, 12.9, 13.9, 15.1, 16.5, 17.9, 'L'),
(61, 95, 11.1, 12, 13, 14.1, 15.3, 16.6, 18.1, 'L'),
(62, 95.5, 11.2, 12.1, 13.1, 14.2, 15.4, 16.7, 18.3, 'L'),
(63, 96, 11.3, 12.2, 13.2, 14.3, 15.5, 16.9, 18.4, 'L'),
(64, 96.5, 11.4, 12.3, 13.3, 14.4, 15.7, 17, 18.6, 'L'),
(65, 97, 11.5, 12.4, 13.4, 14.6, 15.8, 17.2, 18.8, 'L'),
(66, 97.5, 11.6, 12.5, 13.6, 14.7, 15.9, 17.4, 18.9, 'L'),
(67, 98, 11.7, 12.6, 13.7, 14.8, 16.1, 17.5, 19.1, 'L'),
(68, 98.5, 11.8, 12.8, 13.8, 14.9, 16.2, 17.7, 19.3, 'L'),
(69, 99, 11.9, 12.9, 13.9, 15.1, 16.4, 17.9, 19.5, 'L'),
(70, 99.5, 12, 13, 14, 15.2, 16.5, 18, 19.7, 'L'),
(71, 100, 12.1, 13.1, 14.2, 15.4, 16.7, 18.2, 19.9, 'L'),
(72, 100.5, 12.2, 13.2, 14.3, 15.5, 16.9, 18.4, 20.1, 'L'),
(73, 101, 12.3, 13.3, 14.4, 15.6, 17, 18.5, 20.3, 'L'),
(74, 101.5, 12.4, 13.4, 14.5, 15.8, 17.2, 18.7, 20.5, 'L'),
(75, 102, 12.5, 13.6, 14.7, 15.9, 17.3, 18.9, 20.7, 'L'),
(76, 102.5, 12.6, 13.7, 14.8, 16.1, 17.5, 19.1, 20.9, 'L'),
(77, 103, 12.8, 13.8, 14.9, 16.2, 17.7, 19.3, 21.1, 'L'),
(78, 103.5, 12.9, 13.9, 15.1, 16.4, 17.8, 19.5, 21.3, 'L'),
(79, 104, 13, 14, 15.2, 16.5, 18, 19.7, 21.6, 'L'),
(80, 104.5, 13.1, 14.2, 15.4, 16.7, 18.2, 19.9, 21.8, 'L'),
(81, 105, 13.2, 14.3, 15.5, 16.8, 18.4, 20.1, 22, 'L'),
(82, 105.5, 13.3, 14.4, 15.6, 17, 18.5, 20.3, 22.2, 'L'),
(83, 106, 13.4, 14.5, 15.8, 17.2, 18.7, 20.5, 22.5, 'L'),
(84, 106.5, 13.5, 14.7, 15.9, 17.3, 18.9, 20.7, 22.7, 'L'),
(85, 107, 13.7, 14.8, 16.1, 17.5, 19.1, 20.9, 22.9, 'L'),
(86, 107.5, 13.8, 14.9, 16.2, 17.7, 19.3, 21.1, 23.2, 'L'),
(87, 108, 13.9, 15.1, 16.4, 17.8, 19.5, 21.3, 23.4, 'L'),
(88, 108.5, 14, 15.2, 16.5, 18, 19.7, 21.5, 23.7, 'L'),
(89, 109, 14.1, 15.3, 16.7, 18.2, 19.8, 21.8, 23.9, 'L'),
(90, 109.5, 14.3, 15.5, 16.8, 18.3, 20, 22, 24.2, 'L'),
(91, 110, 14.4, 15.6, 17, 18.5, 20.2, 22.2, 24.4, 'L'),
(92, 110.5, 14.5, 15.8, 17.1, 18.7, 20.4, 22.4, 24.7, 'L'),
(93, 111, 14.6, 15.9, 17.3, 18.9, 20.7, 22.7, 25, 'L'),
(94, 111.5, 14.8, 16, 17.5, 19.1, 20.9, 22.9, 25.2, 'L'),
(95, 112, 14.9, 16.2, 17.6, 19.2, 21.1, 23.1, 25.5, 'L'),
(96, 112.5, 15, 16.3, 17.8, 19.4, 21.3, 23.4, 25.8, 'L'),
(97, 113, 15.2, 16.5, 18, 19.6, 21.5, 23.6, 26, 'L'),
(98, 113.5, 15.3, 16.6, 18.1, 19.8, 21.7, 23.9, 26.3, 'L'),
(99, 114, 15.4, 16.8, 18.3, 20, 21.9, 24.1, 26.6, 'L'),
(100, 114.5, 15.6, 16.9, 18.5, 20.2, 22.1, 24.4, 26.9, 'L'),
(101, 115, 15.7, 17.1, 18.6, 20.4, 22.4, 24.6, 27.2, 'L'),
(102, 115.5, 15.8, 17.2, 18.8, 20.6, 22.6, 24.9, 27.5, 'L'),
(103, 116, 16, 17.4, 19, 20.8, 22.8, 25.1, 27.8, 'L'),
(104, 116.5, 16.1, 17.5, 19.2, 21, 23, 25.4, 28, 'L'),
(105, 117, 16.2, 17.7, 19.3, 21.2, 23.3, 25.6, 28.3, 'L'),
(106, 117.5, 16.4, 17.9, 19.5, 21.4, 23.5, 25.9, 28.6, 'L'),
(107, 118, 16.5, 18, 19.7, 21.6, 23.7, 26.1, 28.9, 'L'),
(108, 118.5, 16.7, 18.2, 19.9, 21.8, 23.9, 26.4, 29.2, 'L'),
(109, 119, 16.8, 18.3, 20, 22, 24.1, 26.6, 29.5, 'L'),
(110, 119.5, 16.9, 18.5, 20.2, 22.2, 24.4, 26.9, 29.8, 'L'),
(111, 120, 17.1, 18.6, 20.4, 22.4, 24.6, 27.2, 30.1, 'L'),
(112, 65, 5.6, 6.1, 6.6, 7.2, 7.9, 8.7, 9.7, 'P'),
(113, 65.5, 5.7, 6.2, 6.7, 7.4, 8.1, 8.9, 9.8, 'P'),
(114, 66, 5.8, 6.3, 6.8, 7.5, 8.2, 9, 10, 'P'),
(115, 66.5, 5.8, 6.4, 6.9, 7.6, 8.3, 9.1, 10.1, 'P'),
(116, 67, 5.9, 6.4, 7, 7.7, 8.4, 9.3, 10.2, 'P'),
(117, 67.5, 6, 6.5, 7.1, 7.8, 8.5, 9.4, 10.4, 'P'),
(118, 68, 6.1, 6.6, 7.2, 7.9, 8.7, 9.5, 10.5, 'P'),
(119, 68.5, 6.2, 6.7, 7.3, 8, 8.8, 9.7, 10.7, 'P'),
(120, 69, 6.3, 6.8, 7.4, 8.1, 8.9, 9.8, 10.8, 'P'),
(121, 69.5, 6, 6.9, 7.5, 8.2, 9, 9.9, 10.9, 'P'),
(122, 70, 6.4, 7, 7.6, 8.3, 9.1, 10, 11.1, 'P'),
(123, 70.5, 6.5, 7.1, 7.7, 8.4, 9.2, 10.1, 11.2, 'P'),
(124, 71, 6.6, 7.1, 7.8, 8.5, 9.3, 10.3, 11.3, 'P'),
(125, 71.5, 6.7, 7.2, 7.9, 8.6, 9.4, 10.4, 11.5, 'P'),
(126, 72, 6.7, 7.3, 8, 8.7, 9.5, 10.5, 11.6, 'P'),
(127, 72.5, 6.8, 7.4, 8.1, 8.8, 9.7, 10.6, 11.7, 'P'),
(128, 73, 6.9, 7.5, 8.1, 8.9, 9.8, 10.7, 11.8, 'P'),
(129, 73.5, 7, 7.6, 8.2, 9, 9.9, 10.8, 12, 'P'),
(130, 74, 7, 7.6, 8.3, 9.1, 10, 11, 12.1, 'P'),
(131, 74.5, 7.1, 7.7, 8.4, 9.2, 10.1, 11.1, 12.2, 'P'),
(132, 75, 7.2, 7.8, 8.5, 9.3, 10.2, 11.2, 12.3, 'P'),
(133, 75.5, 7.2, 7.9, 8.6, 9.4, 10.3, 11.3, 12.5, 'P'),
(134, 76, 7.3, 8, 8.7, 9.5, 10.4, 11.4, 12.6, 'P'),
(135, 76.5, 7.4, 8, 8.7, 9.6, 10.5, 11.5, 12.7, 'P'),
(136, 77, 7.5, 8.1, 8.8, 9.6, 10.6, 11.6, 12.8, 'P'),
(137, 77.5, 7.5, 8.2, 8.9, 9.7, 10.7, 11.7, 12.9, 'P'),
(138, 78, 7.6, 8.3, 9, 9.8, 10.8, 11.8, 13.1, 'P'),
(139, 78.5, 7.7, 8.4, 9.1, 9.9, 10.9, 12, 13.2, 'P'),
(140, 79, 7.8, 8.4, 9.2, 10, 11, 12.1, 13.3, 'P'),
(141, 79.5, 7.8, 8.5, 9.3, 10.1, 11.1, 12.2, 13.4, 'P'),
(142, 80, 7.9, 8.6, 9.4, 10.2, 11.2, 12.3, 13.6, 'P'),
(143, 80.5, 8, 8.7, 9.5, 10.3, 11.3, 12.4, 13.7, 'P'),
(144, 81, 8.1, 8.8, 9.6, 10.4, 11.4, 12.6, 13.9, 'P'),
(145, 81.5, 8.2, 8.9, 9.7, 10.6, 11.6, 12.7, 14, 'P'),
(146, 82, 8.3, 9, 9.8, 10.7, 11.7, 12.8, 14.1, 'P'),
(147, 82.5, 8.4, 9.1, 9.9, 10.8, 11.8, 13, 14.3, 'P'),
(148, 83, 8.5, 9.2, 10, 10.9, 11.9, 13.1, 14.5, 'P'),
(149, 83.5, 8.5, 9.3, 10.1, 11, 12.1, 13.3, 14.6, 'P'),
(150, 84, 8.6, 9.4, 10.2, 11.1, 12.2, 13.4, 14.8, 'P'),
(151, 84.5, 8.7, 9.5, 10.3, 11.3, 12.3, 13.5, 14.9, 'P'),
(152, 85, 8.8, 9.6, 10.4, 11.4, 12.5, 13.7, 15.1, 'P'),
(153, 85.5, 8.9, 9.7, 10.6, 11.5, 12.6, 13.8, 15.3, 'P'),
(154, 86, 9, 9.8, 10.7, 11.6, 12.7, 14, 15.4, 'P'),
(155, 86.5, 9.1, 9.9, 10.8, 11.8, 12.9, 14.2, 15.6, 'P'),
(156, 87, 9.2, 10, 10.9, 11.9, 13, 14.3, 15.8, 'P'),
(157, 87.5, 9.3, 10.1, 11, 12, 13.2, 14.5, 15.9, 'P'),
(158, 88, 9.4, 10.2, 11.1, 12.1, 13.3, 14.6, 16.1, 'P'),
(159, 88.5, 9.5, 10.3, 11.2, 12.3, 13.4, 14.8, 16.3, 'P'),
(160, 89, 9.6, 10.4, 11.4, 12.4, 13.6, 14.9, 16.4, 'P'),
(161, 89.5, 9.7, 10.5, 11.5, 12.5, 13.7, 15.1, 16.6, 'P'),
(162, 90, 9.8, 10.6, 11.6, 12.6, 13.8, 15.2, 16.8, 'P'),
(163, 90.5, 9.9, 10.7, 11.7, 12.8, 14, 15.4, 16.9, 'P'),
(164, 91, 10, 10.9, 11.8, 12.9, 14.1, 15.5, 17.1, 'P'),
(165, 91.5, 10.1, 11, 11.9, 13, 14.3, 15.7, 17.3, 'P'),
(166, 92, 10.2, 11.1, 12, 13.1, 14.4, 15.8, 17.4, 'P'),
(167, 92.5, 10.3, 11.2, 12.1, 13.3, 14.5, 16, 17.6, 'P'),
(168, 93, 10.4, 11.3, 12.3, 13.4, 14.7, 16.1, 17.8, 'P'),
(169, 93.5, 10.5, 11.4, 12.4, 13.5, 14.8, 16.3, 17.9, 'P'),
(170, 94, 10.6, 11.5, 12.5, 13.6, 14.9, 16.4, 18.1, 'P'),
(171, 94.5, 10.7, 11.6, 12.6, 13.8, 15.1, 16.6, 18.3, 'P'),
(172, 95, 10.8, 11.7, 12.7, 13.9, 15.2, 16.7, 18.5, 'P'),
(173, 95.5, 10.8, 11.8, 12.8, 14, 15.4, 16.9, 18.6, 'P'),
(174, 96, 10.9, 11.9, 12.9, 14.1, 15.5, 17, 18.8, 'P'),
(175, 96.5, 11, 12, 13.1, 14.3, 15.6, 17.2, 19, 'P'),
(176, 97, 11.1, 12.1, 13.2, 14.4, 15.8, 17.4, 19.2, 'P'),
(177, 97.5, 11.2, 12.2, 13.3, 14.5, 15.9, 17.5, 19.3, 'P'),
(178, 98, 11.3, 12.3, 13.4, 14.7, 16.1, 17.7, 19.5, 'P'),
(179, 98.5, 11.4, 12.4, 13.5, 14.8, 16.2, 17.9, 19.7, 'P'),
(180, 99, 11.5, 12.5, 13.7, 14.9, 16.4, 18, 19.9, 'P'),
(181, 99.5, 11.6, 12.7, 13.8, 15.1, 16.5, 18.2, 20.1, 'P'),
(182, 100, 11.7, 12.8, 13.9, 15.2, 16.7, 18.4, 20.3, 'P'),
(183, 100.5, 11.9, 12.9, 14.1, 15.4, 16.9, 18.6, 20.5, 'P'),
(184, 101, 12, 13, 14.2, 15.5, 17, 18.7, 20.7, 'P'),
(185, 101.5, 12.1, 13.1, 14.3, 15.7, 17.2, 18.9, 20.9, 'P'),
(186, 102, 12.2, 13.3, 14.5, 15.8, 17.4, 19.1, 21.1, 'P'),
(187, 102.5, 12.3, 13.4, 14.6, 16, 17.5, 19.3, 21.4, 'P'),
(188, 103, 12.4, 13.5, 14.7, 16.1, 17.7, 19.5, 21.6, 'P'),
(189, 103.5, 12.5, 13.6, 14.9, 16.3, 17.9, 19.7, 21.8, 'P'),
(190, 104, 12.6, 13.8, 15, 16.4, 18.1, 19.9, 22, 'P'),
(191, 104.5, 12.8, 13.9, 15.2, 16.6, 18.2, 20.1, 22.3, 'P'),
(192, 105, 12.9, 14, 15.3, 16.8, 18.4, 20.3, 22.5, 'P'),
(193, 105.5, 13, 14.2, 15.5, 16.9, 18.6, 20.5, 22.7, 'P'),
(194, 106, 13.1, 14.3, 15.6, 17.1, 18.8, 20.8, 23, 'P'),
(195, 106.5, 13.3, 14.5, 15.8, 17.3, 19, 21, 23.2, 'P'),
(196, 107, 13.4, 14.6, 15.9, 17.5, 19.2, 21.2, 23.5, 'P'),
(197, 107.5, 13.5, 14.7, 16.1, 17.7, 19.4, 21.4, 23.7, 'P'),
(198, 108, 13.7, 14.9, 16.3, 17.8, 19.6, 21.7, 24, 'P'),
(199, 108.5, 13.8, 15, 16.4, 18, 19.8, 21.9, 24.3, 'P'),
(200, 109, 13.9, 15.2, 16.6, 18.2, 20, 22.1, 24.5, 'P'),
(201, 109.5, 14.1, 15.4, 16.8, 18.4, 20.3, 22.4, 24.8, 'P'),
(202, 110, 14.2, 15.5, 17, 18.6, 20.5, 22.6, 25.1, 'P'),
(203, 110.5, 14.4, 15.7, 17.1, 18.8, 20.7, 22.9, 25.4, 'P'),
(204, 111, 14.5, 15.8, 17.3, 19, 20.9, 23.1, 25.7, 'P'),
(205, 111.5, 14.7, 16, 17.5, 19.2, 21.2, 23.4, 26, 'P'),
(206, 112, 14.8, 16.2, 17.7, 19.4, 21.4, 23.6, 26.2, 'P'),
(207, 112.5, 15, 16.3, 17.9, 19.6, 21.6, 23.9, 26.5, 'P'),
(208, 113, 15.1, 16.5, 18, 19.8, 21.8, 24.2, 26.8, 'P'),
(209, 113.5, 15.3, 16.7, 18.2, 20, 22.1, 24.4, 27.1, 'P'),
(210, 114, 15.4, 16.8, 18.4, 20.2, 22.3, 24.7, 27.4, 'P'),
(211, 114.5, 15.6, 17, 18.6, 20.5, 22.6, 25, 27.8, 'P'),
(212, 115, 15.7, 17.2, 18.8, 20.7, 22.8, 25.2, 28.1, 'P'),
(213, 115.5, 15.9, 17.3, 19, 20.9, 23, 25.5, 28.4, 'P'),
(214, 116, 16, 17.5, 19.2, 21.1, 23.3, 25.8, 28.7, 'P'),
(215, 116.5, 16.2, 17.7, 19.4, 21.3, 23.5, 26.1, 29, 'P'),
(216, 117, 16.3, 17.8, 19.6, 21.5, 23.8, 26.3, 29.3, 'P'),
(217, 117.5, 16.5, 18, 19.8, 21.7, 24, 26.6, 29.6, 'P'),
(218, 118, 16.6, 18.2, 19.9, 22, 24.2, 26.9, 29.9, 'P'),
(219, 118.5, 16.8, 18.4, 20.1, 22.2, 24.5, 27.2, 30.3, 'P'),
(220, 119, 16.9, 18.5, 20.3, 22.4, 24.7, 27.4, 30.6, 'P'),
(221, 119.5, 17.1, 18.7, 20.5, 22.6, 25, 27.7, 30.9, 'P'),
(222, 120, 17.3, 18.9, 20.7, 22.8, 25.2, 28, 31.2, 'P');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bb_u`
--

CREATE TABLE `tbl_bb_u` (
  `id_bbu` int(11) NOT NULL,
  `umur` double NOT NULL,
  `m3SD` double NOT NULL,
  `m2SD` double NOT NULL,
  `m1SD` double NOT NULL,
  `median` double NOT NULL,
  `p1SD` double NOT NULL,
  `p2SD` double NOT NULL,
  `p3SD` double NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bb_u`
--

INSERT INTO `tbl_bb_u` (`id_bbu`, `umur`, `m3SD`, `m2SD`, `m1SD`, `median`, `p1SD`, `p2SD`, `p3SD`, `jenis_kelamin`) VALUES
(1, 0, 2.1, 2.5, 2.9, 3.3, 3.9, 4.4, 5, 'L'),
(2, 1, 2.9, 3.4, 3.9, 4.5, 5.1, 5.8, 6.6, 'L'),
(3, 2, 3.8, 4.3, 4.9, 5.6, 6.3, 7.1, 8, 'L'),
(4, 3, 4.4, 5, 5.7, 6.4, 7.2, 8, 9, 'L'),
(5, 4, 4.9, 5.6, 6.2, 7, 7.8, 8.7, 9.7, 'L'),
(6, 5, 5.3, 6, 6.7, 7.5, 8.4, 9.3, 10.4, 'L'),
(7, 6, 5.7, 6.4, 7.1, 7.9, 8.8, 9.8, 10.9, 'L'),
(8, 7, 5.9, 6.7, 7.4, 8.3, 9.2, 10.3, 11.4, 'L'),
(9, 8, 6.2, 6.9, 7.7, 8.6, 9.6, 10.7, 11.9, 'L'),
(10, 9, 6.4, 7.1, 8, 8.9, 9.9, 11, 12.3, 'L'),
(11, 10, 6.6, 7.4, 8.2, 9.2, 10.2, 11.4, 12.7, 'L'),
(12, 11, 6.8, 7.6, 8.4, 9.4, 10.5, 11.7, 13, 'L'),
(13, 12, 6.9, 7.7, 8.6, 9.6, 10.8, 12, 13.3, 'L'),
(14, 13, 7.1, 7.9, 8.8, 9.9, 11, 12.3, 13.7, 'L'),
(15, 14, 7.2, 8.1, 9, 10.1, 11.3, 12.6, 14, 'L'),
(16, 15, 7.4, 8.3, 9.2, 10.3, 11.5, 12.8, 14.3, 'L'),
(17, 16, 7.5, 8.4, 9.4, 10.5, 11.7, 13.1, 14.6, 'L'),
(18, 17, 7.7, 8.6, 9.6, 10.7, 12, 13.4, 14.9, 'L'),
(19, 18, 7.8, 8.8, 9.8, 10.9, 12.2, 13.7, 15.3, 'L'),
(20, 19, 8, 8.9, 10, 11.1, 12.5, 13.9, 15.6, 'L'),
(21, 20, 8.1, 9.1, 10.1, 11.3, 12.7, 14.2, 15.9, 'L'),
(22, 21, 8.2, 9.2, 10.3, 11.5, 12.9, 14.5, 16.2, 'L'),
(23, 22, 8.4, 9.4, 10.5, 11.8, 13.2, 14.7, 16.5, 'L'),
(24, 23, 8.5, 9.5, 10.7, 12, 13.4, 15, 16.8, 'L'),
(25, 24, 8.6, 9.7, 10.8, 12.2, 13.6, 15.3, 17.1, 'L'),
(26, 25, 8.8, 9.8, 11, 12.4, 13.9, 15.5, 17.5, 'L'),
(27, 26, 8.9, 10, 11.2, 12.5, 14.1, 15.8, 17.8, 'L'),
(28, 27, 9, 10.1, 11.3, 12.7, 14.3, 16.1, 18.1, 'L'),
(29, 28, 9.1, 10.2, 11.5, 12.9, 14.5, 16.3, 18.4, 'L'),
(30, 29, 9.2, 10.4, 11.7, 13.1, 14.8, 16.6, 18.7, 'L'),
(31, 30, 9.4, 10.5, 11.8, 13.3, 15, 16.9, 19, 'L'),
(32, 31, 9.5, 10.7, 12, 13.5, 15.2, 17.1, 19.3, 'L'),
(33, 32, 9.6, 10.8, 12.1, 13.7, 15.4, 17.4, 19.6, 'L'),
(34, 33, 9.7, 10.9, 12.3, 13.8, 15.6, 17.6, 19.9, 'L'),
(35, 34, 9.8, 11, 12.4, 14, 15.8, 17.8, 20.2, 'L'),
(36, 35, 9.9, 11.2, 12.6, 14.2, 16, 18.1, 20.4, 'L'),
(37, 36, 10, 11.3, 12.7, 14.3, 16.2, 18.3, 20.7, 'L'),
(38, 37, 10.1, 11.4, 12.9, 14.5, 16.4, 18.6, 21, 'L'),
(39, 38, 10.2, 11.5, 13, 14.7, 16.6, 18.8, 21.3, 'L'),
(40, 39, 10.3, 11.6, 13.1, 14.8, 16.8, 19, 21.6, 'L'),
(41, 40, 10.4, 11.8, 13.3, 15, 17, 19.3, 21.9, 'L'),
(42, 41, 10.5, 11.9, 13.4, 15.2, 17.2, 19.5, 22.1, 'L'),
(43, 42, 10.6, 12, 13.6, 15.3, 17.4, 19.7, 22.4, 'L'),
(44, 43, 10.7, 12.1, 13.7, 15.5, 17.6, 20, 22.7, 'L'),
(45, 44, 10.8, 12.2, 13.8, 15.7, 17.8, 20.2, 23, 'L'),
(46, 45, 10.9, 12.4, 14, 15.8, 18, 20.5, 23.3, 'L'),
(47, 46, 11, 12.5, 14.1, 16, 18.2, 20.7, 23.6, 'L'),
(48, 47, 11.1, 12.6, 14.3, 16.2, 18.4, 20.9, 23.9, 'L'),
(49, 48, 11.2, 12.7, 14.4, 16.3, 18.6, 21.2, 24.2, 'L'),
(50, 49, 11.3, 12.8, 14.5, 16.5, 18.8, 21.4, 24.5, 'L'),
(51, 50, 11.4, 12.9, 14.7, 16.7, 19, 21.7, 24.8, 'L'),
(52, 51, 11.5, 13.1, 14.8, 16.8, 19.2, 21.9, 25.1, 'L'),
(53, 52, 11.6, 13.2, 15, 17, 19.4, 22.2, 25.4, 'L'),
(54, 53, 11.7, 13.3, 15.1, 17.2, 19.6, 22.4, 25.7, 'L'),
(55, 54, 11.8, 13.4, 15.2, 17.3, 19.8, 22.7, 26, 'L'),
(56, 55, 11.9, 13.5, 15.4, 17.5, 20, 22.9, 26.3, 'L'),
(57, 56, 12, 13.6, 15.5, 17.7, 20.2, 23.2, 26.6, 'L'),
(58, 57, 12.1, 13.7, 15.6, 17.8, 20.4, 23.4, 26.9, 'L'),
(59, 58, 12.2, 13.8, 15.8, 18, 20.6, 23.7, 27.2, 'L'),
(60, 59, 12.3, 14, 15.9, 18.2, 20.8, 23.9, 27.6, 'L'),
(61, 60, 12.4, 14.1, 16, 18.3, 21, 24.2, 27.9, 'L'),
(62, 0, 2, 2.4, 2.8, 3.2, 3.7, 4.2, 4.8, 'P'),
(63, 1, 2.7, 3.2, 3.6, 4.2, 4.8, 5.5, 6.2, 'P'),
(64, 2, 3.4, 3.9, 4.5, 5.1, 5.8, 6.6, 7.5, 'P'),
(65, 3, 4, 4.5, 5.2, 5.8, 6.6, 7.5, 8.5, 'P'),
(66, 4, 4.4, 5, 5.7, 6.4, 7.3, 8.2, 9.3, 'P'),
(67, 5, 4.8, 5.4, 6.1, 6.9, 7.8, 8.8, 10, 'P'),
(68, 6, 5.1, 5.7, 6.5, 7.3, 8.2, 9.3, 10.6, 'P'),
(69, 7, 5.3, 6, 6.8, 7.6, 8.6, 9.8, 11.1, 'P'),
(70, 8, 5.6, 6.3, 7, 7.9, 9, 10.2, 11.6, 'P'),
(71, 9, 5.8, 6.5, 7.3, 8.2, 9.3, 10.5, 12, 'P'),
(72, 10, 5.9, 6.7, 7.5, 8.5, 9.6, 10.9, 12.4, 'P'),
(73, 11, 6.1, 6.9, 7.7, 8.7, 9.9, 11.2, 12.8, 'P'),
(74, 12, 6.3, 7, 7.9, 8.9, 10.1, 11.5, 13.1, 'P'),
(75, 13, 6.4, 7.2, 8.1, 9.2, 10.4, 11.8, 13.5, 'P'),
(76, 14, 6.6, 7.4, 8.3, 9.4, 10.6, 12.1, 13.8, 'P'),
(77, 15, 6.7, 7.6, 8.5, 9.6, 10.9, 12.4, 14.1, 'P'),
(78, 16, 6.9, 7.7, 8.7, 9.8, 11.1, 12.6, 14.5, 'P'),
(79, 17, 7, 7.9, 8.9, 10, 11.4, 12.9, 14.8, 'P'),
(80, 18, 7.2, 8.1, 9.1, 10.2, 11.6, 13.2, 15.1, 'P'),
(81, 19, 7.3, 8.2, 9.2, 10.4, 11.8, 13.5, 15.4, 'P'),
(82, 20, 7.5, 8.4, 9.4, 10.6, 12.1, 13.7, 15.7, 'P'),
(83, 21, 7.6, 8.6, 9.6, 10.9, 12.3, 14, 16, 'P'),
(84, 22, 7.8, 8.7, 9.8, 11.1, 12.5, 14.3, 16.4, 'P'),
(85, 23, 7.9, 8.9, 10, 11.3, 12.8, 14.6, 16.7, 'P'),
(86, 24, 8.1, 9, 10.2, 11.5, 13, 14.8, 17, 'P'),
(87, 25, 8.2, 9.2, 10.3, 11.7, 13.3, 15.1, 17.3, 'P'),
(88, 26, 8.4, 9.4, 10.5, 11.9, 13.5, 15.4, 17.7, 'P'),
(89, 27, 8.5, 9.5, 10.7, 12.1, 13.7, 15.7, 18, 'P'),
(90, 28, 8.6, 9.7, 10.9, 12.3, 14, 16, 18.3, 'P'),
(91, 29, 8.8, 9.8, 11.1, 12.5, 14.2, 16.2, 18.7, 'P'),
(92, 30, 8.9, 10, 11.2, 12.7, 14.4, 16.5, 19, 'P'),
(93, 31, 9, 10.1, 11.4, 12.9, 14.7, 16.8, 19.3, 'P'),
(94, 32, 9.1, 10.3, 11.6, 13.1, 14.9, 17.1, 19.6, 'P'),
(95, 33, 9.3, 10.4, 11.7, 13.3, 15.1, 17.3, 20, 'P'),
(96, 34, 9.4, 10.5, 11.9, 13.5, 15.4, 17.6, 20.3, 'P'),
(97, 35, 9.5, 10.7, 12, 13.7, 15.6, 17.9, 20.6, 'P'),
(98, 36, 9.6, 10.8, 12.2, 13.9, 15.8, 18.1, 20.9, 'P'),
(99, 37, 9.7, 10.9, 12.4, 14, 16, 18.4, 21.3, 'P'),
(100, 38, 9.8, 11.1, 12.5, 14.2, 16.3, 18.7, 21.6, 'P'),
(101, 39, 9.9, 11.2, 12.7, 14.4, 16.5, 19, 22, 'P'),
(102, 40, 10.1, 11.3, 12.8, 14.6, 16.7, 19.2, 22.3, 'P'),
(103, 41, 10.2, 11.5, 13, 14.8, 16.9, 19.5, 22.7, 'P'),
(104, 42, 10.3, 11.6, 13.1, 15, 17.2, 19.8, 23, 'P'),
(105, 43, 10.4, 11.7, 13.3, 15.2, 17.4, 20.1, 23.4, 'P'),
(106, 44, 10.5, 11.8, 13.4, 15.3, 17.6, 20.4, 23.7, 'P'),
(107, 45, 10.6, 12, 13.6, 15.5, 17.8, 20.7, 24.1, 'P'),
(108, 46, 10.7, 12.1, 13.7, 15.7, 18.1, 20.9, 24.5, 'P'),
(109, 47, 10.8, 12.2, 13.9, 15.9, 18.3, 21.2, 24.8, 'P'),
(110, 48, 10.9, 12.3, 14, 16.1, 18.5, 21.5, 25.2, 'P'),
(111, 49, 11, 12.4, 14.2, 16.3, 18.8, 21.8, 25.5, 'P'),
(112, 50, 11.1, 12.6, 14.3, 16.4, 19, 22.1, 25.9, 'P'),
(113, 51, 11.2, 12.7, 14.5, 16.6, 19.2, 22.4, 26.3, 'P'),
(114, 52, 11.3, 12.8, 14.6, 16.8, 19.4, 22.6, 26.6, 'P'),
(115, 53, 11.4, 12.9, 14.8, 17, 19.7, 22.9, 27, 'P'),
(116, 54, 11.5, 13, 14.9, 17.2, 19.9, 23.2, 27.4, 'P'),
(117, 55, 11.6, 13.2, 15.1, 17.3, 20.1, 23.5, 27.7, 'P'),
(118, 56, 11.7, 13.3, 15.2, 17.5, 20.3, 23.8, 28.1, 'P'),
(119, 57, 11.8, 13.4, 15.3, 17.7, 20.6, 24.1, 28.5, 'P'),
(120, 58, 11.9, 13.5, 15.5, 17.9, 20.8, 24.4, 28.8, 'P'),
(121, 59, 12, 13.6, 15.6, 18, 21, 24.6, 29.2, 'P'),
(122, 60, 12.1, 13.7, 15.8, 18.2, 21.2, 24.9, 29.5, 'P');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_desa`
--

CREATE TABLE `tbl_desa` (
  `id_desa` int(11) NOT NULL,
  `nama_desa` tinytext NOT NULL,
  `longtd` double NOT NULL,
  `latd` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_desa`
--

INSERT INTO `tbl_desa` (`id_desa`, `nama_desa`, `longtd`, `latd`) VALUES
(1, 'Kalisat', -8.125503434883228, 113.80904096228058),
(2, 'Ajung', -8.132476275692488, 113.82167901703589),
(3, 'Gambiran', -8.154649283611384, 113.81099439928921),
(4, 'Glagahwero', -8.140062, 113.805404),
(5, 'Gumuksari', -8.122859810723222, 113.78100150785717),
(6, 'Patempuran', -8.116063, 113.796753),
(7, 'Plalangan', -8.141124159209618, 113.82727512557274),
(8, 'Sebanen', -8.098947704220556, 113.82152334856546),
(9, 'Sukoreno', -8.103997, 113.787054),
(10, 'Sumber Jeruk', -8.131348732809496, 113.7961014636392),
(11, 'Sumber Kalong', -8.086019328665126, 113.79139447897944),
(12, 'Sumber Ketempa', -8.117572574122546, 113.82618268324286),
(13, 'Tegal Besar', -8.191473, 113.691994);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_imtu`
--

CREATE TABLE `tbl_imtu` (
  `id_imtu` int(11) NOT NULL,
  `umur` varchar(3) NOT NULL,
  `m3SD` double NOT NULL,
  `m2SD` double NOT NULL,
  `m1SD` double NOT NULL,
  `median` double NOT NULL,
  `p1SD` double NOT NULL,
  `p2SD` double NOT NULL,
  `p3SD` double NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_imtu`
--

INSERT INTO `tbl_imtu` (`id_imtu`, `umur`, `m3SD`, `m2SD`, `m1SD`, `median`, `p1SD`, `p2SD`, `p3SD`, `jenis_kelamin`) VALUES
(1, '0', 10.2, 11.1, 12.2, 13.4, 14.8, 16.3, 18.1, 'L'),
(2, '1', 11.3, 12.4, 13.6, 14.9, 16.3, 17.8, 19.4, 'L'),
(3, '2', 12.5, 13.7, 15, 16.3, 17.8, 19.4, 21.1, 'L'),
(4, '3', 13.1, 14.3, 15.5, 16.9, 18.4, 20, 21.8, 'L'),
(5, '4', 13.4, 14.5, 15.8, 17.2, 18.7, 20.3, 22.1, 'L'),
(6, '5', 13.5, 14.7, 15.9, 17.3, 18.8, 20.5, 22.3, 'L'),
(7, '6', 13.6, 14.7, 16, 17.3, 18.8, 20.5, 22.3, 'L'),
(8, '7', 13.7, 14.8, 16, 17.3, 18.8, 20.5, 22.3, 'L'),
(9, '8', 13.6, 14.7, 15.9, 17.3, 18.7, 20.4, 22.2, 'L'),
(10, '9', 13.6, 14.7, 15.8, 17.2, 18.6, 20.3, 22.1, 'L'),
(11, '10', 13.5, 14.6, 15.7, 17, 18.5, 20.1, 22, 'L'),
(12, '11', 13.4, 14.5, 15.6, 16.9, 18.4, 20, 21.8, 'L'),
(13, '12', 13.4, 14.4, 15.5, 16.8, 18.2, 19.8, 21.6, 'L'),
(14, '13', 13.3, 14.3, 15.4, 16.7, 18.1, 19.7, 21.5, 'L'),
(15, '14', 13.2, 14.2, 15.3, 16.6, 18, 19.5, 21.3, 'L'),
(16, '15', 13.1, 14.1, 15.2, 16.4, 17.8, 19.4, 21.2, 'L'),
(17, '16', 13.1, 14, 15.1, 16.3, 17.7, 19.3, 21, 'L'),
(18, '17', 13, 13.9, 15, 16.2, 17.6, 19.1, 20.9, 'L'),
(19, '18', 12.9, 13.9, 14.9, 16.1, 17.5, 19, 20.8, 'L'),
(20, '19', 12.9, 13.8, 14.9, 16.1, 17.4, 18.9, 20.7, 'L'),
(21, '20', 12.8, 13.7, 14.8, 16, 17.3, 18.8, 20.6, 'L'),
(22, '21', 12.8, 13.7, 14.7, 15.9, 17.2, 18.7, 20.5, 'L'),
(23, '22', 12.7, 13.6, 14.7, 15.8, 17.2, 18.7, 20.4, 'L'),
(24, '23', 12.7, 13.6, 14.6, 15.8, 17.1, 18.6, 20.3, 'L'),
(25, '24a', 12.7, 13.6, 14.6, 15.7, 17, 18.5, 20.3, 'L'),
(26, '24b', 12.9, 13.8, 14.8, 16, 17.3, 18.9, 20.6, 'L'),
(27, '25', 12.8, 13.8, 14.8, 16, 17.3, 18.8, 20.5, 'L'),
(28, '26', 12.8, 13.7, 14.8, 15.9, 17.3, 18.8, 20.5, 'L'),
(29, '27', 12.7, 13.7, 14.7, 15.9, 17.2, 18.7, 20.4, 'L'),
(30, '28', 12.7, 13.6, 14.7, 15.9, 17.2, 18.7, 20.4, 'L'),
(31, '29', 12.7, 13.6, 14.7, 15.8, 17.1, 18.6, 20.3, 'L'),
(32, '30', 12.6, 13.6, 14.6, 15.8, 17.1, 18.6, 20.2, 'L'),
(33, '31', 12.6, 13.5, 14.6, 15.8, 17.1, 18.5, 20.2, 'L'),
(34, '32', 12.5, 13.5, 14.6, 15.7, 17, 18.5, 20.1, 'L'),
(35, '33', 12.5, 13.5, 14.5, 15.7, 17, 18.5, 20.1, 'L'),
(36, '34', 12.5, 13.4, 14.5, 15.7, 17, 18.4, 20, 'L'),
(37, '35', 12.4, 13.4, 14.5, 15.6, 16.9, 18.4, 20, 'L'),
(38, '36', 12.4, 13.4, 14.4, 15.6, 16.9, 18.4, 20, 'L'),
(39, '37', 12.4, 13.3, 14.4, 15.6, 16.9, 18.3, 19.9, 'L'),
(40, '38', 12.3, 13.3, 14.4, 15.5, 16.8, 18.3, 19.9, 'L'),
(41, '39', 12.3, 13.3, 14.3, 15.5, 16.8, 18.3, 19.9, 'L'),
(42, '40', 12.3, 13.2, 14.3, 15.5, 16.8, 18.2, 19.9, 'L'),
(43, '41', 12.2, 13.2, 14.3, 15.5, 16.8, 18.2, 19.9, 'L'),
(44, '42', 12.2, 13.2, 14.3, 15.4, 16.8, 18.2, 19.8, 'L'),
(45, '43', 12.2, 13.2, 14.2, 15.4, 16.7, 18.2, 19.8, 'L'),
(46, '44', 12.2, 13.1, 14.2, 15.4, 16.7, 18.2, 19.8, 'L'),
(47, '45', 12.2, 13.1, 14.2, 15.4, 16.7, 18.2, 19.8, 'L'),
(48, '46', 12.1, 13.1, 14.2, 15.4, 16.7, 18.2, 19.8, 'L'),
(49, '47', 12.1, 13.1, 14.2, 15.3, 16.7, 18.2, 19.9, 'L'),
(50, '48', 12.1, 13.1, 14.1, 15.3, 16.7, 18.2, 19.9, 'L'),
(51, '49', 12.1, 13, 14.1, 15.3, 16.7, 18.2, 19.9, 'L'),
(52, '50', 12.1, 13, 14.1, 15.3, 16.7, 18.2, 19.9, 'L'),
(53, '51', 12.1, 13, 14.1, 15.3, 16.6, 18.2, 19.9, 'L'),
(54, '52', 12, 13, 14.1, 15.3, 16.6, 18.2, 19.9, 'L'),
(55, '53', 12, 13, 14.1, 15.3, 16.6, 18.2, 20, 'L'),
(56, '54', 12, 13, 14, 15.3, 16.6, 18.2, 20, 'L'),
(57, '55', 12, 13, 14, 15.2, 16.6, 18.2, 20, 'L'),
(58, '56', 12, 12.9, 14, 15.2, 16.6, 18.2, 20.1, 'L'),
(59, '57', 12, 12.9, 14, 15.2, 16.6, 18.2, 20.1, 'L'),
(60, '58', 12, 12.9, 14, 15.2, 16.6, 18.3, 20.2, 'L'),
(61, '59', 12, 12.9, 14, 15.2, 16.6, 18.3, 20.2, 'L'),
(62, '60', 12, 12.9, 14, 15.2, 16.6, 18.3, 20.3, 'L'),
(63, '0', 10.1, 11.1, 12.2, 13.3, 14.6, 16.1, 17.7, 'P'),
(64, '1', 10.8, 12, 13.2, 14.6, 16, 17.5, 19.1, 'P'),
(65, '2', 11.8, 13, 14.3, 15.8, 17.3, 19, 20.7, 'P'),
(66, '3', 12.4, 13.6, 14.9, 16.4, 17.9, 19.7, 21.5, 'P'),
(67, '4', 12.7, 13.9, 15.2, 16.7, 18.3, 20, 22, 'P'),
(68, '5', 12.9, 14.1, 15.4, 16.8, 18.4, 20.2, 22.2, 'P'),
(69, '6', 13, 14.1, 15.5, 16.9, 18.5, 20.3, 22.3, 'P'),
(70, '7', 13, 14.2, 15.5, 16.9, 18.5, 20.3, 22.3, 'P'),
(71, '8', 13, 14.1, 15.4, 16.8, 18.4, 20.2, 22.2, 'P'),
(72, '9', 12.9, 14.1, 15.3, 16.7, 18.3, 20.1, 22.1, 'P'),
(73, '10', 12.9, 14, 15.2, 16.6, 18.2, 19.9, 21.9, 'P'),
(74, '11', 12.8, 13.9, 15.1, 16.5, 18, 19.8, 21.8, 'P'),
(75, '12', 12.7, 13.8, 15, 16.4, 17.9, 19.6, 21.6, 'P'),
(76, '13', 12.6, 13.7, 14.9, 16.2, 17.7, 19.5, 21.4, 'P'),
(77, '14', 12.6, 13.6, 14.8, 16.1, 17.6, 19.3, 21.3, 'P'),
(78, '15', 12.5, 13.5, 14.7, 16, 17.5, 19.2, 21.1, 'P'),
(79, '16', 12.4, 13.5, 14.6, 15.9, 17.4, 19.1, 21, 'P'),
(80, '17', 12.4, 13.4, 14.5, 15.8, 17.3, 18.9, 20.9, 'P'),
(81, '18', 12.3, 13.3, 14.4, 15.7, 17.2, 18.8, 20.8, 'P'),
(82, '19', 12.3, 13.3, 14.4, 15.7, 17.1, 18.8, 20.7, 'P'),
(83, '20', 12.2, 13.2, 14.3, 15.6, 17, 18.7, 20.6, 'P'),
(84, '21', 12.2, 13.2, 14.3, 15.5, 17, 18.6, 20.5, 'P'),
(85, '22', 12.2, 13.1, 14.2, 15.5, 16.9, 18.5, 20.4, 'P'),
(86, '23', 12.2, 13.1, 14.2, 15.4, 16.9, 18.5, 20.4, 'P'),
(87, '24a', 12.1, 13.1, 14.2, 15.4, 16.8, 18.4, 20.3, 'P'),
(88, '24b', 12.4, 13.3, 14.4, 15.7, 17.1, 18.7, 20.6, 'P'),
(89, '25', 12.4, 13.3, 14.4, 15.7, 17.1, 18.7, 20.6, 'P'),
(90, '26', 12.3, 13.3, 14.4, 15.6, 17, 18.7, 20.6, 'P'),
(91, '27', 12.3, 13.3, 14.4, 15.6, 17, 18.6, 20.5, 'P'),
(92, '28', 12.3, 13.3, 14.3, 15.6, 17, 18.6, 20.5, 'P'),
(93, '29', 12.3, 13.2, 14.3, 15.6, 17, 18.6, 20.4, 'P'),
(94, '30', 12.3, 13.2, 14.3, 15.5, 16.9, 18.5, 20.4, 'P'),
(95, '31', 12.2, 13.2, 14.3, 15.5, 16.9, 18.5, 20.4, 'P'),
(96, '32', 12.2, 13.2, 14.3, 15.5, 16.9, 18.5, 20.4, 'P'),
(97, '33', 12.2, 13.1, 14.2, 15.5, 16.9, 18.5, 20.3, 'P'),
(98, '34', 12.2, 13.1, 14.2, 15.4, 16.8, 18.5, 20.3, 'P'),
(99, '35', 12.1, 13.1, 14.2, 15.4, 16.8, 18.4, 20.3, 'P'),
(100, '36', 12.1, 13.1, 14.2, 15.4, 16.8, 18.4, 20.3, 'P'),
(101, '37', 12.1, 13.1, 14.1, 15.4, 16.8, 18.4, 20.3, 'P'),
(102, '38', 12.1, 13, 14.1, 15.4, 16.8, 18.4, 20.3, 'P'),
(103, '39', 12, 13, 14.1, 15.3, 16.8, 18.4, 20.3, 'P'),
(104, '40', 12, 13, 14.1, 15.3, 16.8, 18.4, 20.3, 'P'),
(105, '41', 12, 13, 14.1, 15.3, 16.8, 18.4, 20.4, 'P'),
(106, '42', 12, 12.9, 14, 15.3, 16.8, 18.4, 20.4, 'P'),
(107, '43', 11.9, 12.9, 14, 15.3, 16.8, 18.4, 20.4, 'P'),
(108, '44', 11.9, 12.9, 14, 15.3, 16.8, 18.5, 20.4, 'P'),
(109, '45', 11.9, 12.9, 14, 15.3, 16.8, 18.5, 20.5, 'P'),
(110, '46', 11.9, 12.9, 14, 15.3, 16.8, 18.5, 20.5, 'P'),
(111, '47', 11.8, 12.8, 14, 15.3, 16.8, 18.5, 20.5, 'P'),
(112, '48', 11.8, 12.8, 14, 15.3, 16.8, 18.5, 20.6, 'P'),
(113, '49', 11.8, 12.8, 13.9, 15.3, 16.8, 18.5, 20.6, 'P'),
(114, '50', 11.8, 12.8, 13.9, 15.3, 16.8, 18.6, 20.7, 'P'),
(115, '51', 11.8, 12.8, 13.9, 15.3, 16.8, 18.6, 20.7, 'P'),
(116, '52', 11.7, 12.8, 13.9, 15.2, 16.8, 18.6, 20.7, 'P'),
(117, '53', 11.7, 12.7, 13.9, 15.3, 16.8, 18.6, 20.8, 'P'),
(118, '54', 11.7, 12.7, 13.9, 15.3, 16.8, 18.7, 20.8, 'P'),
(119, '55', 11.7, 12.7, 13.9, 15.3, 16.8, 18.7, 20.9, 'P'),
(120, '56', 11.7, 12.7, 13.9, 15.3, 16.8, 18.7, 20.9, 'P'),
(121, '57', 11.7, 12.7, 13.9, 15.3, 16.9, 18.7, 21, 'P'),
(122, '58', 11.7, 12.7, 13.9, 15.3, 16.9, 18.8, 21, 'P'),
(123, '59', 11.6, 12.7, 13.9, 15.3, 16.9, 18.8, 21, 'P'),
(124, '60', 11.6, 12.7, 13.9, 15.3, 16.9, 18.8, 21.1, 'P');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pbu`
--

CREATE TABLE `tbl_pbu` (
  `id_pbu` int(11) NOT NULL,
  `umur` varchar(3) NOT NULL,
  `m3SD` double NOT NULL,
  `m2SD` double NOT NULL,
  `m1SD` double NOT NULL,
  `median` double NOT NULL,
  `p1SD` double NOT NULL,
  `p2SD` double NOT NULL,
  `p3SD` double NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pbu`
--

INSERT INTO `tbl_pbu` (`id_pbu`, `umur`, `m3SD`, `m2SD`, `m1SD`, `median`, `p1SD`, `p2SD`, `p3SD`, `jenis_kelamin`) VALUES
(1, '0', 44.2, 46.1, 48, 49.9, 51.8, 53.7, 55.6, 'L'),
(2, '1', 48.9, 50.8, 52.8, 54.7, 56.7, 58.6, 60.6, 'L'),
(3, '2', 52.4, 54.4, 56.4, 58.4, 60.4, 62.4, 64.4, 'L'),
(4, '3', 55.3, 57.3, 59.4, 61.4, 63.5, 65.5, 67.6, 'L'),
(5, '4', 57.6, 59.7, 61.8, 63.9, 66, 68, 70.1, 'L'),
(6, '5', 59.6, 61.7, 63.8, 65.9, 68, 70.1, 72.2, 'L'),
(7, '6', 61.2, 63.3, 65.5, 67.6, 69.8, 71.9, 74, 'L'),
(8, '7', 62.7, 64.8, 67, 69.2, 71.3, 73.5, 75.7, 'L'),
(9, '8', 64, 66.2, 68.4, 70.6, 72.8, 75, 77.2, 'L'),
(10, '9', 65.2, 67.5, 69.7, 72, 74.2, 76.5, 78.7, 'L'),
(11, '10', 66.4, 68.7, 71, 73.3, 75.6, 77.9, 80.1, 'L'),
(12, '11', 67.6, 69.9, 72.2, 74.5, 76.9, 79.2, 81.5, 'L'),
(13, '12', 68.6, 71, 73.4, 75.7, 78.1, 80.5, 82.9, 'L'),
(14, '13', 69.6, 72.1, 74.5, 76.9, 79.3, 81.8, 84.2, 'L'),
(15, '14', 70.6, 73.1, 75.6, 78, 80.5, 83, 85.5, 'L'),
(16, '15', 71.6, 74.1, 76.6, 79.1, 81.7, 84.2, 86.7, 'L'),
(17, '16', 72.5, 75, 77.6, 80.2, 82.8, 85.4, 88, 'L'),
(18, '17', 73.3, 76, 78.6, 81.2, 83.9, 86.5, 89.2, 'L'),
(19, '18', 74.2, 76.9, 79.6, 82.3, 85, 87.7, 90.4, 'L'),
(20, '19', 75, 77.7, 80.5, 83.2, 86, 88.8, 91.5, 'L'),
(21, '20', 75.8, 78.6, 81.4, 84.2, 87, 89.8, 92.6, 'L'),
(22, '21', 76.5, 79.4, 82.3, 85.1, 88, 90.9, 93.8, 'L'),
(23, '22', 77.2, 80.2, 83.1, 86, 89, 91.9, 94.9, 'L'),
(24, '23', 78, 81, 83.9, 86.9, 89.9, 92.9, 95.9, 'L'),
(25, '24a', 78.7, 81.7, 84.8, 87.8, 90.9, 93.9, 97, 'L'),
(26, '24b', 78, 81, 84.1, 87.1, 90.2, 93.2, 96.3, 'L'),
(27, '25', 78.6, 81.7, 84.9, 88, 91.1, 94.2, 97.3, 'L'),
(28, '26', 79.3, 82.5, 85.6, 88.8, 92, 95.2, 98.3, 'L'),
(29, '27', 79.9, 83.1, 86.4, 89.6, 92.9, 96.1, 99.3, 'L'),
(30, '28', 80.5, 83.8, 87.1, 90.4, 93.7, 97, 100.3, 'L'),
(31, '29', 81.1, 84.5, 87.8, 91.2, 94.5, 97.9, 101.2, 'L'),
(32, '30', 81.7, 85.1, 88.5, 91.9, 95.3, 98.7, 102.1, 'L'),
(33, '31', 82.3, 85.7, 89.2, 92.7, 96.1, 99.6, 103, 'L'),
(34, '32', 82.8, 86.4, 89.9, 93.4, 96.9, 100.4, 103.9, 'L'),
(35, '33', 83.4, 86.9, 90.5, 94.1, 97.6, 101.2, 104.8, 'L'),
(36, '34', 83.9, 87.5, 91.1, 94.8, 98.4, 102, 105.6, 'L'),
(37, '35', 84.4, 88.1, 91.8, 95.4, 99.1, 102.7, 106.4, 'L'),
(38, '36', 85, 88.7, 92.4, 96.1, 99.8, 103.5, 107.2, 'L'),
(39, '37', 85.5, 89.2, 93, 96.7, 100.5, 104.2, 108, 'L'),
(40, '38', 86, 89.8, 93.6, 97.4, 101.2, 105, 108.8, 'L'),
(41, '39', 86.5, 90.3, 94.2, 98, 101.8, 105.7, 109.5, 'L'),
(42, '40', 87, 90.9, 94.7, 98.6, 102.5, 106.4, 110.3, 'L'),
(43, '41', 87.5, 91.4, 95.3, 99.2, 103.2, 107.1, 111, 'L'),
(44, '42', 88, 91.9, 95.9, 99.9, 103.8, 107.8, 111.7, 'L'),
(45, '43', 88.4, 92.4, 96.4, 100.4, 104.5, 108.5, 112.5, 'L'),
(46, '44', 88.9, 93, 97, 101, 105.1, 109.1, 113.2, 'L'),
(47, '45', 89.4, 93.5, 97.5, 101.6, 105.7, 109.8, 113.9, 'L'),
(48, '46', 89.8, 94, 98.1, 102.2, 106.3, 110.4, 114.6, 'L'),
(49, '47', 90.3, 94.4, 98.6, 102.8, 106.9, 111.1, 115.2, 'L'),
(50, '48', 90.7, 94.9, 99.1, 103.3, 107.5, 111.7, 115.9, 'L'),
(51, '49', 91.2, 95.4, 99.7, 103.9, 108.1, 112.4, 116.6, 'L'),
(52, '50', 91.6, 95.9, 100.2, 104.4, 108.7, 113, 117.3, 'L'),
(53, '51', 92.1, 96.4, 100.7, 105, 109.3, 113.6, 117.9, 'L'),
(54, '52', 92.5, 96.9, 101.2, 105.6, 109.9, 114.2, 118.6, 'L'),
(55, '53', 93, 97.4, 101.7, 106.1, 110.5, 114.9, 119.2, 'L'),
(56, '54', 93.4, 97.8, 102.3, 106.7, 111.1, 115.5, 119.9, 'L'),
(57, '55', 93.9, 98.3, 102.8, 107.2, 111.7, 116.1, 120.6, 'L'),
(58, '56', 94.3, 98.8, 103.3, 107.8, 112.3, 116.7, 121.2, 'L'),
(59, '57', 94.7, 99.3, 103.8, 108.3, 112.8, 117.4, 121.9, 'L'),
(60, '58', 95.2, 99.7, 104.3, 108.9, 113.4, 118, 122.6, 'L'),
(61, '59', 95.6, 100.2, 104.8, 109.4, 114, 118.6, 123.2, 'L'),
(62, '60', 96.1, 100.7, 105.3, 110, 114.6, 119.2, 123.9, 'L'),
(63, '0', 43.6, 45.4, 47.3, 49.1, 51, 52.9, 54.7, 'P'),
(64, '1', 47.8, 49.8, 51.7, 53.7, 55.6, 57.6, 59.5, 'P'),
(65, '2', 51, 53, 55, 57.1, 59.1, 61.1, 63.2, 'P'),
(66, '3', 53.5, 55.6, 57.7, 59.8, 61.9, 64, 66.1, 'P'),
(67, '4', 55.6, 57.8, 59.9, 62.1, 64.3, 66.4, 68.6, 'P'),
(68, '5', 57.4, 59.6, 61.8, 64, 66.2, 68.5, 70.7, 'P'),
(69, '6', 58.9, 61.2, 63.5, 65.7, 68, 70.3, 72.5, 'P'),
(70, '7', 60.3, 62.7, 65, 67.3, 69.6, 71.9, 74.2, 'P'),
(71, '8', 61.7, 64, 66.4, 68.7, 71.1, 73.5, 75.8, 'P'),
(72, '9', 62.9, 65.3, 67.7, 70.1, 72.6, 75, 77.4, 'P'),
(73, '10', 64.1, 66.5, 69, 71.5, 73.9, 76.4, 78.9, 'P'),
(74, '11', 65.2, 67.7, 70.3, 72.8, 75.3, 77.8, 80.3, 'P'),
(75, '12', 66.3, 68.9, 71.4, 74, 76.6, 79.2, 81.7, 'P'),
(76, '13', 67.3, 70, 72.6, 75.2, 77.8, 80.5, 83.1, 'P'),
(77, '14', 68.3, 71, 73.7, 76.4, 79.1, 81.7, 84.4, 'P'),
(78, '15', 69.3, 72, 74.8, 77.5, 80.2, 83, 85.7, 'P'),
(79, '16', 70.2, 73, 75.8, 78.6, 81.4, 84.2, 87, 'P'),
(80, '17', 71.1, 74, 76.8, 79.7, 82.5, 85.4, 88.2, 'P'),
(81, '18', 72, 74.9, 77.8, 80.7, 83.6, 86.5, 89.4, 'P'),
(82, '19', 72.8, 75.8, 78.8, 81.7, 84.7, 87.6, 90.6, 'P'),
(83, '20', 73.7, 76.7, 79.7, 82.7, 85.7, 88.7, 91.7, 'P'),
(84, '21', 74.5, 77.5, 80.6, 83.7, 86.7, 89.8, 92.9, 'P'),
(85, '22', 75.2, 78.4, 81.5, 84.6, 87.7, 90.8, 94, 'P'),
(86, '23', 76, 79.2, 82.3, 85.5, 88.7, 91.9, 95, 'P'),
(87, '24a', 76.7, 80, 83.2, 86.4, 89.6, 92.9, 96.1, 'P'),
(88, '24b', 76, 79.3, 82.5, 85.7, 88.9, 92.2, 95.4, 'P'),
(89, '25', 76.8, 80, 83.3, 86.6, 89.9, 93.1, 96.4, 'P'),
(90, '26', 77.5, 80.8, 84.1, 87.4, 90.8, 94.1, 97.4, 'P'),
(91, '27', 78.1, 81.5, 84.9, 88.3, 91.7, 95, 98.4, 'P'),
(92, '28', 78.8, 82.2, 85.7, 89.1, 92.5, 96, 99.4, 'P'),
(93, '29', 79.5, 82.9, 86.4, 89.9, 93.4, 96.9, 100.3, 'P'),
(94, '30', 80.1, 83.6, 87.1, 90.7, 94.2, 97.7, 101.3, 'P'),
(95, '31', 80.7, 84.3, 87.9, 91.4, 95, 98.6, 102.2, 'P'),
(96, '32', 81.3, 84.9, 88.6, 92.2, 95.8, 99.4, 103.1, 'P'),
(97, '33', 81.9, 85.6, 89.3, 92.9, 96.6, 100.3, 103.9, 'P'),
(98, '34', 82.5, 86.2, 89.9, 93.6, 97.4, 101.1, 104.8, 'P'),
(99, '35', 83.1, 86.8, 90.6, 94.4, 98.1, 101.9, 105.6, 'P'),
(100, '36', 83.6, 87.4, 91.2, 95.1, 98.9, 102.7, 106.5, 'P'),
(101, '37', 84.2, 88, 91.9, 95.7, 99.6, 103.4, 107.3, 'P'),
(102, '38', 84.7, 88.6, 92.5, 96.4, 100.3, 104.2, 108.1, 'P'),
(103, '39', 85.3, 89.2, 93.1, 97.1, 101, 105, 108.9, 'P'),
(104, '40', 85.8, 89.8, 93.8, 97.7, 101.7, 105.7, 109.7, 'P'),
(105, '41', 86.3, 90.4, 94.4, 98.4, 102.4, 106.4, 110.5, 'P'),
(106, '42', 86.8, 90.9, 95, 99, 103.1, 107.2, 111.2, 'P'),
(107, '43', 87.4, 91.5, 95.6, 99.7, 103.8, 107.9, 112, 'P'),
(108, '44', 87.9, 92, 96.2, 100.3, 104.5, 108.6, 112.7, 'P'),
(109, '45', 88.4, 92.5, 96.7, 100.9, 105.1, 109.3, 113.5, 'P'),
(110, '46', 88.9, 93.1, 97.3, 101.5, 105.8, 110, 114.2, 'P'),
(111, '47', 89.3, 93.6, 97.9, 102.1, 106.4, 110.7, 114.9, 'P'),
(112, '48', 89.8, 94.1, 98.4, 102.7, 107, 111.3, 115.7, 'P'),
(113, '49', 90.3, 94.6, 99, 103.3, 107.7, 112, 116.4, 'P'),
(114, '50', 90.7, 95.1, 99.5, 103.9, 108.3, 112.7, 117.1, 'P'),
(115, '51', 91.2, 95.6, 100.1, 104.5, 108.9, 113.3, 117.7, 'P'),
(116, '52', 91.7, 96.1, 100.6, 105, 109.5, 114, 118.4, 'P'),
(117, '53', 92.1, 96.6, 101.1, 105.6, 110.1, 114.6, 119.1, 'P'),
(118, '54', 92.6, 97.1, 101.6, 106.2, 110.7, 115.2, 119.8, 'P'),
(119, '55', 93, 97.6, 102.2, 106.7, 111.3, 115.9, 120.4, 'P'),
(120, '56', 93.4, 98.1, 102.7, 107.3, 111.9, 116.5, 121.1, 'P'),
(121, '57', 93.9, 98.5, 103.2, 107.8, 112.5, 117.1, 121.8, 'P'),
(122, '58', 94.3, 99, 103.7, 108.4, 113, 117.7, 122.4, 'P'),
(123, '59', 94.7, 99.5, 104.2, 108.9, 113.6, 118.3, 123.1, 'P'),
(124, '60', 95.2, 99.9, 104.7, 109.4, 114.2, 118.9, 123.7, 'P');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `jabatan`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ngadimin', 'admin', 'admin', '$2y$10$vDeJfDno.hqZTpSF36aUi.vP5LCwA/CTEVI2GuPzWW97YDmiF8dZG', NULL, NULL, NULL),
(2, 'Petugas Posyandu1', 'petugas', 'petugas1', '$2y$10$hfU2sHW7VewN/KXsDPsFSe8cJs2Qom1wxKoVXnEBZXCGDzbIyi07C', NULL, NULL, NULL),
(3, 'ainun', 'petugas', 'ainun', '$2y$10$hfU2sHW7VewN/KXsDPsFSe8cJs2Qom1wxKoVXnEBZXCGDzbIyi07C', NULL, NULL, NULL),
(4, 'ai', 'bidan', 'ai', '$2y$10$jx9uTDOWSjgPKChb3U5Ccu0a0bEsEKCE80Gq.B5Pw6WOWage68hI6', NULL, '2023-10-30 12:12:22', '2023-10-30 12:12:22'),
(5, 'didiin', 'admin', 'didiiin', '$2y$10$Gbes.oLI9fnFvfuuu.TbSe8SfkvzLyOcS6je6ObkLlaG.T0BND9sS', NULL, '2023-10-30 12:16:04', '2023-10-30 13:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posted` char(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `video_link`, `video_file`, `thumbnail`, `posted`, `created_at`, `updated_at`) VALUES
(1, 'Kenali_Apa_Itu_Stunting_Dan_Cara_Mencegahnya', 'https://www.youtube.com/watch?v=EPbkepBs_kE', '', 'thumbnail_video/3va02rElIouN2mHG8OCRyXnIxUASWAVbODpNjJ1V.png', '1', '2023-09-09 11:13:35', '2023-09-10 03:18:30'),
(2, 'Apa_Itu_Stunting', 'https://www.youtube.com/watch?v=YOf59clsY9s', NULL, 'thumbnail_video/wg37mkxMP9V2EzM47BBh7TfTzYfLi6xJrnbAm5HY.png', '1', '2023-09-09 11:14:49', '2023-09-09 11:17:01'),
(3, 'Materi_Mengenal_Apa_itu_Stunting', NULL, 'video_file/K3vE6YhbNwEWwEMgb3R1wUe630aXUw9btD4mu1jR.mp4', 'thumbnail_video/XVaJJuPO60qapGRO1SsItBxNaj6xRJz830XCUAbX.png', '1', '2023-09-09 11:16:41', '2023-09-09 11:17:10'),
(4, 'Anak_Pendek,_Apakah_Sudah_Pasti_Stunting_Ya', NULL, 'video_file/oOOfj8znMs11UUizD71cR8wyl2nhAebaG4cH64pR.mp4', 'thumbnail_video/lXcx3brhGH8XJrCFVV1VI5UW4gbKNvvWuQZtqwes.jpg', '1', '2023-09-09 11:20:29', '2023-09-10 03:31:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_title_unique` (`title`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hasil_zscore`
--
ALTER TABLE `hasil_zscore`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `id_anak` (`id_anak`),
  ADD KEY `id_user` (`id`) USING BTREE;

--
-- Indexes for table `kecamatans`
--
ALTER TABLE `kecamatans`
  ADD PRIMARY KEY (`id_kcm`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tbl_anak`
--
ALTER TABLE `tbl_anak`
  ADD PRIMARY KEY (`id_anak`),
  ADD KEY `id_kcm` (`id_kcm`);

--
-- Indexes for table `tbl_bbpb`
--
ALTER TABLE `tbl_bbpb`
  ADD PRIMARY KEY (`id_bbpb`);

--
-- Indexes for table `tbl_bbtb`
--
ALTER TABLE `tbl_bbtb`
  ADD PRIMARY KEY (`id_bbtb`);

--
-- Indexes for table `tbl_bb_u`
--
ALTER TABLE `tbl_bb_u`
  ADD PRIMARY KEY (`id_bbu`);

--
-- Indexes for table `tbl_desa`
--
ALTER TABLE `tbl_desa`
  ADD PRIMARY KEY (`id_desa`);

--
-- Indexes for table `tbl_imtu`
--
ALTER TABLE `tbl_imtu`
  ADD PRIMARY KEY (`id_imtu`);

--
-- Indexes for table `tbl_pbu`
--
ALTER TABLE `tbl_pbu`
  ADD PRIMARY KEY (`id_pbu`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hasil_zscore`
--
ALTER TABLE `hasil_zscore`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kecamatans`
--
ALTER TABLE `kecamatans`
  MODIFY `id_kcm` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
