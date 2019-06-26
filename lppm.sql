-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2019 at 10:22 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lppm2`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `isbn` varchar(20) NOT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `penulis` text NOT NULL,
  `tahun` year(4) NOT NULL,
  `stok` int(11) NOT NULL,
  `id_rak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`isbn`, `judul_buku`, `penulis`, `tahun`, `stok`, `id_rak`) VALUES
('2010-10291', 'judul', 'penulis ', 2011, 4, 2),
('201021', 'judul buku', 'penulis buku', 2012, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `cluster`
--

CREATE TABLE `cluster` (
  `id_cluster` int(11) NOT NULL,
  `nama_cluster` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cluster`
--

INSERT INTO `cluster` (`id_cluster`, `nama_cluster`) VALUES
(1, 'Integrasi Keilmuan'),
(2, 'Interdisipliner'),
(3, 'Kapasitas Pembinaan'),
(4, 'Nasional'),
(5, 'Perguruan Tinggi'),
(6, 'Prodi'),
(7, 'Individu'),
(8, 'Unggulan'),
(9, 'Madya'),
(10, 'Pemula'),
(11, 'Mahasiswa'),
(12, 'Guru Besar'),
(13, 'Kelembagaan'),
(14, 'Strategis'),
(15, 'Gender dan Anak'),
(16, 'Lesson Study'),
(17, 'Kompetitif'),
(18, 'Penguatan Keilmuan'),
(19, 'International Research'),
(20, 'Karakter Universitas'),
(21, 'Peneliti Muda'),
(22, 'Isu Strategis'),
(23, 'WCU'),
(24, 'Kolektif'),
(25, 'Kelompok');

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `nama_fakultas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id_fakultas`, `nama_fakultas`) VALUES
(1, 'Tarbiyah dan Keguruan'),
(2, 'Ushuluddin'),
(3, 'Psikologi'),
(4, 'Ekonomi dan Ilmu Sosial'),
(5, 'Syariah dan Ilmu Hukum'),
(6, 'Dakwah dan Ilmu Komunikasi'),
(7, 'Sains dan Teknologi'),
(8, 'Pertanian dan Peternakan'),
(9, '-');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_jurnal`
--

CREATE TABLE `jenis_jurnal` (
  `id` int(11) NOT NULL,
  `nama_jenis_jurnal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_jurnal`
--

INSERT INTO `jenis_jurnal` (`id`, `nama_jenis_jurnal`) VALUES
(3, 'Internasional Bereputasi Q1'),
(4, 'Internasional Bereputasi Q2'),
(5, 'Internasional Bereputasi Q3'),
(6, 'Internasional Bereputasi Q4'),
(7, 'Internasional'),
(8, 'Nasional Terakreditasi Sinta 1'),
(9, 'Nasional Terakreditasi Sinta 2'),
(10, 'Nasional Terakreditasi Sinta 3'),
(11, 'Nasional Terakreditasi Sinta 4'),
(12, 'Nasional Terakreditasi Sinta 5'),
(13, 'Nasional Terakreditasi Sinta 6'),
(14, 'Nasional');

-- --------------------------------------------------------

--
-- Table structure for table `jurnal`
--

CREATE TABLE `jurnal` (
  `id` int(11) NOT NULL,
  `issn` varchar(20) NOT NULL,
  `penulis` text NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tema` varchar(255) NOT NULL,
  `volume` varchar(6) NOT NULL,
  `nomor` varchar(6) NOT NULL,
  `tahun` year(4) NOT NULL,
  `stok` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `id_rak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurnal`
--

INSERT INTO `jurnal` (`id`, `issn`, `penulis`, `judul`, `tema`, `volume`, `nomor`, `tahun`, `stok`, `keterangan`, `id_rak`) VALUES
(1, 'jurnal', 'penulis', 'judul', 'tema', 'volum', 'nomor', 2012, 3, 'keterangan', 4);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1553148793),
('m130524_201442_init', 1553148795);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penelitian`
--

CREATE TABLE `penelitian` (
  `no_sk` varchar(30) NOT NULL,
  `penulis` text NOT NULL,
  `judul` varchar(255) NOT NULL,
  `id_cluster` int(11) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `id_rak` int(11) NOT NULL,
  `tahun` year(4) NOT NULL,
  `pendanaan` double(11,2) NOT NULL,
  `sumber_dana` varchar(255) NOT NULL,
  `file` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penelitian`
--

INSERT INTO `penelitian` (`no_sk`, `penulis`, `judul`, `id_cluster`, `id_fakultas`, `id_rak`, `tahun`, `pendanaan`, `sumber_dana`, `file`) VALUES
('Un.04/L.I/PL.01/3492/2016', 'RIZKI PRIANDI', 'PELAKSANAAN LARANGAN TERHADAP ANAK DIBAWAH UMUR MENGENDARAI KENDARAAN BERMOTOR RODA DUA DI KECAMATAN TAMPAN MENURUT UNDANG-UNDANG NOMOR 22 TAHUN 2009', 11, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/PP.06/3396/2016', 'Teddie. D, ST., M.T.I', 'IT MASTER PLAN UNTUK PERGURUAN TINGGI ISLAM MENGGUNAKAN WARD AND PEPPARD FRAMEWORK (Studi Kasus: UIN SUSKA RIAU)', 10, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/PP.06/3399/2016', 'LIDYA SESILLIA, \r\nAPRILI WAHYU HAKIKI, \r\nSITI JUNIAWATI ROSA', 'Psychological Well-Being pada Penduduk Miskin di Kota Pekanbaru', 11, 4, 4, 2016, 0.00, 'DIPA LPPM UIN SUSKA RIAU', ''),
('Un.04/L.I/PP.06/3420/2016', 'Muhammad Irsyad, ST. MT\r\nSuwanto Sanjaya, S.T, M.Kom', 'Diagnosa Awal Penyakit Hewan Kurban Berbasis Android Menggunakan Metode Learning Vector Quantization 2', 9, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/PP.06/3520/2016', 'Jasril, S.Si, M.Sc\r\nElvia Budianita, ST, M. Cs', 'IMPLEMENTASI SEGMENTASI SPATIAL FUZZY C-MEANS DAN LVQ PADA SISTEM IDENTIFIKASI CITRA DAGING SAPI DAN BABI', 9, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/PP.06/3521/2016', 'Nesdi Evrilyan Rozanda, S.Kom, M.Sc\r\nInggih Permana, S.T, M.Kom\r\nFadhilah Syafria, S.T, M.Kom', 'OPTIMASI BOBOT VEKTOR PEWAKIL PADA LVQ MENGGUNAKAN ALGORITMA GENETIKA UNTUK DETEKSI DINI PENYAKIT DIABETES', 9, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/PP.06/3522/2016', 'Megawati, S.Kom, MT\r\nAnofrizen, M.Kom\r\nLinda Permata Sari', 'EVALUASI KEAMANAN INFORMASI MENGGUNAKAN INDEKS KAMI – ISO/IEC 27001/2009 (STUDI KASUS UIN SUSKA RIAU)', 9, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/PP.06/3561/2016', 'SARAH EKA PUTRI HIDAYAT DALIMUNTHE', 'Efektivitas Peran Audit Internal Terhadap Enterprise Risk Management (ERM) (Studi Empiris Pada PT. Bank Syariah Mandiri Kota Pekanbaru)', 11, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/096/2018', 'Prof.Raihani, M.Ed., Ph.D.\r\nHarris Simaremare, M.T., Ph.D\r\nRicca Angreini Munthe, S.Psi., MA', 'Kewarganegaraan Digital di Madrasah Aliyah di Indonesia: Studi Tentang Kemampuan Siswa dan Pengembangan Kurikulum Digital Citizenship Sehat dan Toleran', 4, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/114/2015', 'Dadang Firdaus, S.Pd.I, MA', 'PENGGUNAAN MEDIA PEMBELAJARAN BERBASIS ICT DAN PENGARUHNYA TERHADAP MINAT BELAJAR BAHASA ARAB SISWA SMK KOTA PEKANBARU', 7, 1, 4, 2015, 0.00, '-', ''),
('Un.04/L.I/TL.01/115/2015', 'Fatimah Depi Susanty Harahap, S.Pd.I, MA', 'Studi Aanalisis Validitas Butir Soal Bentuk Objektif Pada Mata Kuliah Bahasa Arab Di Pusat Pengembangan Bahasa UIN SUSKA RIAU Tahun Ajaran 2014-2015', 7, 1, 4, 2015, 0.00, '-', ''),
('Un.04/L.I/TL.01/1196/2018', 'Drs. H. Arbi, M. Si\r\nHerlina, S. Ag, MA\r\nSyarifuddin, S. Ag, MA\r\nDra. Lisdawati, M. Ag', 'INTEGRASI SOSIAL BUDAYA ETNIK TIONGHOA  DI KOMUNITAS DESA PANTAI  (Kajian Tentang Profil Komunitas Desa Pantai, Aspek Penguatan Potensi Integrasi, Keberhasilan Ekonomi dan Sumber Utama Pemicu Konflik Antar Etnik di Komunitas  Desa Pantai Meskom dan Tamer', 2, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/126/2015', 'Aulia Rani Annisava, SP, M.Sc', 'PERTUMBUHAN DAN HASIL BEBERAPA VARIETAS TOMAT SECARA ORGANIK DI DATARAN RENDAH', 7, 8, 4, 2015, 0.00, 'LPPM UIN SUSKA TAHUN 2015', ''),
('Un.04/L.I/TL.01/133/2015', 'Fitra Herlinda, M.Ag', 'INTEGRASI NILAI-NILAI ISLAMI DALAM LAYANAN BIMBINGAN DAN KONSELING DI SEKOLAH MENENGAH ATAS ISLAM KOTA PEKANBARU', 7, 1, 4, 2015, 0.00, '-', ''),
('Un.04/L.I/TL.01/137/2015', 'Harum Natasya, S.Pd, M.Pd', 'Analisis Perbedaan Jalur Masuk Perguruan Tinggi dan Tamatan SMA/MA Terhadap Hasil Belajar Mahasiswa di Jurusan Bahasa Inggris Fakultas Tarbiyah Dan Keguruan UIN Suska Riau', 7, 1, 4, 2015, 0.00, '-', ''),
('Un.04/L.I/TL.01/162/2015', 'Dr. Amrul Muzan,S.HI, M.A', 'Peran Perbankan Syariah Dalam Distribusi Zakat  (Analisa Fungsi Sosial Perbankan Dalam UU No.21 Tahun 2008)', 7, 5, 4, 2015, 0.00, 'DIPA UIN SUSKA RIAU TAHUN 2015', ''),
('Un.04/L.I/TL.01/163/2015', 'Febri Handayani, S.HI, MH', 'PIDANA MATI DITINJAU DARI PERSPEKTIF TEORI HUKUM DAN KAITANNYA DENGAN HUKUM ISLAM (SUDI KASUS DI PENGADILAN NEGERI PEKANBARU)', 7, 5, 4, 2015, 0.00, '-', ''),
('Un.04/L.I/TL.01/164/2015', 'Aslati, S.Ag, M.Ag', 'Studi kasus terhadap alasan dan akibat perceraian di Pengadilan Agama Kota Pekanbaru', 7, 6, 4, 2015, 0.00, '-', ''),
('Un.04/L.I/TL.01/1962/2018', 'Dr. Bukhori, S.Pd. I, M. Pd.\r\nDedy Wahyudi, M. Pd', 'STUDENTS’ ATTITUDES TOWARD ENGLISH IN AN ESL CONTEXT: A Case Study of Indonesian Senior Secondary School Students in Malaysia', 6, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/1964.1/2018', 'Dr. Hasbullah, M.Si\r\nDrs. M. Nazar Almasri, M. Ag\r\nDrs. Agussalim Nasution, M. Ag', 'PERILAKU EKONOMI PEREMPUAN PENGRAJIN SONGKET DI DESA BUKIT BATU KABUPATEN BENGKALIS', 7, 2, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/1964/2018', 'Dr. H. Muh. Said  HM, M.Ag, MM\r\nDr. H. Muhammad Tawwaf, S.IP, M.Si\r\nDra. Hj. Syafi\'ah, M.Ag', 'IMPLEMENTASI KONSEP AL-IJARAH PADA SISTEM SEWA MENYEWA RUMAH- RUMAH KOS DI KECAMATAN TAMPAN KOTA PEKANBARU PROVINSI RIAU', 2, 5, 5, 2018, 0.00, 'DIPA BLU UIN SUSKA RIAU', ''),
('Un.04/L.I/TL.01/1966.1/2018', 'Drs. Saifullah, M.Us\r\nAbdul Shomad Batubara, L.c, M.A', 'DIFERENSIASI DEBUS BANTEN DAN DEBUS PARIAMAN (Integrasi Tariqat dan Seni Bela Diri dalam Pariwisata Nasional )', 2, 2, 5, 2018, 0.00, 'DIPA UIN SUSKA RIAU', ''),
('Un.04/L.I/TL.01/1967.1/2018', 'Dr. Tohirin, M.Pd\r\nDr. Hj. Risnawati, M.Pd.\r\nSohiron, M.Pd.I', 'Indigenous Counseling dan Pembelajaran Matematika Multiculture pada Sekolah Menengah di Wilayah 3T (Tertinggal, Terdepan, dan Terluar)', 4, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/1975/2018', 'Pangoloan Soleman Ritonga, S.Pd. M.Si\r\nHeppy Okmarisa, S.Pd.,M.Pd\r\nArif Yasthopi, S.Pd., M.Si\r\nNeti Afrianis, S.Pd., M.PKim', 'IDENTIFIKASI MISKONSEPSI MAHASISWA PADA KONSEP LARUTAN PENYANGGA DENGAN MENGGUNAKAN TES DIAGNOSTIK FOUR-TIER TEST MULTIPLE CHOICE', 6, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/199/2015', 'Ikhwani Ratna, SE. M.Si, Ak\r\nHidayati Nasrah, SE, M. Acc, Ak\r\nWeni Novira Sari', 'Pengaruh Tingkat Pendapatan dan Tingkat Pendidikan terhadap Perilaku Konsumtif Wanita Karir di Lingkungan Pemerintah Provinsi Riau', 15, 4, 4, 2015, 0.00, '-', ''),
('Un.04/L.I/TL.01/200/2015', 'Dr. Jumni Nelli, M.Ag\r\nDra. Syafrida, M. Ag\r\nDra. Irda Misraini, MA.', 'EKSISTENSI PEREMPUAN PADA LEMBAGA POLITIK FORMAL DALAM MEWUJUDKAN KESETARAAN GENDER (Studi Terhadap Anggota Legislatif di Provinsi Riau)', 15, 5, 4, 2015, 0.00, '-', ''),
('Un.04/L.I/TL.01/2000/2018', 'Miftahuddin, M.Ag\r\nM.Fahli Zatrahdi, M.Pd', 'PERBEDAAN METODE KONVENSIONAL DENGAN TERAPI ZIKIR DALAM PENYEMBUHAN AUTIS (Studi Komparasi Sekolah Khusus Taruna Al-Qur’An Yogyakarta Dan Permata Hati Pekanbaru)', 2, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/202/2015', 'Dra.Riswani. M.Ed\r\nDra. Asmiwati, MA\r\nMiftahul Fauzi', 'RELIGIUSITAS IMIGRAN MUSLIM DI PEKANBARU (ANALISIS POLA MENYIKAPI MASALAH PENGUNGSIAN ANTARA IMIGRAN LAKI-LAKI DAN PEREMPUAN)', 15, 1, 4, 2015, 0.00, '-', ''),
('Un.04/L.I/TL.01/2021/2017', 'Dra. Suhertina, M. Pd\r\nDarni, SP, MBA', 'KONTRIBUSI WANITA PEMULUNG MUSLIM DALAM MENDUKUNG PEREKONOMIAN KELUARGA (STUDI KASUS PADA PEMULUNG MUSLIM DI KOTA PEKANBARU)', 9, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2025/2017', 'Sri Wahyuni, M.A., M. Psi., Psikolog\r\nDede Fitriana Anatassia, S. Psi., M.A', 'RELASI ORANGTUA-REMAJA MENURUT PERSPEKTIF ISLAM DAN KAITANNYA DENGAN KESEJAHTERAAN PSIKOLOGIS (Studi Pengembangan dan Validasi Instrumen)', 9, 3, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2026/2017', 'Dr. H. Muslim Afandi, M.Pd\r\nDrs. Marwan, M. Pd\r\nBayu Saputra', 'BIMBINGAN KONSELING SPIRITUAL (Kajian Interpretasi dalam Tunjuk Ajar Melayu Tenas Effendy', 9, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2027/2017', 'Dr. H. Hajar, M.Ag\r\nAde Paris, M.Ag\r\nDarmawan TIa Indrajaya, M.Ag', 'PENETAPAN AWAL RAMADAN, SYAWAL DAN ZULHIJJAH MENURUT HIZBUT TAHRIR DAN BADAN HISAB DAN RUKYAT', 8, 5, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2028/2017', 'Harmaini, M. Si\r\nVivik Shofiah M. Si', 'Perilaku Lesbian Santri Pondok Pesantren di Kota Bukitinggi', 9, 3, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2029/2018', 'Dr. Mahyarni, SE, MM\r\nAstuti Meflinda, SE, MM\r\nDra. Asmiwati, MA', 'INVESTIGASI PENGARUH GREEN MANAJEMEN STRATEGI DAN BENEFIT EKONOMI TERHADAP KINERJA UMKM SYARIAH  (FOKUS KAJIAN PADA DAERAH LOMBOK SEBAGAI DESTINASI WISATA HALAL)', 2, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/203/2015', 'H. Zailani, M.Ag\r\nDrs. Kaizal Bay, M. Si\r\nDariyusman, S. Kom', 'REINTERPRETASI TERHADAP PEMAHAMAN HADIS-HADIS TENTANG GENDER DALAM PERSPEKTIF FIQH AL-HADITS', 15, 2, 4, 2015, 0.00, 'DIPA UIN SUSKA RIAU TAHUN 2015', ''),
('Un.04/L.I/TL.01/2033/2017', 'Dr. Mahmuzar, M.Hum\r\nCandra Jon Asmara, S.Sos, M.Si', 'KONFLIK PEREBUTAN PULAU BERHALA ANTARA PROVINSI JAMBI DAN KEPULAUAN RIAU', 9, 4, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2034/2017', 'Dr. H. Muh. Said HM, M.Ag, MM\r\nDra. Hj. Syafi\'ah, M.Ag', 'SISTEM SEWA MENYEWA RUMAH-RUMAH COST DALAM PERSPEKTIF HUKUM EKONOMI SYARIAH (Studi Empiris di Kelurahan Simpang Baru Kecamatan Tampan Kota Pekanbaru)', 9, 5, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2035/2017', 'Nurcahaya, S.Ag, M.Pd.I\r\nAfdol Rinaldi\r\nYuni Harlina M.Sy\r\nMadona Khairunnisa ME., Sy', 'PUNISHMENT PELAKU POLIGAMI: PERBANDINGAN ANTARA MALAYSIA DAN INDONESIA', 9, 1, 5, 2017, 0.00, 'DIPA UIN SUSKA RIAU TAHUN 2017', ''),
('Un.04/L.I/TL.01/2036/2017', 'Zuraidah, S.Ag, M.Ag\r\nDra. Hj. Irdamisraini, MA\r\nDra. Nurlaili, M. Si', 'PENGELOLAAN DAN PENDAYAGUNAAN ZAKAT DALAM MENGEMBANGKAN EKONOMI MASYARAKAT DI KABUPATEN SIAK.', 9, 5, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2037/2017', 'Henni Indrayani, SE., MM\r\nHarkaneri, SE, MSA, Ak', 'ANALISIS PENGELOLAAN DANA ZAKAT DALAM PEMBERDAYAAN PEREKONOMIAN UMAT PADA BADAN AMIL ZAKAT NASIONAL (BAZNAS) KOTA PEKANBARU', 9, 4, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2038/2017', 'Dr. Jumni Nelli, M.Ag\r\nDra. Hj. Nurhasanah, M. Ag', 'PERSEPSI MASYARAKAT MELAYU RIAU TERHADAP PERUBAHAN SIKAP ISTERI TENTANG CERAI GUGAT DI PROVINSI RIAU', 9, 5, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2039/2017', 'Subhan, M. Ag\r\nErdawati Nurdin, M. Pd', 'KUALITAS SOAL UJIAN SEMESTER MATA PELAJARAN FIKIH KELAS V MADRASAH IBTIDAIYYAH SE-KECAMATAN TEMBILAHAN HULU KABUPATEN INDRAGIRI HILIR', 9, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2040/2017', 'Dr. Yasmaruddin Bardansyah, Lc, MA', 'MODEL PENGEMBANGAN LINGKUNGAN BERBAHASA ASING (BI’AH LUGHOWIYAH) SEBAGAI SARANA MENUJU WORLD CLASS UNIVERSITY DI UNIVERSITAS ISLAM NEGERI MAULANA MALIK IBRAHIM MALANG - JAWA TIMUR', 9, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2041/2017', 'Fatimah Depi Susanty Harahap, S.Pd.I, MA\r\nDjeprin E Hulawa, M. Ag', 'PENGEMBANGAN GAME EDUKASI BAHASA ARAB SEBAGAI MEDIA PEMBELAJARAN BERBASIS MULTIMEDIA DI MADRASAH IBTIDAIYAH NEGERI I KOTA PEKANBARU RIAU', 9, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2042/2017', 'Ricca Angreini Munthe, S. Psi., M.A\r\nIndah Puji Ratnani, S. Psi., M.A', 'STUDI EKSPLORASI KEBERFUNGSIAN FULL DAY SCHOOL BAGI ORANGTUA DAN ANAK PADA SDIT MUHAMMADIYAH 019 BANGKINANG, KAMPAR', 9, 3, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2043/2017', 'Lestari Handayani, ST, M.Kom\r\nYusra, M.T', 'Pengembangan Sistem Pengenalan Suara untuk Pengecekan Bacaan Al Quran menggunakan Metode Mel-Frequency Cepstrum Coefficient (MFCC)', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2045/2017', 'Dr. Rado Yendra, M. Sc\r\nRahmadeni, M. Si', 'Pemetaan Sifat Sel Hujan (Intensitas dan Durasi) dengan Menggunakan Metode Neyman-Scott Rectangular Pulse (NSRP)', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2046/2017', 'Benny Sukma Negara, ST,.MT\r\nDrs. Muh. Natsir Nur, M.Ag\r\nAbas Wismoyo Hernawan, M.Sos', 'Analisis Dan Pengujian Tingkat Penerimaan Pengguna User Acceptance Test (UAT) Pada Aplikasi Iraise Di Universitas Islam Negeri Sultan Syarif Kasim Riau', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2047/2017', 'Dr. Teddy Purnamirza, ST, M. Eng\r\nDeprowana Rahmi, S. Pd, M. Sc', 'Perancangan Antena RLSA Multibeam (Pancaran Ganda) Memanfaatkan Background Antena', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2048/2017', 'Ari Pani Desvina, M.Sc\r\nFitra Kurnia, M.Kom', 'Analisa Penilaian Kinerja Pegawai UIN Suska Riau Menggunakan Metode Chernoff Face', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2049/2017', 'Novi Yanti, S.T, M.Kom\r\nFitri Insani, S.T, M.Kom', 'Analisa Perbandingan Hasil Penilaian Metode Certainty Factor dan Dempster Shafer dalam Sistem Pakar untuk Mendeteksi Gangguan Penyakit Tropis', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2050/2017', 'Sutoyo, MT\r\nDr. Dedi Irawan, M.Sc', 'PENGARUH REDAMAN HUJAN DAN KANDUNGAN MUATAN PARTIKEL HUJAN DI UDARA TERHADAP KOMUNIKASI SATELIT', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2051/2017', 'Dr. Alex Wenda, ST., M.Eng\r\nNanda Putri Miefthawati, B.Sc., M.Sc', 'Pengembangan Aplikasi Untuk Mengidentifikasi Penyakit Tanaman Padi Berdasarkan Tekstur Analisis Blobs Dan Color Segmentation Local Entropy-Otsu Menggunakan Rule Based Expert System.', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2052/2017', 'Angraini, S.Kom, M.Eng\r\nMegawati, S.Kom, M.T', 'PENGARUH BUDAYA “BRING YOUR OWN DEVICE (BYOD) “ TERHADAP KEAMANAN INFORMASI BERDASARKAN HUMAN ASPECT OF INFORMATION SECURITY QUESIONNARE (HAIS-Q) (CASE STUDY : UIN SUSKA RIAU)', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2052/2018', 'Dr. Hidayati, S.Pt, MP', 'Eksplorasi Phylogenetic dan Strategi Pengembangan Itik Sawang Sebagai Plasma Nutfah Provinsi Kepulauan Riau', 6, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2053/2017', 'VIRNA MUSELIZA, SE, M.Si\r\nYessi Nesneri, SE, MM', 'Analisis Pelaksanaan Kepmenkes Nomor 519 Tahun 2008 tentang Pedoman Penyelenggaraan Pasar Sehat dan Keputusan Walikota Pekanbaru Nomor 213 tahun 2016 tentang Pengelolaan Pasar Rakyat Teratai Higienis Madani Kecamatan Senapelan di Kota Pekanbaru', 9, 4, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2057/2017', 'Drs. Abdul Rachman, M.Si\r\nYefni, M.Si', 'ANALISIS MODEL PEMBERDAYAAN PADA PROGRAM RUMAH TANGGA MANDIRI PANGAN DAN ENERGI KUBANG JAYA KECAMATAN SIAK HULI KAB KAMPAR (RTPME)', 9, 6, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2058/2017', 'Zulfahmi, S.Hut. M.Si\r\nRita Elfianis, SP, M. Sc', 'SKRINING GENOTIPE CABE HASIL MUTASI YANG BERDAYA HASIL TINGGI MENGGUNAKAN PENANDA MOLEKULER', 9, 8, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2059/2017', 'Dr. Hidayati, S. Pt, M.P.\r\nDr. Tahrir Aulawi, S. Pt., M.Si.', 'ASOSIASI KERAGAMAN GEN MYOSTATIN DENGAN SIFAT- SIFAT PRODUKSI DAN KARKAS PADA ITIK LOKAL', 9, 8, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2059/2018', 'Dr. Yendra Liza, S.Pt, MP\r\nAnwar Effendi Harahap, S.Pt, M.Si\r\nRestu Misrianti, S.Pt, M.Si', 'Kaji Banding Produktivitas Kerbau Kuntu Dengan Formula Sinkronisasi Guna Mendukung Swasembada Pangan Nasional', 4, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2060/2017', 'Wieda Nurwidada Haritsah Zain, S. Pt., M.Si\r\nDr. Irdha Mirdhayati, S. Pi., M.Si', 'PROFIL ASAM LEMAK, KOLESTEROL DAN JUMLAH BAKTERI ASAM LAKTAT YOGURT SUSU KAMBING YANG DIPERKAYA MINYAK ZAITUN SEBAGAI SUMBER PANGAN FUNGSIONAL', 9, 8, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2060/2018', 'Zuraidah, M.Ag\r\nDra.Hj.Irdamisraini, MA\r\nDra.Nurlaili, M.Si', 'PERAN BADAN AMIL ZAKAT NASIONAL (BAZNAS) DALAM MENGENTASKAN KEMISKINAN DI KABUPATEN ROKAN HULU', 2, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2061/2017', 'Dr. Nurdin, MA\r\nDewi Sukartik, M.Sc', 'EFEKTIVITAS SOSIALISASI PENCEGAHAN KEBAKARAN HUTAN DAN LAHAN (KARHUTLA) PADA MASYARAKAT DI KECAMATAN BUNUT KABUPATEN PELALAWAN RIAU', 9, 6, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2061/2018', 'Dr. Wahidin, M.Ag', 'OTONOMI DAERAH DAN PENINGKATAN KESEJAHTERAAN (STUDI MENGENAI PEMEKARAN DI KABUPATEN KAMPAR DAN KABUPATEN ROKAN HULU PROPINSI RIAU)', 2, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2062/2017', 'Zarnelly, S.Kom., M. Sc\r\nIdria Maita, S.Kom., M.Sc', 'RANCANG BANGUN APLIKASI ADMINISTRASI PERKANTORAN ELEKTRONIK (e-OFFICE) BERBASIS WEB DAN ANDROID (STUDI KASUS UIN SUSKA RIAU)', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2063/2017', 'Fitri Amillia, ST, MT\r\nMulyono, ST, MT', 'ANALISIS KINERJA TRANSMISI CITRA MELALUI KANAL MOBILE TO MOBILE PADA SISTEM ORTHOGONAL FREQUENCY DIVISION MULTIPLEXING (OFDM)', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2063/2018', 'Dr. H. Hajar, M.Ag\r\nDarmawan Tia Indrajaya, M.Ag\r\nAde Fariz Fakhrullah, M.Ag', 'Metode Penetapan Waktu Shalat Perspektif JAKIM Malaysia dan Badan Hisab & Rukyat Indonesia', 2, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2064/2017', 'Zulfatri Aini, ST., MT\r\nSri Basriati, S. Si., M.Sc', 'Upaya Pemerataan Pembebanan (Loadability) Sistem Transmisi 150 kV Sumbar-Riau dengan menggunakan Thyristor-switched Series Capasitor (TSSC).', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2065/2017', 'Dian Mursyitah, ST., MT\r\nAhmad Faizal, ST., MT', 'Perancangan Pengendali PID-Gain Schedulling untuk Mengendalikan Posisi pada Sistem Magnetic Levitation Ball', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2065/2018', 'Fitra Herlinda, M.Ag\r\nDra. Hj, Zalyana, M. Ag', 'IMPLEMENTASI CYBER COUNSELING DALAM CASE CONFERENCE UNTUK MENGATASI PERMASALAHAN BULLYING DI MADRASAH ALIYAH NEGERI KABUPATEN KAMPAR', 6, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2066/2017', 'Linda Aryani, S. Psi., M.Si\r\nAdfadia Mera, S. Psi,m M.A', 'PENGARUH SPIRITUAL WELL-BEING DAN ETIKA KERJA ISLAM TERHADAP ORGANIZATIONAL CITIZENSHIP BEHAVIOR PADA KARYAWAN MELAYU RIAU', 9, 3, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2067/2017', 'Qomariah Lahamid, SE, M.Si\r\nNurlasera, SE, M.Si', 'Determinan Kompetensi Inti Terhadap Perkembangan UMKM Syariah Berbasis Ekonomi Kreatif di Kota Pekanbaru', 9, 4, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2068/2017', 'Nur Hasanah, SE, MM\r\nDr. Jenita, SE, MM', 'ANALISIS PENGGUNAAN ALAT PEMBAYARAN NON TUNAI DALAM MEWUJUDKAN LESS CASH SOCIETY DI LINGKUNGAN DOSEN PTKI PROPINSI RIAU', 9, 5, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2069/2017', 'Susnaningsih Mu`at, SE, MM\r\nKhairil Henry, SE, M. Si, Ak', 'Determinan \"Financial Wellness\" Dosen: Studi pada Perguruan Tinggi di Kota Pekanbaru', 9, 4, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2070/2017', 'Syaifullah, SE, M.Sc\r\nAnofrizen M. Kom\r\nTengku Khairil Ahsyar, M. Kom', 'Manajemen Kebutuhan Ruang Parkir Kampus ( Studi kasus : Fakultas Sains dan Teknologi UIN Suska Riau)', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2070/2018', 'Ade Jamaruddin, M.Ag\r\nKhairil Henry, SE, M.Si. Ak', 'Determinasi Isbat Ramadhan perspektif Al- Qur\'an', 2, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2071/2017', 'Ismu Kusumanto, ST,MT\r\nEkie Gilang Permata, ST., M. Sc', 'Analisa Tingkat Pengetahuan Keislaman Dosen Fakultas Sains Dan Teknologi Uin Suska Dalam Upaya Mewujudkan Integrasi Keislaman Menggunakan Metode Analytical Hierarchy Process (AHP)', 9, 5, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2071/2018', 'Vivik Shofiah, Shofiah, S.Psi., M.Si\r\nYulita Kurniawat Asra., M.Psi\r\nSahwitri Triandani., M.Si', 'Pelatihan Gratitude (Bersyukur) Untuk Meningkatkan Makna Hidup Anak Didik Pemasyarakatan di LPKA Pekanbaru', 2, 3, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2072/2017', 'Tengku Nurainun, ST, MT\r\nSiti Monalisa, ST., M.Kom\r\nMisra Hartati, ST., MT', 'Rancang Bangun Sistem Informasi Simpan Pinjam pada Koperasi Pegawai Negeri Republik Indonesia (KP-RI UIN SUSKA) Berbasis Konvensional dan Syariah', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2072/2018', 'Dr. Dewi Febrina. S.Pt., MP\r\nDrh. Rahmi Febriyanti. M. Sc\r\nZumarni. S. Pt., MP', 'UJI AKTIVITAS ANTIMIKROBA EKSTRAK FERMENTASI PELEPAH KELAPA SAWIT', 4, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2073/2017', 'Rika Susanti, ST, M.Eng\r\nEwi Ismaredah, S.Kom., M.Kom', 'Perancangan Jaringan Gigabit Passive Optical Network di Kampus UIN Suska Riau', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2074/2017', 'Novriyanto, ST, M.Sc\r\nFebi Nursalisah, M.Kom', 'PENGEMBANGAN KOMPETENSI PROFESIONAL DOSEN BERBASIS KNOWLEDGE MANAGENT SYSTEM (Studi Kasus : UIN SUSKA RIAU)', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2075/2017', 'Darto, S.Pd.I, M.Pd\r\nZelly Putriani, M.Pd', 'Pengembangan Model Pembelajaran Matematika Problem Solving Berbasis Budaya Melayu Riau', 9, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2076/2017', 'Drs. H. Abu Anwar, M.Ag\r\nMelly Andriani, M.Pd', 'Pengembangan Model Pembelajaran Matematika Realistik Indonesia terintegrasi ilmu Keislaman', 9, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2077/2017', 'Suhandri, S.Si, M. Pd\r\nArnida Sari, S. Pd, M. Mat', 'PENGEMBANGAN LEMBAR KERJA SISWA MELALUI PENDEKATAN KONTEKSTUAL TERINTEGRASI NILAI-NILAI KEISLAMAN UNTUK MEMFASILITASI KEMAMPUAN PEMAHAMAN KONSEP MATEMATIKA DI PROPINSI RIAU', 9, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2078/2017', 'Drs. Mukhlis, M.Si\r\nLiliza Agustin, M.Psi.Psikolog\r\nYuliana Intan Lestari, M.A', 'KONSELING KELOMPOK TAZKIYATUN NAFSI : MODEL INTERVENSI PSIKOLOGIS DALAM PENINGKATAN SELF-ESTEEM SISWA KORBAN BULLYING', 9, 3, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2078/2018', 'Rita Susanti, S.Psi, M.A\r\nYuliana Intan Lestari, S.Psi, M.A', 'KEPRIBADIAN REMAJA DALAM PERSPEKTIF ISLAM DAN KAITANNYA DENGAN RELIGIUSITAS DAN NILAI (STUDI PENGEMBANGAN DAN VALIDITAS INSTRUMEN PADA REMAJA MUSLIM RIAU)', 2, 3, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2080/2017', 'Zona Octarya, M.Si\r\nDra. Fitri Refelita, M.Si', 'Aktivitas Antimikroba Senyawa Bioaktif Getah Jarak (Jatropha curcas L) serta Potensinya sebagai Anti diabetes', 9, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2080/2018', 'Ismu Kusumanto, ST,MT\r\nNofriza, ST., MSc', 'Analisis Keberadaan Pusat Perbelanjaan Modern Terhadap Toko Kelontong Masyarakat Di Kota Pekanbaru', 6, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2081/2017', 'Lazulva, S, Si, M.Si\r\nLisa Utami, S.Pd., M.Si\r\nElvi Yenti, S.Pd., M.Si', 'PEMANFAATAN LIMBAH KULIT PEPAYA (CARICA PAPAYA) SEBAGAI SUMBER ENERGI BARU TERBARUKAN UNTUK MENGHASILKAN ENERGI LISTRIK MENGGUNAKAN TEKNOLOGI MFC', 9, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2081/2018', 'H. Ekie Gilang Permata, ST, M.Sc', 'Analisis Prilaku Mahasiswa Sains Dan Teknologi Dalam Penggunaan Smartphone (Gadget) Untuk Meningkatkan Prestasi Akademik', 3, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2082/2018', 'Dr. H. AGUSTIAR, M.Ag', 'Stilistika Al-Qur\'an : Kajian Ayat-Ayat Dalam Bentuk Kalam Khobar Analisis Struktur Dan Makna', 7, 2, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2083/2017', 'Indah Permanasari, S.P., M.P\r\nTiara Septirosya, S.P., M.Si', 'PENINGKATAN PRODUKTIVITAS TANAMAN CABAI (Capsicum annum L.) PADA SISTEM INDOOR HIDROPONIC DENGAN APLIKASI LAMPU LED', 9, 8, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2084/2018', 'DR. MULIA SOSIADY, SE,MM,Ak', 'ANALISIS DAMPAK STRES AKADEMIK MAHASISWA DALAM PENYELESAIAN TUGAS AKHIR (SKRIPSI)', 7, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2086/2018', 'Henni Indrayani,', 'Analisis Pengaruh Kompetensi, Pengembangan Karir dan Budaya Organisasi terhadap Kinerja Dosen PTKIS Kota Pekanbaru', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2087/2018', 'Dr. Kadar, M.Ag\r\nDr. Alwizar, M.Ag\r\nIrawati, M.Pd', 'KONSTRUKSI MODEL KURIKULUM INTEGRASI ILMU SOSIAL DAN ISLAM SERTA IMPLEMENTASINYA DALAM PEMBELAJARAN DI FAKULTAS TARBIYAH DAN KEGURUAN UIN SUSKA RIAU', 1, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2088/2018', 'Yuli Widiningsih, M.Psi, Psikolog\r\nIndah Puji Ratnami, S.Psi, M.A', 'Pelatihan Islamic Parenting sebagai Upaya untuk Mengurangi Tindak Kekerasan Orang Tua pada Anak', 6, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2089/2018', 'Ahyani Radhiani Fitri, S.Psi., M.A.,Psikolog\r\nDesma Husni, M.A., Psikolog', 'Community Based Participatory Action Research Untuk Meningkatkan Resiliensi Keluarga Pada Fase Rekonstruksi Pasca Banjir', 6, 3, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2090/2017', 'Dr. Hj. Hertina, M.Pd\r\nDr. Hajar M, MH\r\nDr. H. Maghfirah, Ma', 'PERLINDUNGAN HUKUM TERHADAP HAK-HAK KONSUMEN DALAM PELAYANAN AIR BERSIH MENURUT UU NO.8 TAHUN 1999 TENTANG PERLINDUNGAN KONSUMEN (STUDI KOMPARATIF ANTARA KOTA DUMAI DAN KOTA BATAM)', 8, 5, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2090/2018', 'Ikhwani Ratna, SE. M.Si., Ak, CA\r\nHidayati Nasrah, SE, M.Acc, Ak, CA', 'STUDI  DESKRIPTIF TENTANG TRACER STUDY UNTUK MENGANALISA PROFIL ALUMNI JURUSAN AKUNTANSI FAKULTAS EKONOMI DAN ILMU SOSIAL UIN SUSKA RIAU', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2091/2017', 'Dr. Yasril Yazid, MIS\r\nMashuri, MA\r\nYurnalis, MA', 'PANDANGAN ISLAM TENTANG PENGGUNAAN NARKOTIKA DAN REHABILITASI BAGI PECANDUNYA MENURUT UNDANG-UNDANG NO 35 TAHUN 2009 TENTANG NARKOTIKA', 8, 6, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2091/2018', 'Elvi Yanti, S.Pd., M.Si', 'PENGEMBANGAN MODEL GEOMETRI MOLEKUL UNTUK MENDUKUNG VISUALISASI ABSTRAKSI MAHASISWA CALON GURU KIMIA', 8, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2092/2017', 'Dr. Masduki, M.Ag\r\nDr. Toni Hartono, M.Si\r\nImron Rosidi, Ma., Ph.D', 'PENGUATAN PAHAM KEAGAMAAN MELALUI MEDIA DAKWAH DI KOTA BATAM KEPULAUAN RIAU', 8, 6, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2092/2018', 'Drs. Mukhlis, M.Si\r\nLiliza Agustin, M.Psi., Psikolog\r\nNurhayati, M.Pd', 'Possitive Psychotherapy Husnu-Dzhan : Model Pengembangan Psikoterapi Islam Dalam Menurunkan Derajat Stress Pada Penderita hipertensi', 1, 3, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2093/2018', 'RITA ELFIANIS, SP, M.Sc', 'ANALISIS KEKERABATAN GENETIK TANAMAN PADI (ORYZA SATIVA L.) DI KABUPATEN KAMPAR DENGAN MENGGUNAKAN PANANDA RAPD (RANDOM AMPLIFIED POLYMORPHIC DNA)', 7, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2094/2017', 'Drs. Saifullah, M.Us\r\nDrs. Saleh Nur, M.Ag\r\nDr. Dasman Yahya al Maali', 'DIFERENSIASI FESTIVAL TABUT DI BENGKULU DAN FESTIVAL TABUT DI PARIAMAN (Integrasi Jejak Syi’ah dalam Ajang Pariwisata Nasional)', 8, 2, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2095/2018', 'Khotimah, M.Ag', 'INTERAKSI KOMUNITAS MUSLIM DAN KOMUNITAS TRI DHARMA DI KOTA PEKANBARU', 7, 2, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2096/2018', 'Dr. Yuli Harti, M.Ag', 'STUDI DESKRIPTIF PENGEMBANGAN SOFT SKILL GURU PENDIDIKAN AGAMA ISLAM SEKOLAH MENENGAH PERTAMA KOTA PEKANBARU (STUDI KASUS DI SMPN 4 KOTA PEKANBARY)', 7, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2097/2018', 'Zulfahmi, S.Hut. M.Si', 'PERBANDINGAN KANDUNGAN DAN KONSENTRASI BAHAN AKTIF AKAR DAN DAUN PASAK BUMI', 6, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2098/2018', 'Yantos, M.Si\r\nPutriana, MM', 'KEARIFAN LOKAL MASYARAKAT MUSLIM DALAM MEMBANGUN HARMONISASI RELIGIOUS-KULTURAL ISLAM-HINDU DI DESA PEGAYAMAN BULELENG BALI', 2, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2099/2018', 'Alma Yulianti, S.Psi, M.Si', 'TIME PERSFECTIVE SEBAGAI PREDIKTOR PERILAKU MEROKOK DAN KONSUMSI ZAT PSIKOAKTIF (STUDI PADA REMAJA DI KOTA PEKANBARU DAN KOTA TANJUNGPINANG)', 6, 3, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2100/2018', 'Dr. Drs. ALIMUDDIN Hassan, MAg', 'NALAR PENDIDIKAN DAMAI STUDI PEMIKIRAN ABDURRAHMAN WAHID', 7, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2101/2018', 'Prof. Dr. H. Munzir Hitami, MA\r\nDrs. H. Arwan, M. Ag', 'WACANA TAFSIR PLURALISME AGAMA DI NUSANTARA', 2, 1, 5, 2018, 0.00, 'DIPA UIN SUSKA RIAU TAHUN 2018', ''),
('Un.04/L.I/TL.01/2102/2018', 'Nurrahmi Hayani, SE., MBA', 'PENGARUH SERTIFIKASI HALAL DAN BAHAN MAKANAN TERHADAP KEPUTUSAN PEMBELIAN PRODUK MAKANAN OLEH IBU RUMAH TANGGA MUSLIM DI KELURAHAN AIR PUTIH KEC.TAMPAN PEKANBARU', 3, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2103/2018', 'Andri Novius, SE. M.Si, Ak', 'FAKTOR-FAKTOR YANG MEMPENGARUHI KETEPATAN WAKTU CORPORATE INTERNET REPORTING DALAM MENDUKUNG TRANSPARANSI KEUANGAN PADA PERUSAHAAN YANG TERDAFTAR DI BURSA EFEK INDONESIA', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2104/2018', 'Prof. Dr. Ilyas Husti, M.Ag\r\nDr. Zailani, M.Ag\r\nDr. Khairunnas Jamal, M.Ag', 'Tren Penyimpangan Pengguna Narkoba dan Seksual dalam Perspektif Masyarakat Madani di Propinsi Riau', 2, 2, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2105/2018', 'Noviarni, S.Pd.I, M.Pd', 'PENGEMBANGAN MODUL MATEMATIKA BERBASIS KONSTRUKTIVISME DENGAN BANTUAN ALAT PERAGA UNTUK MEMFASILITASI SISWA BELAJAR MATEMATIKA DI RIAU', 6, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2106/2018', 'Dra. Hj. Nurasmawi, M.Pd.\r\nRistiliana, S. Pd., M. Pd. E.\r\nWardani Purnama Sari, S. Pd., M. Pd. E.\r\nMuhammad Ihsan Hamdy, S.T., M.T.', 'PENGAMALAN KEHIDUPAN SOSIAL KEAGAMAAN MASYARAKAT MUSLIM DI RIAU', 2, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2107/2017', 'DEWI DINIATY, ST., M. Ec.Dev', 'Analisis Kualitas Pelayanan Terhadap Kepuasan Masyarakat di Kantor Camat Marpoyan Damai Dengan Pendekatan Servqual dan Importance Performance Matrix', 10, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2107/2018', 'Ratna Dewi, S.Sos. M.Si', 'Inovasi Pemerintah Dalam Pengelolaan Objek Wisata Bono Sebagai Upaya Meningkatkan Pendapatan Asli Daerah (PAD) Kabupaten Pelalawan', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2108/2017', 'Harpito, ST., MT', 'Analisis Kapasitas Dan Karakteristik Fasilitas Parkir Fakultas Sains Dan Teknologi Uin Sultan Syarif Kasim Riau', 10, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2108/2018', 'Nurlasera, SE, M.Si\r\nDevi Megawati,SEI, MESy', 'STUDI PARTISIPASI PEREMPUAN SEBAGAI PENGELOLA DAN ANGGOTA KOPERASI  DALAM MENINGKATKAN KESEJAHTERAAN KELUARGA', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2109/2017', 'Aulia Ullah, ST., M. Eng', 'Pengembangan Sistem Akuisi Data Jarak Jauh Multivariabel Secara Nirkabel dalam Pengambilan Data Primer', 10, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2109/2018', 'Linda Aryani, M.Si\r\nAdfadia Mera, M.A\r\nDr. Harmaini, M.Si', 'Studi Deskriptif Kematangan Pribadi Calon Pasangan Suami Isteri di Kota Pekanbaru', 2, 3, 5, 2018, 0.00, 'DIPA UIN SUSKA RIAU', ''),
('Un.04/L.I/TL.01/2110/2018', 'Nuraini Sahu, SH, MH', 'STRATEGI PENGEMBANGAN SOFT SKILL, HARD SKILL DAN LIFE SKILL PADA MAHASISWA ILMU HUKUM UIN SUSKA RIAU DALAM MENGHADAPI MASYARAKAT EKONOMI ASEAN  (MEA)', 6, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2111/2017', 'Oktaf Brillian Kharisma, ST, MT', 'PENERAPAN APLIKASI LAYANAN E-MAIL MURAH PADA EXTREME ENVIRONTMENT BERBASIS PROTOCOL DELAY TOLERANT NETWORK (DTN)', 10, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2111/2018', 'Dr. Rusdi, M.A.\r\nNandang Sarip Hidayat, S.Pd.I, M.A.', 'APLIKASI PEMBELAJARAN BAHASA ARAB  BERBASIS TEKNOLOGI BAGI GURU MADRASAH ALIYAH TEMBILAHAN INDRAGIRI HILIR RIAU', 2, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2112/2017', 'Teddie Darmizal, ST., M.T.I', 'PERANCANGAN DATA CENTER TEKNOLOGI INFORMASI UNTUK PERGURUAN TINGGI ISLAM MENGGUNAKAN FRAMEWORK TIA-942-A (Studi Kasus: UIN SUSKA RIAU)', 10, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2112/2018', 'Dr. Dony Martias, SE, MM\r\nFaiza Muklis, SE, M.Si, Ak', 'Analisis Perlakuan Akuntansi Aset Bersejarah (Heritage Assets): Studi Pada Aset Bersejarah Di Propinsi Riau', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2113/2018', 'Merry Siska, ST, MT\r\nReski Mai Candra, ST, M.Sc\r\nEki Saputra, S.Kom, M.Kom', 'Modifikasi Stasiun Kerja Olahan Nanas di Riau dan Jawa Barat Menggunakan Workplace Ergonomic Risk Assessment (WERA)', 2, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2114/2017', 'Nurdiana, M. Pd', 'PENGGUNAAN CRAZY STORY GAME UNTUK MENINGKATKAN MOTIVASI MAHASISWA UNTUK BERBICARA DALAM BAHASA INGGRIS', 10, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2115/2018', 'Syaifullah, SE, M.Sc\r\nHasdi Radiles, MT\r\nM. Afdal, ST, M.Kom\r\nEka Pandu Cynthia, ST, M.Kom\r\nT. Khairil Ahsyar, M.Kom', 'Optimasi jaringan jalan kendaraan  dalam kawasan kampus II uin Suska Riau Dengan menggunakan metoda simulasi antrian', 2, 9, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2116/2018', 'H. Mhd. Kastulani, SH, MH\r\nJoni Alizon, S.H., MH\r\nAhmad Adri Fifai, M. Ag', 'PERLINDUNGAN HUKUM BAGI PENCARI SUAKA ASING DI KAMP PENGUNGSI BANDA ACEH  MENURUT HUKUM INTERNASIONAL (KASUS PENGUNGSI ROHINGYA)', 2, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2117/2017', 'Agus Firdaus Chandra, Lc., M.A', 'Implementasi Visi Misi Uin Suska Riau Terkait Integrasi Keilmuan Dan Keislaman; Analisis Tugas Akhir Mahasiswa Fakultas Sains Dan Teknologi', 10, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2117/2018', 'Bambang Hermanto, MA', 'ANALISIS KOMPONEN KELAYAKAN PEMEKARAN PROPINSI RIAU PESISIR', 2, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2118/2018', 'Irsyadi Sirad Juddin, SP., Msi', 'ANALISIS KELAYAKAN USAHA DAN PENDAPATAN KEGIATAN KEWIRAUSAHAAN MAHASISWA', 7, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2119/2017', 'Ratna Dewi, S.Sos. M.Si\r\nAfrizal, S.Sos, M. Si', 'TRANSFORMASI KEBIJAKAN KOTA LAYAK ANAK (KLA) DI KOTA PEKANBARU', 9, 4, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2120/2018', 'Dra. Silawati, M.Pd\r\nDr. Aslati, M. Ag\r\nRosmita, M. Ag', 'SINERGITAS POLRI BERSAMA MASYARAKAT DALAM RANGKA PENCEGAHAN KELOMPOK RADIKAL PRO KEKERASAN DAN INTOLERANSI DI WILAYAH HUKUM POLRES KARIMUN PROVINSI KEPULAUAN RIAU', 4, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2121/2017', 'Afriza, S.Ag, M.Pd\r\nDra. Afrida, M.Ag', 'PERAN IBU RUMAH TANGGA SEBAGAI PEKERJA LEPAS PADA \"PERUSAHAAN PENGOLAHAN KELAPA\" DALAM MEMBANTU KEBUTUHAN KELUARGA DI KABUPATEN INDRAGIRI HILIR', 9, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2121/2018', 'Fitra Lestari Norhiza, ST, M.Eng, Ph.D\r\nDewi Diniaty ST, M,Ec,Dev\r\nMawardi, S.Ag, M.Si\r\nSymsurizal, SE, MS.c AK', 'PENGUKURAN KINERJA RANTAI PASOK MENGGUNAKAN METODE SCOR MODEL DAN SOFTWARE PROCESS WIZARD (Studi Kasus Sertifikasi Produk Halal LPPOM MUI Riau)', 1, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2122/2017', 'Ainun Mardiah, SE, MM\r\nZulhaida, SE, MM', 'PENERAPAN KESETARAAN GENDER DALAM PENGEMBANGAN KARIR KARYAWAN MENGGUNAKAN ANALISIS GENDER MODEL SWOT (Studi Komparatif pada Bank Syariah dan Konvesional di Kota Pekanbaru)', 9, 4, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2122/2018', 'Dr. Nurcahaya, S.Ag, M.Pd.I\r\nMadona Khairunnisa, SE. I., ME. Sy\r\nRoni Kurniawan,SH., MH', 'MODEL KONSEPTUAL IMPLEMENTASI PENDIDIKAN KARAKTER TASAWUF DALAM PROSES PEMBELAJARAN', 1, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2123/2017', 'Mohammad Soleh, S.Si, M.Sc\r\nWartono, M.Sc', 'Model Penyebaran Demam Berdarah di Pekanbaru yang Dipengaruhi Perubahan Iklim', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2123/2018', 'Tengku Nurainun, ST, MT\r\nSiti Monalisa, ST, M.Kom\r\nMisra Hartati, ST, MT', 'RANCANGAN STRATEGI PEMASARAN BERDASARKAN SEGMENTASI MAHASISWA DENGAN METODE MARKETING MIX DAN K-MEANS (STUDI KASUS : UIN SUSKA RIAU)', 2, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2124/2017', 'Dr. Idris, M. Ed\r\nSaipuddin, Lc, M. Ag', 'Implementasi Internet dalam Pembelajaran oleh Guru Madrasah Aliyah Negeri di Kabupaten Kampar', 9, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2124/2018', 'Elfira Safitri, M. Mat', 'PEMODELAN STATISTIK DATA EKSTREM PENCEMARAN UDARA KOTA PEKANBARU', 3, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2125/2017', 'Ade Jamaruddin, M.Ag\r\nRahman, M.Ag', 'Metodologi Al-Qur\'an Braille Bagi Tunanetra Indonesia (Study aanalisis terhadap pembuatan metode belajar al-Qur\'an dengan mesin pencetak al-quran Braille tertua di dunia)', 9, 2, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2126/2017', 'Drs. Jasno Susanto, M.Pd\r\nDra. Hj. Yusrida, M. Pd\r\nNuardi, S. Pd, M. Ed\r\nZulfirman Zani, M. Pd', 'EFEKTIVITAS PENGGUNAAN SOFTWARE KOMPUTER DALAM PEMBELAJARAN BAHASA INGGRIS MADARASAH ALIYAH YPUI DESA TERATAK KECAMATAN RUMBIO JAYA KABUPATEN KAMPAR', 9, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2126/2018', 'Dr. Rado Yendra, M.Sc\r\nAri Pani Desvina, M.Sc\r\nMuspika Hendri, M.A', 'PERBANDINGAN MODEL HUJAN BERDASARKAN DATA HUJAN TAHUN MASEHI DAN TAHUN HIJRIAH', 1, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2127/2018', 'Muammar Alkadafi, S.Sos,. M.Si\r\nRusdi, S.Sos, MA\r\nFitria Ramadhani Agusti NST, S.IP, M.Si', 'PELAKSANAAN HAK ASAL-USUL DAN ADAT ISTIADAT DALAM PENYELENGGARAAN PEMERINTAHAN KAMPUNG ADAT DI KABUPATEN SIAK PROVINSI RIAU', 2, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2128/2017', 'Yantos, M.Si\r\nAtjih Sukaesih, M.Si', 'Perubahan Perilaku Masyarakat Pulau Penyengat Dalam Mata Pencaharian (Studi Kasusu Nelayan Tradisional Kelurahan Pulau Penyengat Kepulauan Riau)', 9, 6, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2129/2017', 'Hesty Wulandari, SE, M.Sc, Ak\r\nEni Noviarni, SE, M.Si, Ak, CA', 'Inovasi dan Kinerja Perusahaan serta Peran Sistem Informasi Akuntansi Manajemen Studi pada Perusahaan Pabrik Kelapa Sawit di Propinsi Riau', 9, 4, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2129/2018', 'Anwardi', 'PERBAIKAN KONDISI KERJA PRODUKSI MINYAK KELAPA TRADISIONAL DENGAN PENDEKATAN ERGONOMI PARTISIPATORI', 3, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2131/2017', 'Drs. Syahril Romli, M. Ag\r\nRosmita, M. Ag', 'PENGARUH TRADISI ZIARAH MAKAM GUS DUR WALI KESEPULUH TERHADAP PENINGKATAN KESEJAHTERAAN EKONOMI PEDAGANG KECIL DI LINGKUNGAN PONDOK PESANTREN TEBUIRENG KABUPATEN JOMBANG', 9, 6, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2131/2018', 'Harpito', 'Analisis Supply Chain Pada Industri Konstruksi Menggunakan Model SCOR (Studi Kasus Pengadaan Tiang Pancang Pada Proyek UIN SUSKA Riau)', 3, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2132/2016', 'Irdayanti, S.IP, MA\r\nWenny Desty Febrian, MM', 'DAMPAK KERJASAMA LUAR NEGERI PEMERINTAH KABUPATEN KAMPAR DENGAN MALAYSIA TECHNOLOGY DEVELOPMENT CORPORATION TERHADAP KEMAJUAN PEREKONOMIAN MASYARAKAT', 9, 4, 4, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2132/2018', 'Dr. Arsyadi Ali, S.Pt, M.Agr. Sc\r\nMuhammad Rodiallah, S. Pt., M.Si', 'PEMANFAATAN LIMBAH PENGGILINGAN AIR TEBU DAN INDIGOFERA ZOLLINGERIANA SEBAGAI PAKAN KAMBING BERBENTUK WAFER', 2, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2140/2017', 'Febri Handayani, S.HI, MH\r\nLysa Angrayni, S.H., M.H', 'Implementasi Perlindungan Hak Konstitusional Warga Negara oleh Mahkamah Konstitusi Menurut Sistem Ketatanegaraan Indonesia', 9, 5, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2141/2017', 'Dr. H. Zailani, M. Ag\r\nDr. Zamsiswaya, M. Ag', 'Herbalife Perspektif Hadis Rasul (Kajian Terhadap Hadis Tentang Obat-obatan)', 9, 2, 5, 2017, 0.00, 'DIPA UIN SUSKA RIAU TAHUN 2017', ''),
('Un.04/L.I/TL.01/2142/2017', 'Artis, S.Ag, M.I.Kom\r\nFatmawati, S.Ag., M.Ed\r\nAbas Wismoyo Hernawan, M.Sos', 'Strategi Unit Pelaksana Teknis Dinas (UPTD) Pariwisata Kabupaten Pesisir Selatan dalam Pengembangan Objek Wisata Bukit Mandeh Sebagai Tujuan Wisata Kabupaten Pesisir Selatan', 9, 6, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2143/2017', 'Dr. Abu Bakar, M.Pd\r\nAbd. Ghofur, M.Ag\r\nKhairiah, M.Ag', 'Problematika Pemberdayaan Komunitas Adat Terpencil (KAT) Suku Sakai di Kecamatan Mandau Kabupaten Bengkalis', 8, 2, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2144/2017', 'Dr. H. Helmi Basri, Lc., MA\r\nDr. H. Hidayatullah Ismail, Lc, MA', 'TEORI MAALAATUL AF`AAL DALAM MAQASID SYARI`AH DAN APLIKASINYA PADA PERMASALAHAN FIQIH KONTEMPORER (Masalah perpolitikan, Transaksi keuangan dan Kemajuan Riset Teknologi)', 9, 5, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2145/2017', 'Dr. Afrizal Nur, S.Th.I., MIS\r\nMustakim, S.T., M.Kom', 'PENERAPAN DATA MINING SEBAGAI PEMODELAN DALAM PENYIMPULAN MUATAN TAFSIR BIL MA\'TSUR DAN RA\'YI PADA TAFSIR TAHRIR WA TANWIR IBNU \'ASYUR (KAJIAN INTEGRASI)', 9, 2, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2146/2017', 'Mardhiah Rubani, M.Si\r\nZulkarnaini, M.Ag', 'ANALISIS LITERASI MEDIA MAHASISWA UIN SUSKA RIAU TENTANG BERITA HOAX DI MEDIA SOSIAL', 9, 6, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2148/2017', 'Dr. H. Nixson, Lc., M. Ag\r\nDrs. Achmad Ghozali Syafei, M.Si\r\nAbas Wismoyo Hernawan, M.Sos', 'Sistem Pembinaan Dan Pengembangan Kaligrafi Di Lembaga Kaligrafi Al-Quran Lemka Sukabumi Jawa Barat Dalam Peningkatan Prestasi Alumni Pondok Pesantren', 9, 2, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2150/2017', 'Drs. Arwan, M.Ag\r\nAlaidin', 'Peran Lembaga Da’wah Ikmi (Idaroh Kemakmuran Mesjid Indonesia) Dalam Membangkitkan Ghirah Perjuangan Sebagai Pondasi Kepemimpinan Dai Di Kota Pekanbaru', 9, 6, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2152/2017', 'Khotimah, M.Ag\r\nDr. Aprizal, M. Si', 'Eksistensi Agama Kunghuchu di Kecamatan Keritang Indragiri Hilir Pasca Keluarnya Kepres RI No.6 Tahun 2000', 9, 2, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2153/2017', 'Dr. Hasbullah, M. Si\r\nDrs. M. Nazar Almasari, M. Ag', 'ISLAM DAN TRADISI MASYARAKAT KOMUNITAS ADAT TERPENCIL (Kajian Terhadap Suku Akit Di Desa Sonde Kabupaten Kepulauan Meranti)', 9, 2, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2157/2018', 'Aulia Ullah, ST., M.Eng\r\nOktaf Briliian Kharisma, ST., MT', 'PENGEMBANGAN SISTEM AKUISI DATA JARAK JAUH SECARA NIRKABEL DALAM PENGAWASAN PEMAKAIAN ENERGI LISTRIK TERINTEGRASI WEB', 3, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2158/2017', 'Dr. Sofia Hardani, M. Ag\r\nDra. Asmiwati, MA', 'Penyelesaian Perkara Mafqud di Pengadilan Agama dalam Perspektif Keadilan Gender (Studi Empiris terhadap Proses Penyelesaian Perkara Mafqud di Pengadilan Agama di Riau)', 9, 5, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2158/2018', 'Deni Fitra, S.Pt, M.P', 'EVALUASI KINERJA KEMITRAAN AYAM PEDAGING KOMERSIAL DENGAN PENDEKATAN IMPORTANCE PERFORMANCE ANALYSIS DI KABUPATEN KAMPAR', 7, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2159/2017', 'Ikhwani Ratna, SE. M.Si, Ak, CA\r\nHidayati Nasrah, SE, M. Acc, AK, CA', 'PENGARUH TINGKAT PEMAHAMAN AGAMA ISLAM TERHADAP PEMAKAIAN ALAT KONTRASEPSI PADA WANITA MUSLIMAH DI KECAMATAN MARPOYAN DAMAI KOTA PEKANBARU', 9, 4, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2160/2018', 'Fitra Kurnia, S.Kom', 'Rancang Bangun pendeteksi gerak menggunakan metode background subtraction', 3, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2161/2017', 'Nelly Yusra, M.Ag\r\nMuhammad Fitriadi, M.Ag\r\nDr. RIan Vebrianto, M.Ed', 'PERBANDINGAN GENDER TERHADAP PROFESIONALISME PEGAWAI DI FTK UIN SUSKA RIAU', 9, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2161/2018', 'Reni Susanti, M.Psi, Psikolog\r\nIkhwanisifa, M.Psi, Psikolog', 'KEBAHAGIAAN MUSTAHIK DITINJAU DARI KEBERSYUKURAN DAN DUKUNGAN SOSIAL LEMBAGA AMIL ZAKAT', 6, 3, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2162/2017', 'Mimi Hariyani, S.Pd., M.Pd\r\nSuherman, MT', 'PENINGKATAN KEMAMPUAN PENALARAN MATEMATIS MAHASISWA PENDIDIKAN GURU MADRASAH IBTIDAIYAH MELALUI CONCEPT ATTAINMENT MODEL', 9, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2162/2018', 'Lysa Angrayni, SH. MH\r\nDra. Hj. Yusliati, M.A', 'EFEKTIFITAS REHABILITASI PECANDU NARKOTIKA SERTA PENGARUHNYA TERHADAP TINGKAT KEJAHATAN DI INDONESIA( STUDI KASUS DI LOKA REHABILITASI BADAN NARKOTIKA NASIONAL  BATAM )', 2, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2163/2017', 'Sehani, SE, MM\r\nDarnilawati, SE, M. Si', 'ANALISIS PELUANG DAN HAMBATAN PERBANKAN SYARIAH TERHADAP NASABAH NON MUSLIM DI KOTA PEKANBARU', 9, 4, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2163/2018', 'H. Darusman, S.Ag, M.Ag\r\nRafdeadi, S.Sos.I., M.A\r\nMustafa, M.I.Kom', 'PERUBAHAN SOSIAL PADA MASYARAKAT ADAT MELAYU RIAU (STUDI PADA MASYARAKAT ADAT SUKU MELAYU PETALANGAN DI KABUPATEN PELALAWAN)', 2, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2164/2017', 'Drs. Cipto Hadi, M.Pd\r\nYulia Novita, S.PdI., M.Par\r\nMhd. Subhan, S.Pd., M.Ed., CH., C.Ht', 'FAKTOR KEMATANGAN KARIR MAHASISWA MUSLIM DALAM PERENCANAAN KARIR ALTERNATIF (ENTERPRENEURSHIP)', 9, 3, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2166/2017', 'Dra. Silawati, M.Pd\r\nDr. Aslati, M. Ag', 'PERAN STRATEGIS PERMATA SEBAGAI MEDIA TRANSFORMASI NILAI-NILAI ISLAM DALAM KELUARGA DI RW 17 KELURAHAN SIDOMULYO BARAT KECAMATAN TAMPAN', 9, 6, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2167/2018', 'YESSI NESNERI, SE., MM\r\nUlfiah Novita, SE., M.Si', 'Strategi Unit Usaha Syariah Bank Umum Konvensional Dalam Menghadapi Spin Off 2023 (Studi Pada PT. BPD Riau dan Kepulauan Riau)', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2168/2017', 'Dra. Hj. Alfiah, S.Ag., M.Ag\r\nNurjanis, S.Ag., M.Ag\r\nIsmail, M.Pd', 'BUDAYA MAHASISWA DALAM MENGGUNAKAN PIRATED BOOKS DAN PROBLEMATIKANYA DI PERGURUAN TINGGI KOTA PEKANBARU', 9, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2169/2017', 'Andri Novius, SE. M.Si, Ak\r\nFaiza Muklis, SE, M.Si, Ak', 'Analisis Implementasi Kepatuhan terhadap Prinsip-Prinsip Syariah (Shariah Compliance) pada BMT Al Ittihad Pekanbaru', 9, 4, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2170/2017', 'Dr. Khairunnas Jamal, S.Ag, M.Ag\r\nH. Syafril Siregar, S.Th.I., MA', 'OPTIMALISASI FUNGSI OBJEK WISATA SEBAGAI SARANA MEMPERKENALKAN AGAMA ISLAM', 9, 2, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2171/2017', 'Dr. Leny Nofianti. MS, SE, M.Si.Ak\r\nDr. Okfalisa, ST, M.Sc\r\nDr. Herlinda', 'PENGUKURAN INISIATIF GREEN FINANCING DI PERBANKAN SYARIAH MENGUNAKAN DESAIN SISTEM PENGAMBILAN KEPUTUSAN', 8, 9, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2171/2018', 'Fitri Insani, ST, M.Kom\r\nRahmad Abdillah, M.T', 'RANCANGAN PROTOTYPE SISTEM PENGAMBILAN KEPUTUSAN DALAM MENGUKUR KESIAPAN PERGURUAN TINGGI ISLAM TERHADAP IMPLEMENTASI LEAN HIGHER EDUCATION INSTITUTION', 3, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2172/2017', 'Merry Siska, ST, MT\r\nEki Saputra, S.Kom, M.Kom\r\nReski Mai Candra, ST, M.Sc', 'Aplikasi Novel Ergonomic Assessment Postural Method (NERPA) pada Sentra Industri Kreatif Indonesia (Studi Kasus di UMKM Bandung)', 8, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2172/2018', 'Rizki Fiprinita, M.Pd\r\nRoswati, M.Pd\r\nIdham Syahputra, M.Ed', 'PENGEMBANGAN BAHAN AJAR  BAHASA INGGRIS CHARACTER-BASED INSTRUCTIONAL MATERIALS DENGAN MEDIA KARTU DI SMP NEGERI 4 PEKANBARU', 1, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2174/2017', 'Drs. H. M. Hatta, M.Ag\r\nMiterianifa, M.Pd\r\nRizki Fiprinita, M.Pd', 'Pengembangan Perangkat Pembelajaran Kimia Berbasis Karakter dengan Pendekatan Scaffolding', 8, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2175/2018', 'Dr. Idris, M.Ed\r\nMohd. Fauzan, M.Ag\r\nDrs. Muhammad Fitriyadi, MA', 'Penerapan Model Pembelajaran Berbasis Internet dan Pengaruhnya terhadap Motivasi Berprestasi dan Kreativitas Belajar Siswa Madrasah Aliyah Negeri di Provinsi Riau', 2, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2176/2017', 'Dr. Sri Murhayati, M.Ag\r\nLies Andriani, S.Pd., M.Mat\r\nNurrahmi Hayani, SE.,MBA', 'Penguatan Integrated Character Education dalam Transformasi Sistem Pendidikan Full Day School di Madrasah Ibtidaiyah Negeri Kota Pekanbaru', 8, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2176/2018', 'Dr. Nurdin, MA\r\nDewi SUkartik, M. Sc\r\nUsman, M. Ikom', 'TRANSFORMASI PESAN KONSERVASI SUMBER DAYA AIR DI KAWASAN SUAKA MARGASATWA BUKIT RIMBANG BALING KABUPATEN KAMPAR PROVINSI RIAU MELALUI KEARIFAN LOKAL BERBASIS NILAI-NILAI ISLAM', 1, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2177/2018', 'Prof. Dr. Zikri Darussmin, M.Ag\r\nRahman, M.Ag\r\nDrs. Syahril Romli, M.Ag', 'RELASI HUKUM ISLAM DENGAN ADAT PERKAWINAN ETNIK MELAYU DI KABUPATEN SIAK PROVINSI RIAU', 2, 2, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2178/2018', 'Lusiawati, SE, MBA', 'MENGUKUR TINGKAT SHARIA FINANCIAL LITERACY MASYARAKAT TERHADAP INDUSTRI KEUANGAN NON BANK (IKNB) SYARIAH : KAJIAN PADA DOSEN PERGURUAN TINGGI KEAGAMAAN ISLAM DI PEKANBARU', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2180/2018', 'Erdawati Nurdin, S.Pd, M.Pd', 'PENGEMBANGAN LEMBAGA KERJA BERBASIS PENDEKATAN PENEMUAN TERBIMBING UNTUK MEMFASILITASI KEMAMPUAN REPRESENTASI MATEMATIS MAHASISWA', 7, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2181/2018', 'CORRY CORAZON MARZUKI', 'NILAI TOTAL KETAKTERATURAN SISI DARI m-COPY GRAF LINTASAN', 3, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2182/2018', 'Mimi Hariyani, S.Pd., M.Pd\r\nSuherman, MT', 'PENINGKATAN KEMAMPUAN DISPOSISI MATEMATIS MAHASISWA PENDIDIKAN GURU MADRASAH IBTIDAIYAH MELALUI CONCEPT ATTAINMENT MODEL', 6, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2183/2018', 'Aras Aira, SE, M.Ak', 'Faktor-Faktor yang mempengaruhi kecendrungan kecurangan akuntansi (Fraud) dengan perilaku tidak etis sebagai variabel intervening Pada Organisasi Perangkat Daerah (OPD) Kabupaten Kampar.', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2185/2018', 'Nur Alhidayatillah, M.Kom.I\r\nRohayati, M.I.Kom', 'ANALISIS FUNGSI KOMUNIKASI BENCANA DALAM MENGURANGI KEBAKARAN HUTAN DAN LAHAN (STUDI KASUS PADA BADAN PENANGGULANGAN BENCANA DAERAH PROVINSI RIAU)', 3, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2186/2018', 'Tika Mutia,S.I.Kom, M.I.Kom', 'Fenomenologi Komunikasi Generasi Z di Kota Pekanbaru', 3, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2187/2017', 'Dr. Sukma Erni, M.Pd\r\nNurhayati, M.Hum\r\nMeimunah S. Moenada, M.Ag', 'Keterampilan Interpersonal: Kajian Hubungan Pengetahuan tentang Agama dan Locus of Control dengan Keterampilan Interpersonal Mahasiswa di Riau', 8, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2188/2018', 'Dr. Elfiandri, M. Si\r\nFebri Rahmi, SE., M. Sc. Ak.', 'Literasi Media Dan Pengaruhnya Terhadap Resistensi Berita Hoax Serta  Perilaku Konsumtif Produk Halal Dan Sehat Pada Masyarakat Muslim Di Provinsi Riau', 6, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2189/2018', 'Fitri Aryani, M.Sc', 'TRACE MATRIKS 3 X 3 BERPANGKAT BILANGAN BULAT', 6, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2190/2018', 'Sri Wahyuni, M.A., M.Psi\r\nRaudatussalamah, M.A', '“RELASI ORANGTUA-ANAK PADA KELUARGA MELAYU” (Analisis Psikologi Indijinus)', 6, 3, 5, 2018, 21000000.00, '-', ''),
('Un.04/L.I/TL.01/2191/2017', 'Hj. Helmiati, M.Ag\r\nDr. Syukree Langputeh, MA\r\nDra. Hj. Syafrida, M.Ag\r\nDevi Fitriani, S.Pd. M.Mat', 'PENGEMBANGAN DAN IMPLEMENTASI PENDIDIKAN PERDAMAIAN (PEACE EDUCATION) DALAM RANGKA TRANSFORMASI KONFLIK DITHAILAND SELATAN', 8, 9, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2191/2018', 'Lola Oktavia, S.S.T., M.T.I.', 'PENILAIAN PENERIMAAN E-GOVERNMENT DI INDONESIA', 7, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2192/2018', 'Chandra Jon Asmara, S.Sos, MSi', 'EDUKASI POLITIK DALAM PELAKSANAAN PEMILIHAN KEPALA DAERAH (PILKADA) LANGSUNG KABUPATEN KAMPAR 2017 (STUDI KOMPARATIF DI KECAMATAN XIII KOTO KAMPAR DAN KOTO KAMPAR HULU KABUPATEN KAMPAR)', 7, 4, 5, 2018, 0.00, '-', '');
INSERT INTO `penelitian` (`no_sk`, `penulis`, `judul`, `id_cluster`, `id_fakultas`, `id_rak`, `tahun`, `pendanaan`, `sumber_dana`, `file`) VALUES
('Un.04/L.I/TL.01/2195/2017', 'Dr. Yendra Liza, S.Pt, MP\r\nDr. Arsyandi Ali, S.Pt., M.Agr.Sc\r\nRestu Misrianti, S.Pt.,M.Si\r\nAnwar Efendi Harahap, S.Pt., M.Si', 'PERBANDINGAN KUALITAS SEMEN, PAKAN DAN GEN STAT5A TERNAK LOKAL PROVINSI RIAU DENGAN KOMODITI TERNAK ASIA TENGGARA', 8, 8, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2195/2018', 'Dr. Sofia Hardani, M.Ag.\r\nNur Hasanah, SE., M.M.\r\nDrs. Arifuddin, MA', 'IMPLEMENTASI KOMPILASI HUKUM EKONOMI SYARIAH (KHES) DALAM MENYELESAIKAN SENGKETA EKONOMI SYARIAH DI PENGADILAN AGAMA DI PROVINSI RIAU', 2, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2196/2018', 'Intan Kemala, S.Sos., M.Si', 'KOMPETENSI KOMUNIKASI ANTAR BUDAYA MAHASISWA INTERNASIONAL UIN SUSKA RIAU', 7, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2197/2018', 'Dr. H. Mawardi Muhammad Saleh, Lc, MA\r\nH. Fikri Mahmud, Lc., MA\r\nDr. Zulfahmi M.Ag', 'PENANGKALAN RADIKALISME AGAMA DALAM PERSPEKTIF MAQASHID SYARI’AH (Studi di Markaz al-Maqashid li al-Dirasat waal-Buhuts Maroko)', 1, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2198/2017', 'Dr. H. Aprijon Efendi, Lc, MA\r\nMohd. Fauzan, S.Ag, M.Ag\r\nNandang Syarif Hidayat, MA', 'PANDANGAN MASYARAKAT TERHADAP PELAKSANAAN KHUTBAH JUM`AT BERBAHASA ARAB DI PEKANBARU DAN SEKITARNYA', 8, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2199/2018', 'Umar Abdurrahim SM.,S.Sos.I.,MA', 'ANALISIS PENGGUNAAN APLIKASI MEDIA SOSIAL DAN DAMPAKNYA TERHADAP KENAKALAN REMAJA DI KOTA PEKANBARU', 7, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2200/2017', 'Dr. H. Erman, MA\r\nDrs.H. Ibrahim, MA\r\nDrs. Arifuddin, MA', 'NUSYUDZ DALAM KONSEPSI ALQURAN DAN PENYELESAINNYA PADA PENGADILAN AGAMA DI INDONESIA (Integrasi Alquran dan Hukum Positif Indonesia)', 8, 5, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2200/2018', 'Mardhiah Rubani, M.Si\r\nAlaidin.SH', 'EKSISTENSI RADIO ETNIK SERUMPUN RADIO 91.7 FM BATAM SEBAGAI PENGUATAN KEARIFAN LOKAL DALAM PERSPEKTIF UU. 32 TAHUN 2002', 2, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2201/2018', 'Khairiah, M.Ag', 'FENOMENA KONVERSI AGAMA DI KOTA PEKANBARU (KAJIAN MOTIF DAN MAKNA)', 7, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2202/2018', 'Sehani, SE, MM', 'ANALIS STRATEGI POSITIONING BANK MUAMALAT SEBAGAI PELOPOR PERBANKAN SYARIAH KOTA PEKANBARU', 7, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2204/2017', 'H. Darusman, S.Ag, M.Ag\r\nRafdeadi, S.Sos.I., MA\r\nPipir Romadi, S.Kom.I., M.M', 'Eksistensi Sistem Kepemimpinan Adat Suku Petalangan di Kabupaten Pelalawan', 8, 6, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2204/2018', 'Indah Permanasari, S.P., M.P\r\nTiara Septirosya, S.P., M.Si', 'STUDI KUALITAS BENIH DAN HASIL TANAMAN KEDELAI YANG BERASAL DARI JENIS TANAH DAN SISTEM PERTANAMAN BERBEDA', 6, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2205/2017', 'Dra. Hj. Nurhayati B, M.Ag', 'KETRAMPILAN GURU MELAKSANAKAN INTEGRASI ILMU AGAMA DENGAN ILMU UMUM MELALUI KORELASI OKASIONAL PADA PEMBELAJARAN AL-QUR’AN HADIST DI PESANTREN PROVINSI RIAU', 8, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2205/2018', 'Novita Hera, S.P., M.P', 'BUDIDAYA BAWANG MERAH (ALLIUM ASCALOMICUM L.)  DENGAN BEBERAPA MODEL RANCANG BANGUN VERTIKULTUR', 7, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2206/2017', 'Drs. Ali Akbar, MIS\r\nJani Arni, S.Th.I., M.Ag\r\nMuslim, S.Ag., SH., M.Hum', 'TAFSIR AL-QAULUL BAYAN FI TAFSIR AL-QURAN KARYA SYEKH SULAIMAN AR-RASULI (Studi tentang Metode dan Corak Penafsiran)', 8, 2, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2206/2018', 'Prof. Dr. H. Alaiddin, MA\r\nNurhayati, S.E.I., ME.Sy\r\nMuhammad Soim, M.Ag', 'EKSPLORASI PRAKTIK HUKUM ISLAM WAKAF PRODUKTIF DAN AKUNTABILITAS LEMBAGA – LEMBAGA WAKAF DI INDONESIA (STUDI KOMPARATIF PADA PROVINSI DKI JAKARTA DAN JAWA BARAT)', 5, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2207/2017', 'Dr. H, Abd. Wahid, M.Us\r\nHaris Riadi. M.Ag\r\nDr. H. Jamaluddin, M.Us', 'Aktifitas Dakwah kepada Masyarakat Suku Akit di Kecamatan Bantan Kabupaten Bengkalis', 8, 2, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2207/2018', 'Memen Permata Azmi,S.Pd., M.Pd.', 'PENGEMBANGAN LEMBAR KERJA SISWA DENGAN PENDEKATAN CONCRETE-REPRESENTATIONAL- ABSTRACT (CRA) BERBASIS INTUISI UNTUK MEMFASILITASI KEMAMPUAN PEMAHAMAN KONSEP MATEMATIS SISWA MADRASAH TSANAWIYAH KABUPATEN KAMPAR', 3, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2208/2017', 'Miftahuddin, M.Ag\r\nDrs. H. Suhaimi, M.Ag\r\nM. Fahli Zatrahadi, M.Pd\r\nDarmawanti, M.I.Kom', 'TAREKAT SEBAGAI TERAPI GANGGUAN KEJIWAAN (Studi di Desa Besilam Kabupaten Langkat Sumatra Utara)', 8, 6, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2208/2018', 'Hayatun Nufus, S.Pd, M.Pd', 'PROFIL KEMAMPUAN KOMUNIKASI MATEMATIS MAHASISWA DALAM MENYELESAIKAN SOAL PADA MATA KULIAH PROGRAM LINIER BERDASARKAN GAYA KOGNITIF DAN HABITS OF MIND', 3, 1, 5, 2018, 15000000.00, '-', ''),
('Un.04/L.I/TL.01/2209/2018', 'Suhandri, S.Si., M.Pd\r\nArnida Sari, S.Pd., M.Mat', 'PENGEMBANGAN MODUL BERBASIS KONTEKSTUAL TERINTEGRASI NILAI KEISLAMAN UNTUK MENINGKATKAN KEMAMPUAN PEMECAHAN MASALAH MATEMATIS SISWA MTs DI PROPINSI RIAU', 6, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2211/2017', 'Dr. Dewi Febrina. S.Pt., M.P\r\nDr. Rahmi Febriyanti. M.Sc\r\nZumarni. S.Pt., M.P', 'Isolasi Senyawa Bioaktif Antimikroba dari Pelepah Kelapa Sawit (Elaeis Guineensis Jacq)', 8, 8, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2212/2018', 'Dra. Suhertina, M.Pd.', 'PERSEPSI SISWA TENTANG PENYALAHGUNAAN NARKOBA DI SEKOLAH MENENGAH PERTAMA NEGERI (SMPN) SE-RIAU', 6, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2213/2017', 'Dr. Mahyarni, SE, MM\r\nAstuti Meflinda, SE, MM\r\nIdentiti, SE, M.Ak', 'INVESTIGASI PENGARUH GREEN ECONOMIC, BENEFIT SOSIAL, DAN BENEFIT EKONOMI TERHADAP PERKEMBANGAN BISNIS DAN KINERJA UMKM SYARIAH (STUDI KASUS PADA INDUSTRI PARIWISATA DI PROVINSI RIAU DAN SUMATERA BARAT)', 8, 4, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2213/2018', 'Rena Revita, S.Pd., M.Pd\r\nIrma Fitri, S.Pd, M.Mat', 'EVALUASI PELAKSANAAN KURIKULUM 2013 PADA PEMBELAJARAN MATEMATIKA SMA NEGERI KELAS XI DI KABUPATEN BENGKALIS', 3, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2214/2018', 'Dr. H. Aprijon Efendi, Lc. MA\r\nDr. H. Yasmaruddin Bardansyah, MA', 'PANDANGAN MASYARAKAT TERHADAP PELAKSANAAN KHUTBAH JUM`ATTRADISIONAL BERBAHASA ARAB DI MASJID JAMA’AH THARIQAT SYATARIYAH', 2, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2215/2017', 'Fitri Aryani, M.Sc\r\nCorry Corazon Marzuki, M. Si', 'Invers Matriks Toeplitz Bentuk Khusus Menggunakan Metode Adjoin', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2216/2017', 'Jasril, S.Si, M.Sc\r\nSuwanto Sanjaya, S.T, M.Kom', 'IMPLEMENTASI SPATIAL FUZZY C-MEANS, EKSTRAKSI FITUR CITRA DAN KLASIFIKASI LVQ 3 DALAM PENGENALAN CITRA DAGING SAPI DAN BABI', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2216/2018', 'Dr. Hj. Andi Murniati, M. Pd\r\nDra. Syariah, M. Pd', 'IMPLEMENTASI KURIKULUM 2013 DAN IMPLIKASINYA TERHADAP  PERILAKU KEBERAGAMAAN SISWA MTS NEGERI TEMBILAHAN INDRAGIRI HILIR', 6, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2217/2017', 'Arif Marsal, Lc, MA\r\nFitri Hidayato, SE., MM', 'PENGARUH PENGGUNAAN MEDIA SOSIAL TERHADAP KINERJA PEGAWAI DI LINGKUNGAN UIN SUSKA RIAU', 9, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2220/2018', 'VIRNA MUSELIZA, SE, M.Si\r\nAfrizal, S.Sos, M.Si\r\nDevi Deswimar, S.Sos, M.Si', 'PENGARUH FATWA MAJELIS ULAMA INDONESIA (MUI) NOMOR 4 TAHUN 2016 TENTANG IMUNISASI TERHADAP KEPUTUSAN ORANG TUA MELAKSANAKAN IMUNISASI DASAR ANAK DI PROVINSI RIAU', 1, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2221/2018', 'Evi Irawati, S.Pt, M.P', 'ANALISIS KEPUASAAN PETERNAKAN PLASMA TERHADAP KINERJA KEMITRAAN AYAM PEDAGING KOMERSIAL DI KABUPATEN KAMPAR', 7, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2223/2018', 'Salmiah, S.Pd., M.Pd. E.', 'PERAN MENONGKAH TRADISI MENCARI KERANG SEBAGAI UPAYA PENINGKATAN PENDAPATAN EKONOMI PADA MASYARAKAT SUKU LAUT DI DESA KUALA PATAH PARANG KECAMATAN SUNGAI BATANG KABUPATEN INDRAGIRI HILIR', 7, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2224/2018', 'Dr. Teddy Purnamirza, ST,.M.Eng\r\nRika Susanti, ST, M.Eng\r\nDepriwana Rahmi, S.Pd, M.Sc\r\nHalim Mudia, ST, MT', 'Perancangan Antena RLSA yang memiliki dua arah pancar berlawanan', 2, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2225/2018', 'Raja Rahima Munawarah Raja Ahmad,S.Pd.I., M.Pd. Kons\r\nHasgimianti, S.Pd., M.Pd., Kons', 'PENGARUH KONSELING PRANIKAH TERHADAP PEMAHAMAN REMAJA TENTANG BAHAYA SEKS BEBAS DAN PERNIKAHAN DINI DI DESA KUALU NENAS KECAMATAN TAMBANG KAMPAR RIAU', 3, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2228/2018', 'Drs. Ali Akbar, MIS\r\nJani Arni, S.TH.I, M. Ag\r\nDr. H. Hidayatullah Ismail, Lc, MA', 'STUDI TENTANG METODE PEMBELAJARAN KITAB TAFSIR PADA PONDOK PESANTREN DI PROPINSI RIAU', 2, 2, 5, 2018, 0.00, 'DIPA LEMBAGA PENELITIAN DAN PENGABDIAN UIN SUSKA RIAU TAHUN 2018', ''),
('Un.04/L.I/TL.01/2230/2018', 'Dr. Zaitun, M.Ag\r\nDrs.M.Hanafi, M.Ag\r\nNurhayati Zein, S.Ag., M.Sy\r\nKasmiati, S.Pd.I.,M.A', 'PENDIDIKAN MULTIKULTURAL SEBAGAI UPAYA PENANAMAN NILAI KARAKTER MAHASISWA DI PERGURUAN TINGGI (Studi terhadap STAI di Provinsi Riau dan Kepulauan Riau)', 2, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2231/2018', 'Yasnel, M.Ag', 'EKSISTENSI TAREKAT NAQSYABANDIYAH PADA MASYARAKAT SAKAI', 7, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2232/2018', 'Megawati, S.Kom, MT', 'EVALUASI MANAJEMEN LAYANAN SERVICE DESK PADA CUSTOMER CARE CENTER (C3) UIN SUSKA RIAU MENGGUNAKAN FRAMEWORK COBIT 4.1 DAN ITIL V3', 6, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2233/2018', 'Dr. H. M. Ridwan Hasbi, Lc, MA\r\nDr. Rina Rehayati, M.A\r\nDr. Martius, M.Hum', 'Integrasi Sirah Nabawiyah Dalam Tunjuk Ajar Melayu Riau Pada Pendidikan Karakter Anak', 2, 2, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2234/2018', 'Rahmawati, S.Si, M.Sc\r\nIrma Suryani, S.Si, M.Sc', 'FORMULASI SINGLE DEPOT MULTIPLE TRAVELING SALESMAN PROBLEM (MTSP) DENGAN PEMROGRAMAN LINEAR FUZZY PADA KASUS DEPOSIT CARRYING', 3, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2235/2018', 'Jasril, SSi, MSc', 'IMPLEMENTASI HUESATURATION VALUE DAN LOCAL BINARY PATTERN PADA KLARIFIKASI DAGING SAPI DAN BABI MENGGUNAKAN MODIFIED K-NEAREST NEIGHBORS', 7, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2236/2018', 'Melfa Yola, ST, M.Eng', 'Eco-Design Kemasan Makanan Lokal dengan Pendekatan Kansei Engineering', 6, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2239/2018', 'Darnilawati, SE, M.Si', 'ANALISIS STRATEGI KEUNGGULAN BERSAING USAHA MIKRO KECIL MENENGAH (UMKM) PRODUK SYARIAH BERBASIS E-BUSINESS DI KOTA PEKANBARU', 3, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2240/2018', 'Rimet, SE, MM.Ak. CA', 'STRATEGI PENGEMBANGAN WISATA SYARIAH DI SUMATERA BARAT : ANALISIS SWOT (Strength, Weakness, Opportunity, Threath)', 3, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2252/2018', 'Fitri Hidayati, SE., MM\r\nWenny Desty Febrian., SE., MM', 'Pengaruh Penggunaan Jejaring Sosial Terhadap Produktivitas Pebisnis Onlineshop dengan Motivasi sebagai Variabel Moderasi', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2253/2018', 'Sutoyo, MT\r\nDr. Dedi Irawan, M.Sc\r\nArif Marsal Lc, MA\r\nAgus Firdaus Chandra Lc, MA', 'DESAIN SISTEM PENGUKURAN TERPADU SINYAL SATELIT SECARA REAL-TIME YANG DIPENGARUHI OLEH REDAMAN HUJAN DI KAWASAN ASIA TENGGARA (INDONESIA, SINGAPURA DAN MALAYSIA)', 2, 9, 5, 2018, 0.00, '', ''),
('Un.04/L.I/TL.01/2254/2018', 'Ewi Ismaredah, S.Kom, M.Kom\r\nNanda Putri Miefthawaty, B.Sc., M.Sc', 'Pengembangan Aplikasi Mobile Web Untuk Mengidentifikasi Gangguan Kualitas Daya Listrik Menggunakan Asynchronouse Javascript XML, S- Transform Dan Support Vector Machine', 6, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2257/2018', 'Hariza Hasyim, SE, M.Si', 'PENGARUH EFIKASI DIRI, KECAKAPAN SOSIAL DAN INFORMASI KARIR TERHADAP PERENCANAAN KARIR MAHASISWA UIN SUSKA RIAU', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2258/2018', 'Muhammad Nurwahid, M.Ag\r\nAhmad Mas\'ari, MA.Hk\r\nDrs. Yusran Sabili, MA\r\nIlham Akbar, SHI, SH, MH', 'PARADIGMA FIQIH KELOMPOK SALAFI DI INDONESIA DAN IMPLIKASINYA DALAM KEHIDUPAN BERBANGSA', 2, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2259/2018', 'Riki Handri Malau, SE, MM\r\nRony Jaya, S.Sos, M.Si ', 'Analisis Perbedaan Sikap dan Kebiasaan Konsumen dalam Memandang Label Halal Pada Gerai makanan di Provinsi Riau dan Kepulauan Riau ; Suatu Relijiusitas Perilaku Konsumen dalam Berbelanja.', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2260/2018', 'Rahmadeni, S. Si, M.Si', 'ANALISIS PENGARUH PENDAPATAN ASLI DAERAH (PAD), TENAGA KERJA DAN PENGANGGURAN TERHADAP TINGKAT KEMISKINAN DI PROVINSI RIAU', 3, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2267/2018', 'Dr. Alex Wenda, S.T., M. Eng\r\nYusmar Mahmud, SP., M.Si\r\nInggih Permana, ST., M.Kom', 'Diagnosa Penyakit Tanaman Padi Berdasarkan Tekstur Analisis Hybrid Color Local Entropy Threshold Dan Otsu Menggunakan Rule Based Expert System', 2, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2269/2018', 'Dr. Zubaidah Amir  MZ, M.Pd\r\nRamon Muhandaz, M.Pd', 'Profil Kesulitan Belajar Matematika dan Self-efficacy Matematis  Siswa Sekolah Menengah Riau', 6, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2271/2018', 'M. IQBAL LUBIS', 'Analisis Kesiapan Program Studi Pendidikan Ekonomi Universitas Islam Negeri SUSKA Riau Dalam Membuka Kelas Internasional Tahun 2017', 3, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2272/2018', 'Annisah Kurniati, S.Pd.I, M.Pd\r\nDepi Fitriani, S.Pd., M.Mat', 'Pengembangan Buku Matematika Berbasis Pendekatan Matematika Realistik Terintegrasi Ilmu Keislaman', 6, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2277/2018', 'ANNA NURLITA, SE., M.Si', 'ANALISIS MINAT INVESTOR PEKANBARU DALAM INVESTASI EFEK SYARIAH PADA PASAR MODAL INDONESIA', 3, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2278/2018', 'ENDRIANTO USTHA, ST, MM', 'ANALISIS FAKTOR-FAKTOR YANG MEMPENGARUHI KEMAMPUAN SUMBER DAYA MANUSIA DALAM MENENTUKAN STRATEGI BERSAING PADA RUMAH MAKAN DI KOTA PEKANBARU', 3, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2280/2018', 'Edi Erwan, S.Pt, M.Sc, Ph.D', 'STUDI POTENSI ASAM AMINO L-CITRULLINE SEBAGAI AGEN ANTI HEAT STRESS MELALUI ORAL ADMINISTRATION PADA ANAK AYAM KAMPUNG', 7, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2281/2018', 'Drs. H. Promadi, M.A. Ph.D\r\nDadang Firdaus, M.A.', 'PEMIKIRAN BUYA HAMKA TENTANG PEMBELAJARAN BAHASA ARAB: Kajian Terhadap Novel Karya Prof. Dr. Hamka', 2, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2282/2018', 'Dr. Afrizal Nur, ST, M.Kom,\r\nSuja\'i Sarifandi, M.Ag', 'IMPLEMENTASI TEXT MINING CLASSIFICATION SEBAGAI PEMODELAN DALAM PENYIMPULAN MUATAN TAFSIR BIL MA\'TSUR DAN RA\'YI PADA TAFSIR ALMISBAH M.QURAISH SHIHAB BERBASIS MOBILE APPLICATION', 1, 2, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2283/2018', 'Fitri Amillia', 'ANALISIS KINERJA TRANSMISI CITRA MELALUI KANAL RAYLEIGH FADING PADA SISTEM SCFDMA', 6, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2284/2018', 'Nurmaini Dalimunthe,S.Kom,.M.Kes', 'Implementasi Electronic Government Menuju Smart City Kota Pekanbaru', 6, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2285/2018', 'Wenny Pujiastuti, S.Sos, M.KP', 'ANALISIS KEDISIPLIN MAHASISWA FAKULTAS EKONOMI DAN ILMU SOSIAL DALAM MINAT MEMBACA DI PUSTAKA FAKULTAS EKONOMI DAN ILMU SOSIAL UIN SUSKA RIAU', 7, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2289/2018', 'Febi Yanto, S.Kom, M.Kom\r\nSiti Ramadhani, S. Pd., M. Kom', 'OPTIMASI ROUTING DAN PENYEBARAN SENSOR DALAM INTERNET OF THINGS (IoT)', 6, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2303/2018', 'Ervina Aryanti, S.P., M.Si', 'Pemberian Abu Boiler Sebagai Pengganti Pupuk Anorganik pada Tanaman Kelapa Sawit di Desa Bangko Pusaka Kabupaten Rokan Hilir : Studi Ketersedian Unsur Hara pada Tanah', 3, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2304/2018', 'Dr. Yenni Kurniawati, S.Si., M.Si\r\nDra. Firti Refelita, M.Si\r\nDra. Afrida, M.Ag', 'PENGEMBANGAN VIRTUAL-MICROLAB KIMIA BERBASIS GREEN-CHEMISTRY TERINTEGRASI NILAI ISLAM UNTUK MENDUKUNG KETERAMPILAN BEREKSPERIMEN KIMIA  DAN KARATER RELIGIUS SISWA', 1, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2305/2018', 'Junaidi Lbs, S.Ag, M.Ag\r\nListiawati Susanti, S.Ag, M.A', 'ASAS MANFAAT DALAM MENETAPKAN HUKUM ANALISIS TERHADAP PERBEDAAN PENDAPAT ULAMA FIQH DALAM AHWALUS SYAKHSIYYAH', 6, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2314/2018', 'Darni, S.P., MBA', 'PERSEPSI MAHASISWA TERHADAP PENGGUNAAN CADAR DI LINGKUNGAN PERGURUAN TINGGI UIN SUSKA RIAU', 7, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2316/2018', 'Dr. ABU SAMAH, MH', 'PERSEPSI MASYARAKAT TERHADAP KUALITAS SIFAT PRIBADI PIMPINAN KEPALA DESA HASIL PEMILIHAN LANGSUNG SERENTAK TANGGAL 28 OKTOBER 2017 DI KABUPATEN KAMPAR PROPINSI RIAU', 3, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2321/2018', 'Fatimah Depi Susanty Harahap, S.Pd.I, MA', 'PERSEPSI GURU MADRASAH ALIYAH NEGERI TERHADAP PELAKSANAAN UJI KOMPETENSI GURU (UKG)  BERBASIS CAT DI KOTA PEKANBARU', 6, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2322/2018', 'Eka Fitriyani, M.Psi.\r\nIndah Damayanti, M.Psi.,', 'STUDI TENTANG RELIGIUSITAS, KEMATANGAN EMOSIONAL, DAN STRESS SOSIAL PADA ORANG TUA YANG MELAKUKAN KEKERASAN TERHADAP ANAK DI PEKANBARU', 2, 3, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2324/2018', 'Pangadilan Rambe, S.Pd.I, MA', 'PENGEMBANGAN APLIKASI PEMBELAJARAN INOVATIF DALAM PEMBELAJARAN BAHASA ARAB BERBASIS WEB', 6, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2325/2018', 'DR. H. Ismardi, M.Ag\r\nDr. Zulkifli, M.Ag\r\nKamiruddin, M.Ag\r\nAfrizal Ahmad, M.Ag', 'REFORMASI MUSLIM MARRIAGE AND DIVORCE ACT (MMDA)  OLEH MUSLIM MELAYU DI  SRILANKA (SUATU PENDEKATAN SOSIOLOGI HUKUM)', 2, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2326/2018', 'Lazulva, S, Si, M.Si\r\nLisa Utami, S.Pd., M.Si\r\nYuni Fatisa, M.Si', 'PRODUKSI ENERGI LISTRIK DAN PENGHILANGAN ION SULFAT DENGAN LIMBAH KULIT PISANG MENGGUNAKAN TEKNOLOGI MICROBIAL FUEL CELL', 6, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2328/2018', 'Drs. H. M. Hatta, M. Ag\r\nMiterianifa, M. Pd\r\nZona Octarya, M. Si', 'Pengembangan Bahan Ajar Kimia Berorientasi Literasi Sains Berbasis Penguatan Pendiidikan Karakter', 2, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2348/2018', 'Umi Rachmah Damayanti, SE. MM', 'ANALISIS TINGKAT EFISIENSI KINERJA LEMBAGA KEUANGAN MIKRO SYARIAH DENGAN PENDEKATAN TWO STAGE DATA ENVELOPMENT ANALYSIS(DEA)', 7, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2351/2018', 'Peri Pirmansyah,SH,.MH', 'KARAKTER MASYARAKAT DALAM PEMILIHAN KEPALA DAERAH (GUBERNUR) tAHUN 2018 DI PROVINSI RIAU (studi di Kabupaten Kampar, Kabupaten Siak, Kabupaten Pelalawan, dan kota Pekanbaru', 6, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2361/2018', 'Irdayanti, S.IP, MA', 'DAMPAK KAMPANYE EARTH HOUR TERHADAP KESADARAN LINGKUNGAN MASYARAKAT', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2362/2018', 'Drs. Akmal, M.Pd', 'KONSEP SYUKUR (GRATEFULNES) DALAM PRESFEKTIF PSIKOLOGI POSITIF DAN ISLAM (Kajian Empiris Makna Syukur bagi Guru Pon-Pes Daarunnahdhah Thawalib Bangkinang Seberang, Kampar, Riau)', 3, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2378/2017', 'Putriana, SE, MM\r\nRimet, SE, MM, Ak, CA', 'ANALISIS PERSEPSI MASYARAKAT MUSLIM DAN NON MUSLIM TERHADAP KESIAPAN DESTINASI WISATA SYARIAH DI KOTA PEKANBARU DAN PADANG', 9, 4, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2381/2018', 'Dr. Hj. Sitti Rahmah, M.Si', '“MENONGKAH” SUATU BENTUK PENDIDIKAN TRADISIONAL PADA MASYARAKAT SUKU DUANU DI SUNGAI LAUT KECAMATAN TANAH MERAH INDRA GIRI HILIR RIAU', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2383/2018', 'Nurjanis, S.Ag, MA', 'DAMPAK PSIKOLOGIS NEGATIF KECANDUAN PERMAINAN ONLINE PADA MAHASISWA UIN SUSKA RIAU(STUDI KASUS: MOBILE LEGEND)', 7, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2390/2018', 'Dr. Leny Nofianti. MS, SE, M.Si.Ak, CA\r\nDr. Juliana, SE. M.Si\r\nDiana Eravia, SE. MM', 'PARADIGMA INTERPRETIF KRITIS: PENGEMBANGAN MODEL ISLAMIC GOVERNANCE  DALAM MENILAI KINERJA PERBANKAN SYARIAH', 4, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2391/2018', 'Benny Sukma Negara, ST,.MT\r\nAbas Wismoyo Hernawan, M. Sos', 'Pemanfaatan Memprediksi Jenis Kelamin Berdasarkan Tulisan Tangan Dengan Skema Machine Learning', 6, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2396/2018', 'Dr. Hartono, M.Pd\r\nMardia Hayati, M.Ag\r\nMirawati, M.Ag', 'Program LPTK dalam mengimplementasikan Kurikulum 2013 Edisi revisi 2017 di Universitas Islam Negeri se Indonesia', 2, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2408/2017', 'Muhammad Nurwahid, M.Ag\r\nAhmad Mas\'ari, MA. Hk\r\nYusran Sabili, MA', 'Beragama Dalam Bernegara: Paham Kebangsaan Front Pembela Islam (FPI) Dalam Konteks Negara Indonesia Yang Pluralistik', 8, 5, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/244/2015', 'Endah Purnama Sari, S.Pt, M.Si', 'KUALITAS FISIK, KIMIA, DAN MIKROBIOLOGI DAGING QURBAN DI KOTA PEKANBARU', 7, 8, 4, 2015, 0.00, '-', ''),
('Un.04/L.I/TL.01/2457/2017', 'Rahmad, M. Pd', 'Analisis Layanan Konsultasi terhadap Kasus Perempuan dan Anak Korban Kekeranan Dalam Rumah Tangga di Badan Pemberdayaan Perempuan Perlindungan Anak dan Keluarga Berencana (BPPPAKB) Provinsi Riau', 9, 6, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2470/2017', 'Drs. H. Mohd. Yunus, M.Ag', 'DAMPAK SOSIAL KEAGAMAAN PENETAPAN TANJUNG BUTONSEBAGAI KAWASAN PERDAGANGAN BEBAS/ FREE TRADE ZONE (FTZ) BAGI MASYARAKAT TANJUN BUTON KABUPATEN SIAK', 8, 5, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2556/2017', 'NANDA PUTRI MIEFTHAWATI B. Sc, M. Sc', 'ANALISIS PRAKIRAN KEBUTUHAN ENERGI LISTRIK TAHUN 2016-2025 DI PEKANBARU MENGGUNAKAN METODE REGRESI LINEAR SEDERHANA', 10, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2558/2017', 'ERVINA ARYANTI, S.P., M.Si', 'STATUS KESUBURAN TANAH ( KIMI DAN BIOLOGI) AREA PASCA TAMBANG EMAS ( STUDI KASUS PERTAMBANGAN EMAS TANPA IZIN(PETI) DI KENEGARIAN KARI, KECAMATAN KUANTAN TENGAH KABUPATEN KUANTAN SINGINGI)', 10, 8, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2560/2017', 'LOVELLY DWINA DAHEN, S.H., M.H.', 'PERLINDUNGAN HUKUM TERHADAP PENCIPTA DAN PEMEGANG HAK CIPTA BERDASARKAN UNDANG-UNDANG NO. 28 TAHUN 2014 TENTANG HAK CIPTA', 10, 5, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2561/2017', 'Hayatun Nufus, S. Pd, M. Pd', 'PROFIL KESALAHAN MAHASISWA DALAM MENYELESAIKAN SOAL PADA MATA KULIAH KALKULUS DIFERENSIAL BERDASARKAN GAYA KOGNITIF DAN HABITS OF MIND', 10, 1, 5, 2017, 7000000.00, '', ''),
('Un.04/L.I/TL.01/2562/2017', 'DEVI DESMIWAR, S.SOS, M.SI', 'EFEKTIVITAS PEMBINAAN MORAL REMAJA OLEH ORGANISASI REMAJA MASJID RAHMAT DI KELURAHAN KAMPUNG TENGAH KECAMATAN SUKAJADI KOTA PEKANBARU', 10, 4, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2564/2017', 'DR. H. Suhayib, M.Ag\r\nDr. H. Johari, M.Ag\r\nDr. Wahidin, M.Ag', 'RELASI TASAWUF - POLITIK (Studi Komunikasi Politik Sufi dan Politisi Pada Era Pesta Demokrasi Di Kabupaten Pelalawan)', 8, 5, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/2775/2017', 'Drs. Azwir Salam, M.Ag\r\nDrs. H. Sutrno, M.Ag\r\nSusiba, M.Pd.I', 'PENGEMBANGAN MODEL PENDIDIKAN KARAKTER BANGSA BERPARADIGMA ISLAMI DI SEKOLAH MENENGAH ATAS MUHAMMADIYAH BANGKINANG (Research and Models Development)', 8, 1, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/3373/2016', 'Musfialdy, S.Sos, M.Si\r\nMuhammad Soim, MA', 'PENGARUH NILAI-NILAI ISLAM TERHADAP KINERJA USAHA MIKRO MELALUI KEWIRAUSAHAAN (STUDI DI KOTA PEKANBARU PROVINSI RIAU)', 9, 6, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3374/2016', 'Sri Wahyuni, M.A., M. Psi., Psikolog\r\nIkhwanisifa, M. Psi., Psikolog', 'KORELASI ANTARA PENERAPAN KEPRIBADIAN RASULULLAH SAW (PROPHETIC PERSONALITY) DENGAN KESEJAHTERAAN PSIKOLOGIS (PSYCHOLOGICAL WELL-BEING) PADA MASA DEWASA”', 9, 3, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3375/2016', 'Dr. Rado Yendra,  M.Sc\r\nM.Nizam Muhajir, S.Si', 'PERBANDINGAN KARAKTERISTIK IKLIM EKSTRIM NEGARA SERUMPUN MELAYU (MALAYSIA DAN INDONESIA) MELALUI MODEL KELEBATAN HUJAN', 9, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3376/2016', 'Ivan Muhammad Agung, S.Psi, M.Si\r\nAhyani Radhiani Fitri, M.A, Psi', 'Analisis Psikometri dan Standarisasi Norma pada Tes Inteligensi Struktur Test (IST) pada Mahasiswa', 9, 3, 4, 2016, 0.00, 'DIPA UIN SUSKA RIAU TAHUN 2016', ''),
('Un.04/L.I/TL.01/3378/2016', 'Lisya Chairani, S.Psi, M.A., Psikolog\r\nHijriyati Cucuani, S.Psi., M.Psi., Psikolog', 'KONSTRUKSI ALAT UKUR PSIKOLOGIS KONSEP MALU (AL-HAYAA) BERDASARKAN KONSEP ISLAM MENGGUNAKAN PENDEKATAN RASCH MODEL', 9, 3, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3379/2016', 'Dra. Suhertina, M.Pd\r\nDarni, SP, MBA\r\nMuhammad Satria Irwanda', 'UPAYA GURU BIMBINGAN KONSELING DALAM MENCEGAH PENYALAHGUNAAN NARKOBA PADA SISWA SEKOLAH MENENGAH ATAS NEGERI (SMAN) PROVINSI RIAU', 9, 1, 5, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3380/2016', 'Ismu Kusumanto, ST,MT\r\nEkie Gilang Permata, ST., M.Sc', 'Faktor-faktor yang mempengaruhi minat siswa sekolah unggulan menjadi mahasiswa UIN Suska Riau', 9, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3382/2016', 'Syafrinaldi, MA\r\nPeri Pirmansyah, SH., MH', 'RASIONAL PEMILIH DALAM PEMILIHAN KEPALA DAERAH SERENTAK SEMESTER KEDUA DI PROVINSI RIAU TAHUN 2017 (Studi Pemilihan Kepala Daerah di Pekanbaru, Kampar dan Indragiri Hilir)', 9, 5, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3383/2016', 'Dr. Jumni Nelli, M.Ag\r\nDra. Meimunah S. Moenada, M. Ag', 'POTRET PELAKSANAAN UNDANG-UNDANG PERKAWINAN DI INDONESIA: Perkawinan di Bawah Umur dan Perkawinan Tak Tercatat di Provinsi Riau', 9, 5, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3384/2016', 'Zuraidah, S.Ag, M.Ag\r\nDra. Hj. Irdamisraini, MA', 'MENGUAK POTENSI ZAKAT DI KABUPATEN INDRAGIRI HILIR.', 9, 5, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3386/2016', 'Dra. Hj. Sakilah, M.Pd\r\nTheresia Lidya Nova, M.Pd', 'Peningkatan Penguasaan Konsep dan Sikap Ilmiah dengan Menggunakan Model Pembelajaran IPA Terintegrasi Keislaman Program studi PGMI Fakultas Tarbiyah dan Keguruan UIN Suska Riau', 16, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3387/2016', 'Drs. Abu Anwar, M.Ag\r\nDrs. Samsi Hasan, Mh,sc', '\"Peningkatan Semangat Belajar Mahasiswa pada Mata Kuliah \'Ulumul Qur\'an dengan Menggunakan Aplikasi Pembelajaran Berbasis Multimedia Di Perguruan tinggi \"', 16, 1, 4, 2016, 0.00, 'DIPA BLU UIN SUSKA RIAU TAHUN 2016', ''),
('Un.04/L.I/TL.01/3389/2016', 'Endah Purnama Sari, S.Pt, M.Si, \r\nNURMAINI DALIMUNTHE, S.KOM, M.KES', 'Penilaian Performa Ternak Kurban Berbasis Mobile', 9, 8, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3390/2016', 'Rika Susanti, ST, M.Eng', 'Analisa Keandalan Jaringan Optik di Lingkungan Kampus UIN Suska Riau', 10, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3391/2016', 'Mustakim, S.T., M. Kom', 'Optimalisasi Centroid K-Means Menggunakan Principal Component Analysis dan Analytic Hierarchy Process untuk Pengelompokan Data Pendaftar Penelitian Diktis', 10, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3392/2016', 'Siti Monalisa, ST, M.Kom', 'Analisis Kepuasan Pelanggan Ritel Online dalam Berbelanja Berdasarkan Karakteristik Situs Ritel Online', 10, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3394/2016', 'Dian Mursyitah, ST, MT', 'KAJIAN KUALITAS DAYA LISTRIK KAMPUS UIN SUSKA PEKANBARU RIAU', 10, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3395/2016', 'Nanda Putri Miefthawati, M.Sc', 'Analisa Implementasi Kebijakan Konversi Minyak Tanah Ke Gas LPG 3 Kg di Kelurahan Maharatu Kecamatan Marpoyan Damai', 10, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3397/2016', 'FATHIYATUL HAMIDAH, \r\nJULIANDRI YANTO, \r\nSHANTY DWI AFITRI', 'Hubungan antara Dukungan Sosial Keluarga dengan Psychological Well Being Narapidana Lembaga Pembinaan Khusus Anak di Pekanbaru', 11, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3398/2016', 'Fatikhatul Mawa', 'EFEKTIFITAS PELAKSANAAN PEMBELAJARAN MENGGUNAKAN KURIKULUM 2013 DI MADRASAH ALIYAH NEGERI 1 KOTA PEKANBARU', 11, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3404/2016', 'NIDYA EKA SAPUTRI', 'Pembentukan Galur Cabai Merah Keriting (Capsicum annuum L.) Melalui Hibridisasi Full DialLel', 11, 8, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3405/2016', 'RANDI ZULHIRWAN', 'PENGUJIAN KANDUNGAN KLOROFIL DAN JUMLAH STOMATA UNTUK EVALUASI TOLERANSI SUHU TINGGI PADA TANAMAN CABAI MERAH (Capsicum annum L.) PADA FASE JUVENIL', 11, 8, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3407/2016', 'Efi Darmayanti', 'KARAKTERISASI MORFOLOGI TANAMAN NANAS (Ananas comosus (L.) Merr) DI KABUPATEN ROKAN HILIR', 11, 8, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3408 /2016', 'NORMA YULIA', 'KUALITAS SPERMA BEKU SAPI DALAM PENGENCER TRIS-KUNING TELUR DENGAN KONSENTRASI SARI BUAH TOMAT YANG BERBEDA', 11, 8, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3409/2016', 'DIAN ADRIANI', 'Identifikasi Tahap Perkembangan Kultur Anter Cabai Merah Keriting (Capsicum annuum L.)', 11, 8, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3410/2016', 'Tasriani,S.Ag. M.Ag\r\nAndi Irfan, SE, M. Sc, Ak, CA', 'Analisa Akad Pembiayaan Take Over Perbankan Syariah di Pekanbaru.', 9, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3411/2016', 'Ikhwani Ratna, SE. M.Si, Ak\r\nHidayati Nasrah, SE, M. Acc', 'Pengaruh Pengelolaan Keuangan Daerah terhadap Penerapan Sistem Akuntabilitas Instansi Pemerintah di Lingkungan Pemerintah Provinsi Riau', 9, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3414/2016', 'Syamsurizal, SE, M.Sc.Ak\r\nYusrialis, SE, M. Si', 'ANALISIS NILAI-NILAI KEWIRAUSAHAAN (ENTREPRENEUR VALUES) PELAKU INDUSTRI KECIL DI KEC. SIAK DAN TUALANG KABUPATEN SIAK', 9, 5, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3415/2016', 'ENDRIANTO USTHA, ST, MM', '“FAKTOR-FAKTOR YANG MEMPENGARUHI NIAT KEWIRAUSAHAAN (ENTREPRENEURIAL INTENTION) MAHASISWA DI PEKANBARU” (STUDI KASUS PADA EMPAT UNIVERSITAS DI PEKANBARU)', 10, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3416/2016', 'Devi Arisanti, M.Ag', 'IMPLEMENTASI PENDIDIKAN AKHLAK MULIA DI SMA SETIA DHARMA PEKANBARU', 10, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3417/2016', 'Artis, S.Ag, M.I.Kom', 'IMPLEMENTASI MARKETING MIX TERHADAP PENJUALAN KERUPUK SANJAI MENTUO DI KODYA BUKITTINGGI SUMATERA BARAT', 10, 6, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3418/2016', 'Sehani, SE, MM', 'Analisis Potensi dan Perilaku Masyarakat Non Muslim Terhadap Bank Syariah di Kota Pekanbaru', 10, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3419/2016', 'Irdha Mirdhayati, S.Pi, M.Si\r\nWieda Nurwidada Haritsah Zain, S. Pt, M. Si', 'APLIKASI HIDROLISAT PROTEIN DAGING KAMBING KACANG DENGAN EFEK ANTIHIPERTENSI PADA PRODUK SUP KRIM INSTAN', 9, 8, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3421/2016', 'Anwar Efendi Harahap, S.Pt, M.Si\r\nIr. Eniza Saleh, M.S', 'ISOLASI DAN IDENTIFIKASI BAKTERI ASAM LAKTAT CAIRAN RUMEN SAPI, KERBAU DAN DOMBA SEBAGAI SUMBER PROBIOTIK PAKAN', 9, 8, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3422/2016', 'Dr. Triani Adelina, S.Pt, MP\r\nOksana., S.P, MP', 'KUALITAS NUTRISI KULIT UBI KAYU (MANIHOT UTILISSIMA) YANG DIFERMENTASI DENGAN RAGI TAPE (SACCAROMISES CERESEVISIAE) SEBAGAI PAKAN TERNAK', 9, 8, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3423.a/2016', 'Yusbarina, M.Si\r\nZona Octarya, M. Si', 'Optimasi dan Desain Alat Sel Volta Tanah Gambut sebagai Sumber Energi Listrik Alternatif.', 9, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3423/2016', 'Aulia Rani Annisava, SP, M.Sc\r\nZumarni, S.Pt., M.P', 'Optimasi Pertumbuhan dan Kandungan Kimia Pegagan Organik yang ditanam Menggunakan Naungan', 9, 8, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3439/2016', 'HADI MARDIANSYAH', 'PERGESERAN SISTEM PEMERINTAHAN SEBELUM DAN SETELAH AMANDEMEN UUD 1945', 11, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3443/2016', 'M.YUSUF', 'POLA PEMBINAAN MORAL ANAK ASUH (STUDI KASUS PADA PANTI ASUHAN AL-IKHLAS DARUSSALAM, KEC.BAGAN SINEMBAH, KAB.ROKAN HILIR)', 11, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3444/2016', 'Sri Basriati, S.Si, M.Sc', 'Integer Linear Programming dengan Pendekatan Metode Cutting Plane dan Branch and Bound untuk Optimasi Produksi Tahu', 10, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3445/2016', 'Vera Devani, ST, M.Sc', 'Aplikasi Goal Programming untuk Menentukan Variasi Menu Makananan Pendirita Diabetes Mellitus', 10, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3447/2016', 'Restu Misrianti, S.Pt. M.Si', 'KARAKTERISTIK KUALITATIF DAN KUANTITATIF SAPI DAN KERBAU YANG DIGUNAKAN SEBAGAI HEWAN QURBAN DI KABUPATEN KUANTAN SINGINGI', 10, 8, 4, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/3450/2016', 'Tengku Nurainun, ST, MT\r\nWresni Anggraini, ST, MM', 'Perancangan Sistem Informasi Usaha Ekonomi Daerah Kabupaten Bengkalis Riau', 9, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3451/2016', 'Suhandri, S. Si, M.Pd\r\nHayatun Nufus, M.Pd\r\nErdawati Nurdin, M.Pd', 'Deskripsi kemampuan koneksi matematis mahasiswa dalam menyelesaikan masalah matematika berdasarkan level kemampuan akademik', 9, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3452/2016', 'Dr. Alwis Nazir, M. Kom', 'Integrasi Informasi Produk halal Menggunakan teknologi Web Service Berbasis Service Oriented Architecture (SOA)', 10, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3453/2016', 'CORRY CORAZON MARZUKI, M.Si', 'NILAI TOTAL KETAKTERATURAN TITIK PADA GRAF HASIL KALI COMB Pm DAN Pn', 10, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3454/2016', 'Iwan Iskandar, ST', 'Analisa Quality of Service (QoS) Jaringan Wireless LAN menggunakan metode Load Balancing dengan Algoritma Least Connection (Studi Kasus: Jaringan WiFi Kampus UIN SUSKA Riau)', 10, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3455/2016', 'Misra Hartati, ST, MT', 'ANALISIS RISIKO RANTAI PASOK PABRIK KELAPA SAWIT (PKS) DENGAN METODE SCOR', 10, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3456/2016', 'Sutoyo, ST, MT', 'PEMBUATAN PROTOTYPE DATA PENGAMATAN STASIUN ALE RIAU', 10, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3459/2016', 'Pangadilan Rambe, S.Pd.I, MA\r\nMusfika Hendri, S.Pd.I, MA', 'PROFESIONALISME PAEDAGOGIK GURU BAHASA ARAB DALAM MENINGKATKAN PEMBELAJARAN BERBASIS SAINTIFIC DI PONDOK PESANTREN BENGKALIS', 9, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3460/2016', 'Idria Maita, S.Kom, M.Sc\r\nZarnelly, S. Kom, M. Sc', 'APLIKASI PEMBELAJARAN INTERAKTIF BAHASA ARAB BERBASIS ANDROID (STUDI KASUS : PUSAT PENGEMBANGAN BAHASA UIN SUSKA RIAU)', 9, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3461/2016', 'Dr. Agustiar, M.Ag\r\nAfriza, S.Ag, M.Pd', 'Tingkat Kemampuan Bahasa Arab Muballigh/Muballighoh Kota Pekanbaru Dalam Berdakwah', 9, 2, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3463/2016', 'Zulfahmi, S.Hut. M.Si\r\nIr. Mokhamad Irfan, M. Sc', 'STRUKTUR GENETIK PASAK BUMI DI HUTAN LARANGAN ADAT RUMBIO BERDASARKAN PENANDA RAPD', 9, 8, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3465/2016', 'Dewi Febrina, S.Pt., MP\r\nDrh. Jully Handoko. M.KL', 'Ekstraksi dan Identifikasi Senyawa Antimikroba yang Berasal dari Pelepah Kelapa Sawit (Elaeis Guineensis Jacq) sebagai Antibiotik Alami', 9, 8, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3466/2016', 'Dr. Arsyadi Ali, S.Pt, M.AgrSc\r\nBambang Kuntoro, S.Pt., M.Si', 'TEKNOLOGI SILASE DAN PENEPUNGAN UNTUK MENINGKATKAN KANDUNGAN GIZI DAN KECERNAAN AMPAS TEBU YANG DITAMBAH BIOMASA INDIGOFERA SEBAGAI PAKAN TERNAK', 9, 8, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3468/2016', 'Hidayati, S.Pt, MP(KETUA) \r\nTAHRIR AULAWI, S.PT.,M.P(ANGGOTA)', 'Uji Kualitatif dan Kuantitatif Isolasi DNA Berasal Dari Darah, Feces dan Urine Pada Ternak Sapi, Kerbau dan KAmbing', 9, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3479/2016', 'Dr. Ellya Roza, M. Hum\r\nYasnel, M. Ag\r\nSindi Ayudia Pama', 'POLA DINAMIKA PENETRASI, AKULTURASI DAN ASSIMILASI ISLAM MELALUI JALUR UTARA RIAU TERHADAP SOSIAL BUDAYA MASYARAKAT MELAYU ROKAN HULU', 9, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3480/2016', 'Drs. Syahril Romli, M.Ag\r\nRosmita, M. Ag\r\nNurwidi Lestari', 'TRADISI RITUAL MASYARAKAT ISLAM JAWA DALAM PERAYAAN TAHUN BARU ISLAM DI LINGKUNGAN KERATON JOGYAKARTA (ANALISIS ASPEK KEYAKINAN AQIDAH DAN TATA CARA IBADAH DALAM PERSEPEKTIF SUNNAH)', 9, 6, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3481/2016', 'Dr. Alex Wenda, ST, M.Eng\r\nAhmad Faizal, ST., MT', 'PENGEMBANGAN APLIKASI WEB CERDAS PADA MOBILE PHONE UNTUK MENGIDENTIFIKASI GANGGUAN KUALITAS DAYA LISTRIK KAMPUS UIN SUSKA RIAU MENGGUNAKAN S-TRANSFORM DAN DENDOGRAM SUPPORT VECTOR MACHINE', 9, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3483/2016', 'Fitri Amillia, ST, MT (KETUA) \r\nMULYONO, ST.MT(ANGGOTA)', 'ANALISIS KINERJA TRANSMISI CITRA MENGGUNAKAN TEKNIK MODULASI QAM PADA SISTEM ORTHOGONAL FREQUENCY DIVISION MULTIPLEXING', 9, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3485/2016', 'Mohammad Soleh, S.Si, M.Sc\r\nWartono, M.Sc', 'Model SIR Penyebaran Demam Berdarah di Pekanbaru', 9, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3486/2016', 'Dr. Rika, S.Si, M.Sc\r\nDr. Dedi Irawan, S.Si, M.Sc\r\nDr. Erman Taer, M.Si', 'BRIKET ARANG TERINTEGRASI PEREKAT ORGANIK DARI LIMBAH BIOMASSA SEBAGAI SUMBER ENERGI ALTERNATIF', 9, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3487/2016', 'Dra. Nurasmawi, M.Pd\r\nMuhammad Ihsan Hamdy, M.T', 'PERANAN KOPERASI MITRA SEHATI DALAM MENINGKATKAN EKONOMI RAKYAT PADA RUKUN WARGA 14 KELURAHAN SAIL KECAMATAN TENAYAN RAYA KOTA PEKANBARU', 9, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3488/2016', 'Dr. Wahidin, M.Ag\r\nHendri Sayuti, M. Ag', 'POTRET KERUKUNAN MASYARAKAT ETNIS MELAYU – CHINA DALAM BINGKAI NEGERI SERIBU KUBAH KABUPATEN ROKAN HILIR', 9, 5, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3489/2016', 'Zuhairansyah Arifin, S.Ag, M.Ag', 'REVITALISASI PERAN DAN KONTRIBUSI DAYAH DALAM MELESTARIKAN NILAI-NILAI TRADISI KEILMUAN ISLAM DI PROVINSI ACEH DARUSSALAM', 9, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3491/2016', 'Dr. H. Muh. Said. HM, M.Ag, MM\r\nDra. Hj. Syafi\'ah, M.Ag', 'SISTEM PELAYANAN PEMULIHAN KETERGANTUNGAN NAPZA PADA RUMAH SAKIT JIWA TAMPAN PROVINSI RIAU ( Suatu Tinjauan Menurut Perspektif Islam )', 9, 5, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3492/2016', 'Febri Handayani, S.HI, MH\r\nLysa Angrayni, SH., MH\r\nHelmawati, ST', 'Problematika Hubungan Ketenagakerjaan di Kota Batam Menurut Undang-Undang Nomor 13 Tahun 2003 Tentang Ketenagakerjaan', 9, 5, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3494/2016', 'Lazulva, S, Si, M.Si\r\nLisa Utami, S. Pd., M. Si', 'Biosorpsi Logam Pb(II) dan Cd(II) dari Larutan Mengunakan Kulit Bbuah Pinang', 9, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3500/2016', 'Henni Indrayani, SE, MM\r\nHesty Wulandari, SE., M. Sc, Ak', 'PENGARUH TEKANAN EKSTERNAL, KETIDAKPASTIAN LINGKUNGAN DAN KOMITMEN TERHADAP TRANSPARANSI PELAPORAN KEUANGAN DENGAN RELIGIUSITAS SEBAGAI VARIABEL MODERATING PADA PTKI DI KOTA PEKANBARU', 9, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3501/2016', 'Syaifullah, SE, M.Sc', 'POLA BAURAN MAHASISWA DALAM PEMANFAATAN RUANG PUBLIK DENGAN METODA PEMETAAN SPASIAL (STUDI KASUS KAMPUS PANAM UIN SUSKA RIAU)', 9, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3503/2016', 'Susnaningsih Mu`at, SE, MM\r\nNelsi Arisandy, SE, M.Ak, Ak', 'Analisis Personal Financial Literacy dan Financial Behavior Mahasiswa Strata 1 Fakultas Ekonomi dan Ilmu Sosial UIN Sultan Syarif Kasim Riau', 9, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3505/2016', 'Drs. A. GHOZALI SYAFEI, M.Si', 'PEMAHAMAN PESERTA MUSABAQAH KHOTTIL QUR’AN TERHADAP MAKNA WARNA DALAM SENI KALIGRAFI DEKORASI (KAJIAN DI PROVINSI RIAU)', 10, 6, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3506/2016', 'Rahman, M.Ag', 'ANALISIS KEDUDUKAN HADITS LARANGAN MENAFSIRKAN AL-QUR’AN DENGAN AL-RA\'YU', 10, 6, 4, 2016, 0.00, 'DIPA UIN SUSKA RIAU TAHUN 2016', ''),
('Un.04/L.I/TL.01/3507/2016', 'Rafdeadi, S.Sos.I, MA', 'REPRESENTASI NILAI- NILAI ISLAM DALAM FILM AYAT – AYAT CINTA', 10, 6, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3508/2016', 'Hariza Hasyim, SE, M.Si', 'Analisis Pertumbuhan Ekonomi dan Ketimpangan Pendapatan antar Daerah di Propinsi Riau', 10, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3511/2016', 'Dr. Khairunnas Jamal, M.Ag\r\nH. Syafril Siregar, MA', 'PARTISIPASI PONDOK PESANTREN DALAM MENCEGAH RADIKALISME DI PROPINSI RIAU', 9, 2, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3513/2016', 'Zulamri, S.Ag, MA\r\nPipir Romadi, S.Kom.I', 'Layanan Konsultasi dalam membantu menangani kasus anak korban kekerasan dalam rumah tangga di Pusat Pelayanan Terpadu Pemberdayaan Perempuan dan anak (P2TP2A) Provinsi Riau', 15, 6, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3514/2016', 'Penti Suryani, S.P, M.Si\r\nDrs. Ahmad Darmawi, M.Ag\r\nDewi Handayani', 'KAPASITAS PEREMPUAN TANI DALAM MEWUJUDKAN KETAHANAN PANGAN RUMAH TANGGA DALAM MENGHADAPI ERA GLOBALISASI DI KOTA PEKANBARU', 15, 8, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/35152016', 'Reni Susanti, S.Psi, M.Psi, Psikolog\r\nRicca Angraeni Munthe, S.Psi, M.A', 'Relasi Interpersonal dengan Saudara Kandung: Studi Mengenai Budaya Saling Berkunjung pada Perempuan Melayu yang Telah Menikah dengan Pendekatan Psikologi Indijinus', 15, 3, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3517/2016', 'Drs. Mukhlis, M.Si.\r\nIndah Puji Ratnani, S.Psi., M.A\r\nAfni Benazir, S.Psi.', 'PREFERENSI PEMILIHAN PASANGAN HIDUP ANTARA PRIA DAN WANITA MUSLIM PADA DEWASA AWAL', 15, 3, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3518/2016', 'Ari Pani Desvina, S.Si, M.Sc\r\nIrma Suryani, M.Sc', 'PEMODELAN PENCEMARAN UDARA DAN HOTSPOT (TITIK API) MENGGUNAKAN MODEL VECTOR AUTOREGRESSIVE (VAR)', 9, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3519/2016', 'Novi Yanti, S.T, M.Kom\r\nNazruddin Syafaat Harahap, S.T, M.T', 'Analisis Jaringan Syaraf Tiruan dengan Struktur Backpropagation untuk Deteksi Gangguan Penyakit Tropis', 9, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3523/2016', 'Ismail Mulia Hasibuan, S.Pd, M.Si\r\nNoviarni, M. Pd', 'PENGEMBANGAN MEDIA PEMBELAJARAN MATEMATIKA BERMAKNA DARI ALAM SEKITAR UNTUK MENINGKATKAN KEMAMPUAN MATEMATIKA SISWA MADRASAH TSANAWIYAH RIAU', 9, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3524/2016', 'Drs. M. Hatta, M.Ag\r\nMiterianifa, M.Pd', 'Pengembangan Perangkat Pembelajaran Kimia Terintegrasi Ilmu Keislaman', 9, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3527/2016', 'Nuardi, S.Pd.I, M.Ed', 'PEMBELAJARAN BAHASA INGGRIS DENGAN MEDIA POWER POINT DI MADRASAH TSANAWIYAH YPUI RUMBIO JAYA', 10, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3528/2016', 'DEWI DINIATY, ST., M.Ec.dev', 'ANALISIS KEPUASAN RUMAH TANGGA PENERIMA MANFAAT RASKIN DI KELURAHAN TANGKERANG SELATAN KECAMATAN BUKITRAYA KOTA PEKANBARU MENGGUNAKAN PENDEKATAN IMPORTANCE PERFORMANCE ANALYSIS', 10, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3529/2016', 'EMILIA SUSANTI, S.Pd, M.Pd', 'Pelaksanaan Corporate Sosial Responsibility PT. Riau Pulp And Paper Terhadap Kemajuan dan Kemunduran Sekolah Bernas Pangkalan Kerinci Kabupaten Pelalawan', 10, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3532/2016', 'ERMANSYAH, SE, MM', 'PENGARUH PENUTUPAN LOKALISASI TELEJU TERHADAP MARAKNYA PANTI PIJAT DAN IMPLIKASINYA TERHADAP KERESAHAN MASYARAKAT DI KOTA PEKANBARU', 10, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3533/2016', 'Rozalinda, SE, MM', 'Analisis Kointegrasi Dan Kausalitas Antara Pengeluaran Pemerintah dan Pertumbuhan Ekonomi Di Provinsi Riau Kurun Waktu 1983 – 2014', 10, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3534/2016', 'Andri Novius, SE. M.Si, Ak', 'ANALISIS INTENSITAS MORAL MAHASISWA AKUNTANSI UIN SULTAN SYARIF KASIM RIAU DALAM PROSES PEMBUATAN KEPUTUSAN YANG ETIS UNTUK MENCEGAH KECURANGAN AKUNTANSI', 10, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3535/2016', 'Khairil Henry, SE, M.Si.Ak', 'KONTRIBUSI PAJAK DAERAH DAN RETRIBUSI DAERAH TERHADAP PENDAPATAN ASLI DAERAH (PAD) DI KABUPATEN KAMPAR', 10, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3536/2016', 'ANNA NURLITA, SE, M.Si', 'Pengaruh Perubahan Tick Price dan Lot Size Terhadap Likuiditas dan Kapitalisasi Pasar (Studi Empiris Pada Bursa Efek Indonesia)', 10, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3537/2016', 'Astuti Meflinda, SE, MM\r\nDra. Asmiwati, M.Ag', 'Pengaruh Agama dan Budaya terhadap Keinginan dan Perilaku Menjadi Entrepreneur Dikalangan Mahasiswa PTKI di Provinsi Riau', 9, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3538/2016', 'Dr. Elfiandri,M.Si\r\nFebri Rahmi, SE. M.Sc. Ak', 'MODEL KOMUNIKASI ORGANISASI, FUNGSI SOSIAL DAN EKONOMI PADA PONDOK PESANTREN DI KABUPATEN KAMPAR PROVINSI RIAU', 9, 6, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3540/2016', 'Nurjanis, S.Ag, MA\r\nUsman, S.Sos, M.I.Kom\r\nAbas Wismoyo Hernawan, S.Kom.I', 'EFEK SIKAP DAN REAKSI MAD’U DALAM KOMUNIKASI DAKWAH DA’I (STUDY TERHADAP JAMA’AH IKMI KOTA PEKANBARU)', 9, 6, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3541/2016', 'Sahwitri Triandani, SE, M.Si', 'ANALISIS HUBUNGAN LOCUS OF CONTROL TERHADAP KEMATANGAN KARIR PADA PESERTA PELATIHAN UNIT PELAKSANA TEKNIS LATIHAN KERJA (BLK) DISNAKERTRANSDUK PROVINSI RIAU DI PEKANBARU', 10, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3542/2016', 'VIRNA MUSELIZA, SE. MSI', 'ANALISIS PELAKSANAAN PENATAUSAHAAN ASET TETAP PADA BPKAD KOTA PEKANBARU', 10, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3543/2016', 'Ainun Mardiah, SE, MM', 'Analisis Perilaku Konsumtif Masyarakat Muslim Menjelang Idul Fitri di Kota Pekanbaru', 10, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3544/2016', 'Dicki Hartanto, MM', 'PENGEMBANGAN SUMBERDAYA MANUSIA DOSEN DAN ANALISIS FAKTOR-FAKTOR YANG MEMPENGARUHI DI FAKULTAS TARBIYAH DAN KEGURUAN UIN SULTAN SYARIF KASIM RIAU', 10, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3545/2016', 'Putriana. SE, MM', 'Analisis Customer Relationship Marketing pada Perusahaan Asuransi (Studi Perbandingan Antara Asuransi Syariah dan Non Syariah di Kota Pekanbaru', 10, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3548/2016', 'Yuliana Intan Lestari, S.Psi. M.A.', 'FEAR OF SUCCESS PADA PEREMPUAN BEKERJA DI PEKANBARU DITINJAU DARI KONFLIK PERAN GANDA DAN HARDINESS', 10, 3, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3549/2016', 'Bambang Hermanto, MA', 'TINGKAT KEPUASAN NASABAH BANK SYARIAH MANDIRI PEKANBARU TERHADAP PRODUK PEMBIAYAAN MURABAHAH', 10, 5, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3551/2016', 'Nilwan Andiraja,S.Pd.M.Sc. ,', 'EKSISTENSI DAN KESTABILAN KENDALI OPTIMAL NASH PERMAINAN DINAMIS NON-KOOPERATIF DENGAN FAKTOR DISKON WAKTU TAK BERHINGGA', 10, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3553/2016', 'Tarpin, M.Ag\r\nMuhammad Yasir, S.Th.I.,MA', 'STUDI KOMPARATIF MENGENAI PERSPEKTIF ISLAM DAN KRISTEN TERHADAP EMANSIPASI WANITA', 15, 2, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3554/2016', 'Fitra Herlinda, M.Ag\r\nNurhayati Zein, S.Ag, M.Sy', 'PERAN LAKI-LAKI DAN PEREMPUAN DALAM KARIR MENURUT ADAT DALAM PERSPEKTIF ISLAM (Pergeseran Fungsi Laki-laki dan Perempuan di Kenegerian Kuok Kecamatan Kuok)', 15, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3556/2016', 'Irien Violinda Anggraini, SE, M.Si\r\nDiana Eravia, SE., M.Si', 'Pengaruh Penilaian Manfaat Sistem Informasi Dan Motivasi Growth Terhadap Kepuasan Kerja Anggota Legislatif Perempuan Dewan Perwakilan Rakyat Daerah Provinsi Riau 2014-2019', 15, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3557/2016', 'ANSHARI GUSWANDI', 'Pengaruh Visual Rnasum Pelet Burung Puyuh dengan Pemanfaatan Tepung Biji Karet (Havea Brasiliensis) Pada Lama Penyimpanan yang Berbeda', 11, 8, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3558/2016', 'SUKMA JUWANDA', 'ANALISIS BAKTERI PADA DAGING AYAM BROILER YANG DIBERI AIR PERASAN JERUK NIPIS (Citrus Aurantifolia) DAN DISIMPAN PADA SUHU DINGIN', 11, 8, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3559/2016', 'YULIA NINGSIH', 'PENGARUH TEMPERATUR DALAM PEMBUATAN KARBON AKTIF KULIT BUAH AREN (Arenga Pinnata Merr) DENGAN AKTIFATOR HNO3 SEBAGAI ADSORBEN PEMURNIAN MINYAK JELANTAH', 11, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3563/2016', 'PRASLITA DISHADEWI', 'Sintesis Dan Karakterisasi Karbon Aktif Dari Limbah Mahkota Nenas (Anenas comosus) Dengan Aktivator KOH', 11, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3564/2016', 'Keni Karunia', 'EVALUASI MANAJEMEN KEAMANAN TEKNOLOGI INFORMASI PADA PT.ASTRA INTERNATIONAL, TBK-DAIHATSU CABANG PEKANBARU MENGGUNAKAN THE RISK IT FRAMEWORK', 11, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3565/2016', 'Rosna Andelina BP', 'ANALISIS PEMANFAATAN WEB ORDER MENGGUNAKAN TECHNOLOGY ACCEPTANCE MANAGEMENT (TAM) (STUDI KASUS: PT METRO DRUGS INDO)', 11, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3566/2016', 'FIDEL CASTRO', 'Analisa Pengaruh Massa Sacchoromyces Cerevisiae dan Waktu Fermentasi Terhadap Kadar Etanol Dari Tetes Tebu', 11, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3568/2016', 'Dea Sherly', 'EVALUASI PENERAPAN SISTEM INFORMASI MANAJEMEN KEPEGAWAIAN (SIMPEG) MENGGUNAKAN METODE HOT-FIT MODEL (STUDI KASUS: DINAS PERINDUSTRIAN DAN PERDAGANGAN KOTA PEKANBARU)', 11, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3570/2016', 'Darto, S.Pd.I, M.Pd\r\nMelly Andriani, M.Pd', 'PENGEMBANGAN MODEL PEMBELAJARAN MATEMATIKA PROBLEM SOLVING TERINTEGRASI ILMU KEISLAMAN', 9, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3571/2016', 'Suci Yuniati, S.Pd, M.Pd\r\nArnida Sari, S. Pd, M. Mat', 'PENGEMBANGAN MODUL MATEMATIKA TERINTEGRASI NILAI-NILAI KEISLAMAN MELALUI PENDEKATAN REALISTIC MATHEMATICS EDUCATION (RME) DI PROPINSI RIAU', 9, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3572/2016', 'Jufrizel, ST, MT\r\nWeni Puji Hastuti, S. Sos., M.KP', 'MANFAAT PEMBUATAN PERANCANGAN KRAN WUDHU OTOMATIS BAGI KEMASLAHATAN UMAT ISLAM (STUDI KASUS DI MUSHALLAH AR-RAHMAN PANAM)', 9, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3573/2016', 'Arif Marsal, Lc, MA', 'PENGARUH SMARTPHONE TERHADAP POLA INTERAKSI SOSIAL PADA ANAK BALITA DILINGKUNGAN KELUARGA PEGAWAI UIN SULTAN SYARIF KASIM RIAU', 10, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3574/2016', 'Nurrahmi Hayani, SE, MBA', 'HUBUNGAN TINGKAT PEMAHAMAN AGAMA DENGAN PERILAKU KONSUMTIF (STUDI KASUS IBU RUMAHTANGGA DI KELURAHAN SIMPANG BARU KEC.TAMPAN PEKANBARU)', 10, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3575/2016', 'Ade Jamaruddin, M.Ag', 'METODOLOGI INTERPRETASI DAN QIRA’AT AL-QUR’AN DALAM MIRACLE THE REFERENCE (Study Analisis Metode Praktis Belajar dan Tafsir al-Qur’an dengan Touch Screen)', 10, 2, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3577/2016', 'Lusiawati, SE, MBA', 'SOSIAL EKONOMI DAN FAKTOR DEMOGRAFI PEDAGANG PEREMPUAN DI PASAR TRADISIONAL PEKANBARU DAN KONSTRIBUSINYA TERHADAP PENDAPATAN KELUARGA', 10, 4, 4, 2016, 0.00, '-', '');
INSERT INTO `penelitian` (`no_sk`, `penulis`, `judul`, `id_cluster`, `id_fakultas`, `id_rak`, `tahun`, `pendanaan`, `sumber_dana`, `file`) VALUES
('Un.04/L.I/TL.01/3578/2016', 'Dewi Ananda Mucra, S.Pt, M.P\r\nDrh. Jully Handoko, M.KL', 'Perbandingan Tingkat Pengetahuan dan Keterampilan Mahasiswa Fakultas Pertanian Peternakan Melalui Program Praktek Kerja Lapang Pada Instansi Pemerintah dan Swasta', 16, 8, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3579/2016', 'Nofirza, ST, M.Sc\r\nHarpito, ST., MT', 'Penerapan Metoda Pembelajaran Problem Base Learning Pada Bidang Ilmu Keteknikan (Engineering)', 16, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3581/2016', 'Dr. Wilaela, M.Ag\r\nAbd. Ghofur, M. Ag\r\nDr. Hasbullah, M. Si', 'PROSOPOGRAFI PEREMPUAN PENDIDIK DI RIAU', 9, 2, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3583/2016', 'Mirawati, M.Ag\r\nDra. Hj. Ilmiyati, M.Ag', 'Pengaruh Gaya Kepemimpinan Kepala Sekolah dan Kompetensi Guru Terhadap Kinerja Guru di MtsN Bukit Batu dan Mts Nurul Hasanah Tenggayun Kecamatan Bukit Batu Kabupaten Bengkalis', 9, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3584/2016', 'Ratna Dewi, S.Sos. M.Si\r\nMeri Sandora, SE, MM', 'Analisis Strategi UIN Suska Riau Dalam Mempersiapkan Sarjana yang Siap Bersaing Menghadapi Masyarakat Ekonomi Asean (MEA)', 9, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3590/2016', 'Ismardi, M.Ag\r\nArisman, M.Sy', 'Peran dan Fungsi Imam Masjid Mewujudkan Masyarakat Agamis dalam Kehidupan Multikultural Perspektif Fikih di Provinsi Riau', 9, 5, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3592/2016', 'Drs. H. Mohd. Yunus, M.Ag\r\nKamaruddin, M. Ag\r\nDra. Hj. Yusliati, MA\r\nZulfahmi, M. Ag', 'Lembaga Keuangan Syari\'ah di Negara Minoritas Muslim (Studi di Narathiwat Thailand Selatan )', 8, 5, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3596/2016', 'Dr. Masud Zein, M.Pd.\r\nTrian Zulhadi, SE, M.Ec\r\nDrs. Hasbi Abduh, M. Ag\r\nMuhammad Faisal, M. Ag', 'EVALUASI DAMPAK KEMISKINAN TERHADAP EKSPLOITASI ANAK DI PULAU BATAM', 8, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3598/2016', 'Dr. Hj. Helmiati, M.Ag\r\nDra. Hj. Syafrida, M. Ag\r\nDepi Fitraini, S.Pd, M. Mat\r\nSusiba, M. Pd.I', 'PERGULATAN MINORITAS MUSLIM THAILAND Menelisik Peran Akademisi, Profesional & LSM dalam Upaya Mencari Solusi Konflik Berkepanjangan', 8, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3599/2016', 'Dr. Tohirin, M.Pd\r\nDr. Hj. Risnawati, M. Pd\r\nDr. Zubaidah Amir, M. Pd\r\nDicki Hartanto, MM\r\nSohiron, M. Pd. I\r\nRamon Muhandaz, M. Pd', 'Upaya Guru Matematika dan Bimbingan Konseling dalam Membina Karakter Peserta Didik Sekolah Menengah Pertama dan Sekolah Menengah Atas di Indonesia', 8, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3602/2016', 'Haris Riadi, S. Ag., M. Ag\r\nSukiyat, S. Ag., M .Ag', 'TRADISI BALIMAU KASAI DALAM MASYARAKAT KAMPAR-RIAU PERSPEKTIF HUKUM ISLAM', 8, 2, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3603/2016', 'Drs. Ali Akbar, MIS\r\nDr. H. Hidayatullah Ismail, Lc., MA\r\nMuslim, S. Ag, SH. M. Hum', 'STUDI TENTANG METODE PEMBELAJARAN KITAB KUNING PADA PONDOK PESANTREN DAARUN NAHDHAH KABUPATEN KAMPAR', 8, 2, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3605/2016', 'Dr. Mahyarni, SE, MM\r\nHarkaneri, SE, MSA, Ak\r\nIdentiti, SE, M. Ak', 'PERKEMBANGAN MUSLIM PRENEURSHIP MASYARAKAT PROVINSI RIAU DAN SUMATERA BARAT DALAM ERA MASYARAKAT EKONOMI ASEAN (MEA)', 8, 4, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3606/2016', 'Liliana, ST, M,Eng\r\nSusi Afriani, S.T., M.T\r\nAnwardi, S.T., M.T', 'Pengoptimalan Rancangan Sistem Proteksi Eksternal pada Gedung Pusat Komputer UIN Suska Riau', 8, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3607/2016', 'Fitri Wulandari, S.Si, M.Kom\r\nFebi Nursalisah, M. Kom\r\nAulia Ullah, ST, M. Eng', 'PENGEMBANGAN MODEL PENANGGULANGAN KEMISKINAN BERBASIS WILAYAH MENGGUNAKAN SIMILIRITAS SIMPLE MATCHING COEFFICIENT DAN FUZZY CLUSTERING', 8, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3608/2016', 'Mawardi, S.Ag, MSi\r\nDarmawan Tia Indrajaya, M. Ag\r\nAde Fariz Fakhrullah, M. Ag', 'transaksi istishna\' dan implementasinya pada usaha tenunan kain songket melayu riau riau (studi kasus pada umkm tenunan songket propinsi riau', 8, 5, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3609/2016', 'Miftahuddin, M.Ag\r\nDrs. H. Suhaimi, M. Ag\r\nM. Fahli Zatrahadi', 'PEMANFAATAN TERAPI SPIRITUAL EMOTIONAL FREEDOM TECHNIQUE UNTUK MENGATASI GANGGUAN JIWA DI PESANTREN AL-FATEH NONGSA BATAM KEPULAUAN RIAU', 8, 6, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3610/2016', 'Dr. Sri Murhayati, M.Ag\r\nMahdar Ernita, S. Pd., M. Ed.\r\nLies Andriani, S. Pd., M. Mat.\r\nAde Irma, M. Pd.', 'Optimalisasi Pendidikan Islam Terpadu (Penerapan Pembelajaran Berbasis High Tech, High Touch dan High Theos di Sekolah Menegah Atas Islam Terpadu Kota Pekanbaru)', 8, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3611/2016', 'Dr. Salmaini Yeli, MA\r\nDr. Hartono, M. Pd\r\nDr. Zuriatul Khairi, M. Ag', 'EFEKTIFITAS PENGUATAN PERSEPSI DAN IMAJI TERHADAP KEMAMPUAN MEMBACA ANAK TUNA GRAHITA (Studi terhadap Siswa Sekolah Luar Biasa (SLB) di Pekanbaru)', 8, 2, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3613/2016', 'Nelly Yusra, M.Ag\r\nDrs. Muhammad Fitriyadi, M. Ag\r\nNurhayati, S. Ag. M.Hum\r\nNur Aisyah Zulkifli, M. Pd', 'Pengembangan dan Penguatan Keterampilan Generik Calon Guru untuk Meningkatkan Daya Saing Berbasis Multiple Intellegences Theory', 8, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3614/2016', 'Dra. Riswani, M.Ed\r\nRita Susanti, S. Psi. MA\r\nNurhasanah Bakhtiar, M. Ag', '“KEJENUHAN KERJA GURU BIMBINGAN DAN KONSELING DI SMUN PROVINSI RIAU”', 8, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3616/2016', 'Mohammad Abdi Almaktsur, M.A\r\nDr. Khairil Anwar, M.A\r\nDr. Azni, M.A\r\nMardiana, M.A', 'PERAN UNIVERSITAS ISLAM NEGERI SULTAN SYARIF KASIM RIAU DALAM PEMBANGUNAN MASYARAKAT DI PROVINSI RIAU', 13, 5, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3618/2018', 'Sudianto,S Sos. M.I.Kom\r\nDra. Atjih Sukaesih, M.Si\r\nAfrinaldy Rustam, S.IP.,M.Si', 'PERAN WAKIL RAKYAT TERHADAP PROSES LEGISLASI PERATURAN DAERAH (KAJIAN TENTANG EFISIENSI, EFEKTIFITAS, STABILITAS, KESETARAAN DAN AKUNTABILITAS STUDI BANDING DPRD PROVINSI RIAU DAN PROVINSI KEPULAUAN RIAU)', 2, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/3620/2016', 'Edi Erwan, S.Pt, MP, Ph.D\r\ndrh. Rahmi, S. Pt, M. Sc.\r\nEvi Irawati, S. Pt, M.P.\r\nDeni Fitra, S. Pt, M.P.', 'Pemanfaatan kulit buah semangka untuk mengatasi masalah heat stress pada ayam broiler', 8, 8, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3627/2016', 'Prof. Raihani, S.Ag, M.Ed, Ph.D\r\nDiana Elfida, S. Psi., M. Si\r\nNunu Mahnun, M. Pd', 'RESPON PSIKOLOGIS SISWA TERHADAP KERAGAMAN DI KEPULAUAN RIAU', 12, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3628/2016', 'Prof. Dr. H. M. Nazir\r\nImam Hanafi, MA', 'Implementasi Riset Berbasis Intergrasi Studi di UIN Malang dan UIN Suska Riau', 12, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3629/2016', 'Prof. Dr. H. Salfen Hasri, M.Pd\r\nDedu Wahyudi, M. Pd', 'PENINGKATAN LAYANAN PENDIDIKAN DASAR ANAK-ANAK INDONESIA DI KOTA KINABALU SABAH MALAYSIA', 12, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3631/2016', 'Prof. Dr. Asmal May, MA\r\nDrs. H. M. Hatta, M. Ag', 'JEJAK TASAWUF DALAM TRADISI BADIKIA MULUIK DI SUMATERA BARAT', 12, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3632/2016', 'Prof. Dr. M.Arrafie Abduh, M.Ag\r\nAdynata, M. Ag', 'Terapi Tashawuf Yasfin Pecandu Narkoba di Indonesia (Metode Ruqyah Syar\'iyyah)', 12, 2, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3634/2016', 'Prof. Dr. Akhmad Mujahidin, M.Ag', 'PERANAN KEARIFAN LOKAL DALAM PENGEMBANGAN EKONOMI DAN PERBANKAN SYARIAH DI INDONESIA', 12, 5, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3636/2016', 'Prof. Dr. Zikri Darussamin, M.Ag', 'Penyelesaian Harta Bersama Pasca Perceraian bagi Istri yang Bekerja Pada Masyarakat Melayu-Riau', 12, 2, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3637/2016', 'Prof. Dr. H. Alaiddin, MA\r\nWali Saputra, SE, MA\r\nSurya Elhadi, ST', 'Peran Lembaga Nirlaba Islam dalam Penanggulangan Kemiskinan dan Pemberdayaan Masyarakat Indonesia (Studi Pada Dompet Dhuafa dan Rumah Zakat Indonesia)', 12, 5, 4, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.01/3650/2016', 'ZUFRIDIN', 'Analisis Perankingan dan Pengelompokan Penerima Dana Bantuan Pendidikan Menggunakan Metode Topsis dan K-Means di Pondok Pesantren Dar El Hikmah Pekanbaru', 11, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3842/2016', 'Dr. Teddy Purnamirza, ST, M.Eng\r\nDepriwana Rahmi, S. Pd, M. Sc', 'Perancangan Antena RLSA Pancaran Ganda Untuk Komunikasi Wi-Fi', 9, 7, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/3950/2016', 'M. Ihsan, M.Ag', 'Akulturasi agama dan budaya kaum imigran dengan penduduk lokal di pekanbaru', 10, 5, 4, 2016, 0.00, 'DIPA BLU UIN SUSKA RIAU TAHUN 2016', ''),
('Un.04/L.I/TL.01/4065/2016', 'H. Zailani, M.Ag\r\nDrs. Kaizal Bay, M.Si', 'MAKAN DAN MINUM PERSPEKTIF HADIS RASUL (Integrasi Hadis Dengan Ilmu Kesehatan)', 9, 2, 4, 2016, 0.00, 'DIPA UIN SUSKA RIAU TAHUN 2016', ''),
('Un.04/L.I/TL.01/458/2016', 'Fatimah Depi Susanty Harahap, S.Pd.I, MA (KETUA) \r\nCUT RAUDHATUL MISKI (ANGGOTA)', 'Pengembangan Instrumen Tes Objektif Bentuk Pilihan Ganda Berbasis Webquest pada Mata Pelajaran Bahasa Arab di Pesantren Teknologi Riau', 9, 1, 4, 2016, 0.00, '-', ''),
('Un.04/L.I/TL.01/50/2015', 'Gusma Afriani, S. Ag., M.Ag', 'PENGEMBANGAN DIRI MAHASISWA SEKITAR MASJID DALAM PEMANFAATAN MASJID SEBAGAI MEDIA PENDIDIKAN (Studi Kasus pada Masjid Darul Amal Kecamatan Tampan Kota Pekanbaru)', 7, 1, 4, 2015, 0.00, '-', ''),
('Un.04/L.I/TL.01/54/2015', 'EMILIA SUSANTI, S.Pd, M.Pd', 'Nyanyian Baganduh Masyarakat Siak Hulu Kabupaten Kampar dan Implementasinya Pada Pembelajaran IPS SD', 7, 1, 4, 2015, 0.00, '-', ''),
('Un.04/L.I/TL.01/541.0/2014', 'Tuti Aznya Kumala/11153201780', 'Analisis Pengukur Resiko Data Center pada Pusat Teknologi Informasi dan Pangkalan Data UIN Suska Riau', 11, 6, 3, 2014, 6750000.00, '-', ''),
('Un.04/L.I/TL.01/541.7/2014', 'Jamilah/ 11113202320', 'Kerjasama Guru Pembimbing dan Wali Kelas dalam Penanggulangan Prilaku Negatif Akresifitas Ssiwa di SMP Negeri 20 Pekanbaru', 11, 1, 3, 2014, 6750000.00, '-', ''),
('Un.04/L.I/TL.01/541.e/2014', 'Nanda Rezky Syafutri/ 11113200880', 'Strategi Guru dalam Mengatasi Kejenuhan Belajar Full Day Siswa di SMK Farmasi Ikasari Pekanbaru', 11, 8, 3, 2014, 6750000.00, '-', ''),
('Un.04/L.I/TL.01/541.k/2014', 'Faisal/ 11113102371', 'Pelayanan Prima Tenaga Administrasi Sekolah dalam Menciptakan Budaya Menyenangkan di SMA N 12 Pekanbaru', 11, 1, 3, 2014, 6750000.00, '-', ''),
('Un.04/L.I/TL.01/541.l/2014', 'Syamsul Bahri/ 11181102249', 'Kombinasi Tepung Kunyit dan Bawang Putih dengan Probiotik sebagai Imbuhan pakan terhadap Perporma Ayam Broiler', 11, 8, 3, 2014, 6750000.00, '-', ''),
('Un.04/L.I/TL.01/541.r/2014', 'Andri Hidayat/ 11181103952', 'Produksi Karkas dan Lemak Abdominal Ayam Pedaging yang Mendapat Imbuhan Pakan Asal Herbal dan Probiotik', 11, 8, 3, 2014, 6750000.00, '-', ''),
('Un.04/L.I/TL.01/542.f/2014', 'Refda Deliza/11117200691', 'Penerapan Model Learning Cycle 6E Untuk Meningkatkan Hasil Belajar Siswa Pada Pokok Bahasan Koloid Di Kelas XI SMK Taruna Mandiri Pekanbaru.', 11, 1, 3, 2014, 6750000.00, '-', ''),
('Un.04/L.I/TL.01/542.g/2014', 'Nadia Utami/ 11113202280', 'Upaya Guru Pembimbing dalam Meningkatan Kerativitas Belajar Siswa di MAN 2 Model Pekanbaru', 11, 1, 3, 2014, 6750000.00, '-', ''),
('Un.04/L.I/TL.01/542.h/2014', 'Hasni Salimah/11113200407', 'Upaya Guru Pembimbingan dalam meningkatkan Motivasi Belajar Siswa Underachiver di Madrasah Aliyah Negeri 1 Pekanbaru', 11, 1, 3, 2014, 6750000.00, '-', ''),
('Un.04/L.I/TL.01/542.i/2014', 'Rafita/ 11113203540', 'Upaya Guru Pembimbingan dalam meningkatkan Self Afficacy Siswa yang Mengalami Prokrastinasi di SMA N 10 Pekanbaru', 11, 1, 3, 2014, 6750000.00, '-', ''),
('Un.04/L.I/TL.01/74/2013', 'Afrinaldy Rustam, M.Si', 'Pengaruh Motivasi Kedisiplinan dan Kepemimpinan Terhadap Prestasi Kerja Petugas Kebersihan', 7, 1, 4, 2015, 0.00, 'DIPA (RMP) UIN SUSKA RIAU TAHUN 2015', ''),
('Un.04/L.I/TL.01/75/2015', 'Devi Deswimar, S.Sos, M.Si', 'PENGARUH KOORDINASI VERTIKAL DAN HORIZONTAL TERHADAP EFEKTIFITAS KERJA PEGAWAI UIN SUSKA RIAU', 7, 4, 4, 2015, 0.00, '-', ''),
('Un.04/L.I/TL.01/86/2015', 'Hariza Hasyim, SE, M.Si', 'ANALISIS PENGARUH KONDISI MAKRO EKONOMI TERHADAP PERUBAHAN NILAI TUKAR RUPIAH SELAMA KRISIS GLOBAL 2006-2014', 7, 4, 4, 2015, 0.00, '-', ''),
('Un.04/L.I/TL.01/PP.06/2444/201', 'Vera Devani ST., M.Sc\r\nRahmadeni, M.Si', 'penguatan ekonomi masyarakat melalui aplikasi fuzzy linear programming untuk pembuatan pakan ikan buatan di kabupatn kampar', 7, 7, 5, 2017, 0.00, '-', ''),
('Un.04/L.I/TL.03/341.p/2014', 'Zuriati/ 11125200437', 'Pelaksanaan Jual Beli Sawit di Desa Dusun Tua Kecamatan pangkalan Lesung.', 11, 5, 3, 2014, 6750000.00, '-', ''),
('Un.04/L.I/TL.03/538.a/2014', 'Prof. Dr. H. Amir Lutfi / 1945121181971021001 / Guru Besar IV/e Pembina Utama/ 2018124501\r\nFebri Delmi Yetti, S.EI, MA\r\nWali Saputra, SE, Ak, MA\r\nHabibi Lukman Setiawan\r\nFeri Hidayat\"', 'Moslem Struggle In Coopling With European Living Society', 19, 5, 3, 2014, 300000000.00, '-', ''),
('Un.04/L.I/TL.03/539.3/2014', 'Indra Joni/ 11181103547', 'Pengaruh Larutan Gelatin Tulang Kaki ayam dalam Pengawetan Telur Puyuh', 11, 8, 3, 2014, 6750000.00, '-', ''),
('Un.04/L.I/TL.03/540.f/2014', 'Wiwin Setiawan/ 11152101883\r\nWiko Juliando/ 11052102265', 'Analisis Kesehatan dan Keselamatan Kerja dengan Membuat Peta Kontur Kebisingan di PT. Universal Respati Turbinne Engnering', 11, 7, 3, 2014, 6750000.00, '-', ''),
('Un.04/L.I/TL.03/541.1/2014', 'Intan Lestari/ 11153200376', 'Analisis dan Perancangan Vioce Over Internet Protokol (VoIP) Menggunakan Teknologi Open Suurce pada Pusat Teknologi Informasi dan Pangkalan Data UIN Suska Riau', 11, 7, 3, 2014, 6750000.00, '-', ''),
('Un.04/L.I/TL.03/541.n/2014', 'Aswira Faiza/ 1118110588', 'Hubungan Antara Praktek Biosekuriti dengan Kajian Avian Influenza pada Peternakan Ayam Pedaging di Sektor 3 di Kabupaten Kampar Selama satu Siklus Pemiliharaan', 11, 8, 3, 2014, 6750000.00, '-', ''),
('Un.04/L.I/TL.03/541.s/2014', 'Fitria/11142202854', 'Pemanfaatan Teknologi Konseling Neuro Linguistic Programming dalam Mengatasi Kesulitan Belajar Siswa Sekolah Dasar', 11, 6, 3, 2014, 6750000.00, '-', ''),
('Un.04/L.I/TL.03/541.t/2014', 'Isa Mariana/ 11142203788', 'Pemamfaaatan Inventori Tugas Prekembangan Siswa dalam Pemberian Layanan Bimbingan dan Konseling', 11, 6, 3, 2014, 6750000.00, '-', ''),
('Un.04/L.I/TL.03/541.v/2014', '1. Amar Suhadi/ 11231104840\r\n2. Rufika Sari/ 11032201485', 'Misogynist di dalam Hadis (Telaah Hadis Sunan Nasa\'i dab Ibnu Majah, Perempuan Sumber Fitnah Paling Berbahaya)', 11, 2, 3, 2014, 0.00, '-', ''),
('Un.04/L.I/TL.03/542.l/2014', '1. Syarifah Aini Nainggolan/11217201318 \r\n2. Chairun Nisa RZ/ 11017202752', 'Analisis Uji Kualitas kadar Air pada Hasil Pemurnian Minyak Goreng Bekas yang Menggunakan Adsorben Karbon Aktif Ampas Kelapa', 11, 1, 3, 2014, 6750000.00, '-', ''),
('Un.04/L.I/TL.04/49/2015', 'Dra. Hj. Alfiah, M.Ag, ', 'Implementasi Konsep dan Kurikulum Madrasah Aliyah Negeri Model di Riau (study terhadap penerapan kurikulum di MAN 2 Model Pekanbaru)', 7, 1, 4, 2015, 0.00, 'DIPA UIN SUSKA RIAU TAHUN 2015', ''),
('Un.04/L.I/TL.06/3381/2016', 'Rahmad, M.Pd\r\nDarusman, M.Ag', 'PENDEKATAN THERAPEUTIC COMMUNITY DALAM MENGOBATI RESIDEN PENYALAHGUNA NARKOTIKA DI BALAI BESAR REHABILITASI BADAN NARKOTIKA NASIONAL LIDO BOGOR', 9, 6, 4, 2016, 0.00, 'DIPA UIN SUSKA RIAU TAHUN 2016', ''),
('Un.04/L.ITL.01/2261/2018', 'Idria Maita, S.Kom, M.Sc\r\nWirdah Anugrah, S.Kom., M.Kom', 'RANCANG BANGUN APLIKASI LAYANAN KONSULTASI PENASEHAT AKADEMIK (PA) ONLINE BERBASIS ANDROID  (STUDI KASUS: UIN SUSKA RIAU)', 2, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.T/TL.01/134/2015', 'Arwan, M.Ag, Drs.', 'Efektivitas Komunikasi Personal Dalam Mewujudkan Keharmonisan Pasangan Suami Istri di Masyarakat Nelayan Meskom Bengkalis', 7, 6, 4, 2015, 0.00, '-', '');

-- --------------------------------------------------------

--
-- Table structure for table `pengabdian`
--

CREATE TABLE `pengabdian` (
  `no_sk` varchar(30) NOT NULL,
  `penulis` text NOT NULL,
  `judul` varchar(255) NOT NULL,
  `id_cluster` int(11) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `id_rak` int(11) NOT NULL,
  `tahun` year(4) NOT NULL,
  `pendanaan` double(10,2) NOT NULL,
  `sumber_dana` varchar(255) NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengabdian`
--

INSERT INTO `pengabdian` (`no_sk`, `penulis`, `judul`, `id_cluster`, `id_fakultas`, `id_rak`, `tahun`, `pendanaan`, `sumber_dana`, `file`) VALUES
('1', 'kuy', 'mantab', 2, 1, 3, 2020, 24.00, 'disini', ''),
('un:20/201/2008', 'Woiuuu', 'asdasdsa', 2, 3, 1, 2020, 24.00, 'disini', '');

-- --------------------------------------------------------

--
-- Table structure for table `rak`
--

CREATE TABLE `rak` (
  `id_rak` int(11) NOT NULL,
  `nama_rak` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rak`
--

INSERT INTO `rak` (`id_rak`, `nama_rak`) VALUES
(1, 'Rak 1'),
(2, 'Rak 2 '),
(3, 'Rak 3'),
(4, 'Rak 4'),
(5, 'Rak 5'),
(6, 'Rak 6');

-- --------------------------------------------------------

--
-- Table structure for table `summary`
--

CREATE TABLE `summary` (
  `id_buku` varchar(20) NOT NULL,
  `penulis` text NOT NULL,
  `judul` varchar(255) NOT NULL,
  `jenis_jurnal` int(11) DEFAULT NULL,
  `tema` varchar(255) DEFAULT NULL,
  `volume` varchar(6) NOT NULL,
  `edisi` varchar(6) NOT NULL,
  `id_rak` int(11) NOT NULL,
  `tahun` year(4) NOT NULL,
  `stok` int(11) NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `summary`
--

INSERT INTO `summary` (`id_buku`, `penulis`, `judul`, `jenis_jurnal`, `tema`, `volume`, `edisi`, `id_rak`, `tahun`, `stok`, `file`) VALUES
('1312412', 'fsefse', 'sdfs', 11, 'wewe', '1', '2', 1, 2010, 2, ''),
('1412-1034', '-', 'ANALISIS', 3, 'PROSPEK TEKNOLOGI INFORMASI TERHADAP POLA PEMBELAJARAN PENDIDIKAN AGAMA ISLAM', '5', '1', 0, 2005, 0, '1412-1034.pdf'),
('2213-2134-32', 'penulis 1\r\npenulis 2', 'qwerty', NULL, '-', '-', '-', 0, 2017, 0, '2213-2134-32.pdf'),
('225235', '432434', 'e', NULL, 'q1', '1', '1', 1, 2001, 1, ''),
('2344', 'ewflewn', 'kjren', NULL, '1', '1', '1', 1, 2001, 1, ''),
('324', 'jfj', 'jkfn', NULL, '1', '1', '1', 1, 2010, 5, ''),
('34234', 'sgsrgsr', 'ssgg', NULL, 'rgrg', '1', '1', 1, 2010, 5, ''),
('979-3757-50-7', 'HUSNI THAMRIN (ed.)', 'DINAMIKA SOSIAL KEAGAMAAN', NULL, '-', '-', '-', 0, 2007, 0, '979-3757-50-7.pdf'),
('9988-2921-11', 'sdas', 'asda', NULL, 'asdsa', 'asdsa', 'asdas', 2, 2010, 20, ''),
('9988-2921-12', 'AYIP', 'Suatu cerita', NULL, 'mantab', '1', 'ew1', 6, 2011, 25, ''),
('fefwew39', '3rr3t\r\newgg', 'jdudl', NULL, '1', '1', '1', 1, 2002, 10, 'new 1.txt'),
('ps-1549431179', 'dsda2212', '11ffefe', NULL, '-', '-', '-', 0, 2011, 0, 'ps-1549431179.pdf'),
('ps-1549431368', 'grgrgre', '32ffsg', NULL, '-', '-', '-', 0, 2013, 0, 'ps-1549431368.pdf'),
('ps-1549431949', 'ggrgrgrer', '213ggrgr', NULL, '-', '-', '-', 0, 2014, 0, 'ps-1549431949.pdf'),
('ps-1549443636', 'oenusli', 'judul', NULL, '-', '-', '-', 0, 2012, 0, 'ps-1549443636.pdf'),
('ps-1549443686', 'dmkkdad', 'jdudal', NULL, '-', '-', '-', 0, 2016, 0, 'ps-1549443686.pdf'),
('ps-1551851785', 'zxcvb', 'asdfg', NULL, '-', '-', '-', 0, 2011, 0, 'ps-1551851785.pdf'),
('ps-1596688817', 'Eko Yuliyanto\r\nFitria Fatichatul Hidayah\r\nEnade Perdana Istyastono\r\nYosef Wijoyo', 'ANALISIS REFLEKSI PADA PEMBELAJARAN: REVIEW REASEARCH', NULL, '-', '-', '-', 0, 2018, 0, 'ps-1596688817.pdf'),
('ps1546754461', 'qwrqwfq', '3321fffsdv', NULL, '-', '-', '-', 0, 2012, 0, 'ps1546754461-Sertifikat Kelulusan Belajar Membuat Aplikasi Android untuk Pemula.pdf'),
('q2323', '2lseng', 'lrgluh', NULL, '1', '1', '1', 1, 2001, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `hak_akses` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `outcome` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `hak_akses`, `created_at`, `updated_at`, `outcome`) VALUES
(1, 'fauzi', '6NFqFk1JWa6Qlpx8_v0BvO8x3JJjbqEC', '$2y$13$H2Zr5.1YulpUpW5jMIh6FOV73eWWv2AWr8atHiWaN1BaG2gMjkt6.', NULL, 'ahmadfauzirahman99@gmail.com', 10, '', 1553148822, 1553148822, NULL),
(2, 'arif', 'Tq1N-0rQPy2rvSaZ8yLRT_upG_BJY4xQ', '$2y$13$nRFMbBr09njRgWL3WPbL4euOJZqD/ctDNf6eGA.EwiPVouHgNnpbW', NULL, 'arif@gmail.com', 10, 'penelitian_admin', 1553215915, 1553215915, '[\"ps-1596688817\",\"1412-1034\",\"979-3757-50-7\"]'),
(3, 'izza', 'SmMhlBq5z91FU82ZTK86pYwvYxO459bM', '$2y$13$WfaWrMikKDB9n683I/0.0Oe9MuVYpzyj.WDpjDKYuB1iZhsZfbrJK', NULL, 'izza@gmail.com', 10, 'pengabdian_admin', 1553695064, 1553695064, NULL),
(4, 'ara', 'XbUcVcdB_tlVup5C2x5NFRYMVIUucBMb', '$2y$13$JY79ISfR5iZ0qW4aCI4H0..1SmvVsgQTRsH0lnHtNvDTCmShHiwn.', NULL, 'ara@gmail.com', 10, 'summary_admin', 1553695082, 1553695082, '[\"ps-1549443686\",\"2213-2134-32\",\"ps-1551851785\"]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`isbn`);

--
-- Indexes for table `cluster`
--
ALTER TABLE `cluster`
  ADD PRIMARY KEY (`id_cluster`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indexes for table `jenis_jurnal`
--
ALTER TABLE `jenis_jurnal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurnal`
--
ALTER TABLE `jurnal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `nip` (`nip`);

--
-- Indexes for table `penelitian`
--
ALTER TABLE `penelitian`
  ADD PRIMARY KEY (`no_sk`);

--
-- Indexes for table `pengabdian`
--
ALTER TABLE `pengabdian`
  ADD PRIMARY KEY (`no_sk`);

--
-- Indexes for table `rak`
--
ALTER TABLE `rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- Indexes for table `summary`
--
ALTER TABLE `summary`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cluster`
--
ALTER TABLE `cluster`
  MODIFY `id_cluster` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id_fakultas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jenis_jurnal`
--
ALTER TABLE `jenis_jurnal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `jurnal`
--
ALTER TABLE `jurnal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rak`
--
ALTER TABLE `rak`
  MODIFY `id_rak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
