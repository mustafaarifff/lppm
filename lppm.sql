-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2019 at 03:06 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lppm`
--

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
  `pendanaan` double(10,2) NOT NULL,
  `sumber_dana` varchar(255) NOT NULL,
  `file` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penelitian`
--

INSERT INTO `penelitian` (`no_sk`, `penulis`, `judul`, `id_cluster`, `id_fakultas`, `id_rak`, `tahun`, `pendanaan`, `sumber_dana`, `file`) VALUES
('Un.04/L.I/TL.01/096/2018', 'Prof.Raihani, M.Ed., Ph.D.\r\nHarris Simaremare, M.T., Ph.D\r\nRicca Angreini Munthe, S.Psi., MA', 'Kewarganegaraan Digital di Madrasah Aliyah di Indonesia: Studi Tentang Kemampuan Siswa dan Pengembangan Kurikulum Digital Citizenship Sehat dan Toleran', 4, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/1196/2018', 'Drs. H. Arbi, M. Si\r\nHerlina, S. Ag, MA\r\nSyarifuddin, S. Ag, MA\r\nDra. Lisdawati, M. Ag', 'INTEGRASI SOSIAL BUDAYA ETNIK TIONGHOA  DI KOMUNITAS DESA PANTAI  (Kajian Tentang Profil Komunitas Desa Pantai, Aspek Penguatan Potensi Integrasi, Keberhasilan Ekonomi dan Sumber Utama Pemicu Konflik Antar Etnik di Komunitas  Desa Pantai Meskom dan Tamer', 2, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/1962/2018', 'Dr. Bukhori, S.Pd. I, M. Pd.\r\nDedy Wahyudi, M. Pd', 'STUDENTS’ ATTITUDES TOWARD ENGLISH IN AN ESL CONTEXT: A Case Study of Indonesian Senior Secondary School Students in Malaysia', 6, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/1964.1/2018', 'Dr. Hasbullah, M.Si\r\nDrs. M. Nazar Almasri, M. Ag\r\nDrs. Agussalim Nasution, M. Ag', 'PERILAKU EKONOMI PEREMPUAN PENGRAJIN SONGKET DI DESA BUKIT BATU KABUPATEN BENGKALIS', 7, 2, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/1964/2018', 'Dr. H. Muh. Said  HM, M.Ag, MM\r\nDr. H. Muhammad Tawwaf, S.IP, M.Si\r\nDra. Hj. Syafi\'ah, M.Ag', 'IMPLEMENTASI KONSEP AL-IJARAH PADA SISTEM SEWA MENYEWA RUMAH- RUMAH KOS DI KECAMATAN TAMPAN KOTA PEKANBARU PROVINSI RIAU', 2, 5, 5, 2018, 0.00, 'DIPA BLU UIN SUSKA RIAU', ''),
('Un.04/L.I/TL.01/1966.1/2018', 'Drs. Saifullah, M.Us\r\nAbdul Shomad Batubara, L.c, M.A', 'DIFERENSIASI DEBUS BANTEN DAN DEBUS PARIAMAN (Integrasi Tariqat dan Seni Bela Diri dalam Pariwisata Nasional )', 2, 2, 5, 2018, 0.00, 'DIPA UIN SUSKA RIAU', ''),
('Un.04/L.I/TL.01/1967.1/2018', 'Dr. Tohirin, M.Pd\r\nDr. Hj. Risnawati, M.Pd.\r\nSohiron, M.Pd.I', 'Indigenous Counseling dan Pembelajaran Matematika Multiculture pada Sekolah Menengah di Wilayah 3T (Tertinggal, Terdepan, dan Terluar)', 4, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/1975/2018', 'Pangoloan Soleman Ritonga, S.Pd. M.Si\r\nHeppy Okmarisa, S.Pd.,M.Pd\r\nArif Yasthopi, S.Pd., M.Si\r\nNeti Afrianis, S.Pd., M.PKim', 'IDENTIFIKASI MISKONSEPSI MAHASISWA PADA KONSEP LARUTAN PENYANGGA DENGAN MENGGUNAKAN TES DIAGNOSTIK FOUR-TIER TEST MULTIPLE CHOICE', 6, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2000/2018', 'Miftahuddin, M.Ag\r\nM.Fahli Zatrahdi, M.Pd', 'PERBEDAAN METODE KONVENSIONAL DENGAN TERAPI ZIKIR DALAM PENYEMBUHAN AUTIS (Studi Komparasi Sekolah Khusus Taruna Al-Qur’An Yogyakarta Dan Permata Hati Pekanbaru)', 2, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2029/2018', 'Dr. Mahyarni, SE, MM\r\nAstuti Meflinda, SE, MM\r\nDra. Asmiwati, MA', 'INVESTIGASI PENGARUH GREEN MANAJEMEN STRATEGI DAN BENEFIT EKONOMI TERHADAP KINERJA UMKM SYARIAH  (FOKUS KAJIAN PADA DAERAH LOMBOK SEBAGAI DESTINASI WISATA HALAL)', 2, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2052/2018', 'Dr. Hidayati, S.Pt, MP', 'Eksplorasi Phylogenetic dan Strategi Pengembangan Itik Sawang Sebagai Plasma Nutfah Provinsi Kepulauan Riau', 6, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2059/2018', 'Dr. Yendra Liza, S.Pt, MP\r\nAnwar Effendi Harahap, S.Pt, M.Si\r\nRestu Misrianti, S.Pt, M.Si', 'Kaji Banding Produktivitas Kerbau Kuntu Dengan Formula Sinkronisasi Guna Mendukung Swasembada Pangan Nasional', 4, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2060/2018', 'Zuraidah, M.Ag\r\nDra.Hj.Irdamisraini, MA\r\nDra.Nurlaili, M.Si', 'PERAN BADAN AMIL ZAKAT NASIONAL (BAZNAS) DALAM MENGENTASKAN KEMISKINAN DI KABUPATEN ROKAN HULU', 2, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2061/2018', 'Dr. Wahidin, M.Ag', 'OTONOMI DAERAH DAN PENINGKATAN KESEJAHTERAAN (STUDI MENGENAI PEMEKARAN DI KABUPATEN KAMPAR DAN KABUPATEN ROKAN HULU PROPINSI RIAU)', 2, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2063/2018', 'Dr. H. Hajar, M.Ag\r\nDarmawan Tia Indrajaya, M.Ag\r\nAde Fariz Fakhrullah, M.Ag', 'Metode Penetapan Waktu Shalat Perspektif JAKIM Malaysia dan Badan Hisab & Rukyat Indonesia', 2, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2065/2018', 'Fitra Herlinda, M.Ag\r\nDra. Hj, Zalyana, M. Ag', 'IMPLEMENTASI CYBER COUNSELING DALAM CASE CONFERENCE UNTUK MENGATASI PERMASALAHAN BULLYING DI MADRASAH ALIYAH NEGERI KABUPATEN KAMPAR', 6, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2070/2018', 'Ade Jamaruddin, M.Ag\r\nKhairil Henry, SE, M.Si. Ak', 'Determinasi Isbat Ramadhan perspektif Al- Qur\'an', 2, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2071/2018', 'Vivik Shofiah, Shofiah, S.Psi., M.Si\r\nYulita Kurniawat Asra., M.Psi\r\nSahwitri Triandani., M.Si', 'Pelatihan Gratitude (Bersyukur) Untuk Meningkatkan Makna Hidup Anak Didik Pemasyarakatan di LPKA Pekanbaru', 2, 3, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2072/2018', 'Dr. Dewi Febrina. S.Pt., MP\r\nDrh. Rahmi Febriyanti. M. Sc\r\nZumarni. S. Pt., MP', 'UJI AKTIVITAS ANTIMIKROBA EKSTRAK FERMENTASI PELEPAH KELAPA SAWIT', 4, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2078/2018', 'Rita Susanti, S.Psi, M.A\r\nYuliana Intan Lestari, S.Psi, M.A', 'KEPRIBADIAN REMAJA DALAM PERSPEKTIF ISLAM DAN KAITANNYA DENGAN RELIGIUSITAS DAN NILAI (STUDI PENGEMBANGAN DAN VALIDITAS INSTRUMEN PADA REMAJA MUSLIM RIAU)', 2, 3, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2080/2018', 'Ismu Kusumanto, ST,MT\r\nNofriza, ST., MSc', 'Analisis Keberadaan Pusat Perbelanjaan Modern Terhadap Toko Kelontong Masyarakat Di Kota Pekanbaru', 6, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2081/2018', 'H. Ekie Gilang Permata, ST, M.Sc', 'Analisis Prilaku Mahasiswa Sains Dan Teknologi Dalam Penggunaan Smartphone (Gadget) Untuk Meningkatkan Prestasi Akademik', 3, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2082/2018', 'Dr. H. AGUSTIAR, M.Ag', 'Stilistika Al-Qur\'an : Kajian Ayat-Ayat Dalam Bentuk Kalam Khobar Analisis Struktur Dan Makna', 7, 2, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2084/2018', 'DR. MULIA SOSIADY, SE,MM,Ak', 'ANALISIS DAMPAK STRES AKADEMIK MAHASISWA DALAM PENYELESAIAN TUGAS AKHIR (SKRIPSI)', 7, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2086/2018', 'Henni Indrayani,', 'Analisis Pengaruh Kompetensi, Pengembangan Karir dan Budaya Organisasi terhadap Kinerja Dosen PTKIS Kota Pekanbaru', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2087/2018', 'Dr. Kadar, M.Ag\r\nDr. Alwizar, M.Ag\r\nIrawati, M.Pd', 'KONSTRUKSI MODEL KURIKULUM INTEGRASI ILMU SOSIAL DAN ISLAM SERTA IMPLEMENTASINYA DALAM PEMBELAJARAN DI FAKULTAS TARBIYAH DAN KEGURUAN UIN SUSKA RIAU', 1, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2088/2018', 'Yuli Widiningsih, M.Psi, Psikolog\r\nIndah Puji Ratnami, S.Psi, M.A', 'Pelatihan Islamic Parenting sebagai Upaya untuk Mengurangi Tindak Kekerasan Orang Tua pada Anak', 6, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2089/2018', 'Ahyani Radhiani Fitri, S.Psi., M.A.,Psikolog\r\nDesma Husni, M.A., Psikolog', 'Community Based Participatory Action Research Untuk Meningkatkan Resiliensi Keluarga Pada Fase Rekonstruksi Pasca Banjir', 6, 3, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2090/2018', 'Ikhwani Ratna, SE. M.Si., Ak, CA\r\nHidayati Nasrah, SE, M.Acc, Ak, CA', 'STUDI  DESKRIPTIF TENTANG TRACER STUDY UNTUK MENGANALISA PROFIL ALUMNI JURUSAN AKUNTANSI FAKULTAS EKONOMI DAN ILMU SOSIAL UIN SUSKA RIAU', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2091/2018', 'Elvi Yanti, S.Pd., M.Si', 'PENGEMBANGAN MODEL GEOMETRI MOLEKUL UNTUK MENDUKUNG VISUALISASI ABSTRAKSI MAHASISWA CALON GURU KIMIA', 8, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2092/2018', 'Drs. Mukhlis, M.Si\r\nLiliza Agustin, M.Psi., Psikolog\r\nNurhayati, M.Pd', 'Possitive Psychotherapy Husnu-Dzhan : Model Pengembangan Psikoterapi Islam Dalam Menurunkan Derajat Stress Pada Penderita hipertensi', 1, 3, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2093/2018', 'RITA ELFIANIS, SP, M.Sc', 'ANALISIS KEKERABATAN GENETIK TANAMAN PADI (ORYZA SATIVA L.) DI KABUPATEN KAMPAR DENGAN MENGGUNAKAN PANANDA RAPD (RANDOM AMPLIFIED POLYMORPHIC DNA)', 7, 8, 5, 2018, 0.00, '-', ''),
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
('Un.04/L.I/TL.01/2107/2018', 'Ratna Dewi, S.Sos. M.Si', 'Inovasi Pemerintah Dalam Pengelolaan Objek Wisata Bono Sebagai Upaya Meningkatkan Pendapatan Asli Daerah (PAD) Kabupaten Pelalawan', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2108/2018', 'Nurlasera, SE, M.Si\r\nDevi Megawati,SEI, MESy', 'STUDI PARTISIPASI PEREMPUAN SEBAGAI PENGELOLA DAN ANGGOTA KOPERASI  DALAM MENINGKATKAN KESEJAHTERAAN KELUARGA', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2109/2018', 'Linda Aryani, M.Si\r\nAdfadia Mera, M.A\r\nDr. Harmaini, M.Si', 'Studi Deskriptif Kematangan Pribadi Calon Pasangan Suami Isteri di Kota Pekanbaru', 2, 3, 5, 2018, 0.00, 'DIPA UIN SUSKA RIAU', ''),
('Un.04/L.I/TL.01/2110/2018', 'Nuraini Sahu, SH, MH', 'STRATEGI PENGEMBANGAN SOFT SKILL, HARD SKILL DAN LIFE SKILL PADA MAHASISWA ILMU HUKUM UIN SUSKA RIAU DALAM MENGHADAPI MASYARAKAT EKONOMI ASEAN  (MEA)', 6, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2111/2018', 'Dr. Rusdi, M.A.\r\nNandang Sarip Hidayat, S.Pd.I, M.A.', 'APLIKASI PEMBELAJARAN BAHASA ARAB  BERBASIS TEKNOLOGI BAGI GURU MADRASAH ALIYAH TEMBILAHAN INDRAGIRI HILIR RIAU', 2, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2112/2018', 'Dr. Dony Martias, SE, MM\r\nFaiza Muklis, SE, M.Si, Ak', 'Analisis Perlakuan Akuntansi Aset Bersejarah (Heritage Assets): Studi Pada Aset Bersejarah Di Propinsi Riau', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2113/2018', 'Merry Siska, ST, MT\r\nReski Mai Candra, ST, M.Sc\r\nEki Saputra, S.Kom, M.Kom', 'Modifikasi Stasiun Kerja Olahan Nanas di Riau dan Jawa Barat Menggunakan Workplace Ergonomic Risk Assessment (WERA)', 2, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2115/2018', 'Syaifullah, SE, M.Sc\r\nHasdi Radiles, MT\r\nM. Afdal, ST, M.Kom\r\nEka Pandu Cynthia, ST, M.Kom\r\nT. Khairil Ahsyar, M.Kom', 'Optimasi jaringan jalan kendaraan  dalam kawasan kampus II uin Suska Riau Dengan menggunakan metoda simulasi antrian', 2, 9, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2116/2018', 'H. Mhd. Kastulani, SH, MH\r\nJoni Alizon, S.H., MH\r\nAhmad Adri Fifai, M. Ag', 'PERLINDUNGAN HUKUM BAGI PENCARI SUAKA ASING DI KAMP PENGUNGSI BANDA ACEH  MENURUT HUKUM INTERNASIONAL (KASUS PENGUNGSI ROHINGYA)', 2, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2117/2018', 'Bambang Hermanto, MA', 'ANALISIS KOMPONEN KELAYAKAN PEMEKARAN PROPINSI RIAU PESISIR', 2, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2118/2018', 'Irsyadi Sirad Juddin, SP., Msi', 'ANALISIS KELAYAKAN USAHA DAN PENDAPATAN KEGIATAN KEWIRAUSAHAAN MAHASISWA', 7, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2120/2018', 'Dra. Silawati, M.Pd\r\nDr. Aslati, M. Ag\r\nRosmita, M. Ag', 'SINERGITAS POLRI BERSAMA MASYARAKAT DALAM RANGKA PENCEGAHAN KELOMPOK RADIKAL PRO KEKERASAN DAN INTOLERANSI DI WILAYAH HUKUM POLRES KARIMUN PROVINSI KEPULAUAN RIAU', 4, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2121/2018', 'Fitra Lestari Norhiza, ST, M.Eng, Ph.D\r\nDewi Diniaty ST, M,Ec,Dev\r\nMawardi, S.Ag, M.Si\r\nSymsurizal, SE, MS.c AK', 'PENGUKURAN KINERJA RANTAI PASOK MENGGUNAKAN METODE SCOR MODEL DAN SOFTWARE PROCESS WIZARD (Studi Kasus Sertifikasi Produk Halal LPPOM MUI Riau)', 1, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2122/2018', 'Dr. Nurcahaya, S.Ag, M.Pd.I\r\nMadona Khairunnisa, SE. I., ME. Sy\r\nRoni Kurniawan,SH., MH', 'MODEL KONSEPTUAL IMPLEMENTASI PENDIDIKAN KARAKTER TASAWUF DALAM PROSES PEMBELAJARAN', 1, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2123/2018', 'Tengku Nurainun, ST, MT\r\nSiti Monalisa, ST, M.Kom\r\nMisra Hartati, ST, MT', 'RANCANGAN STRATEGI PEMASARAN BERDASARKAN SEGMENTASI MAHASISWA DENGAN METODE MARKETING MIX DAN K-MEANS (STUDI KASUS : UIN SUSKA RIAU)', 2, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2124/2018', 'Elfira Safitri, M. Mat', 'PEMODELAN STATISTIK DATA EKSTREM PENCEMARAN UDARA KOTA PEKANBARU', 3, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2126/2018', 'Dr. Rado Yendra, M.Sc\r\nAri Pani Desvina, M.Sc\r\nMuspika Hendri, M.A', 'PERBANDINGAN MODEL HUJAN BERDASARKAN DATA HUJAN TAHUN MASEHI DAN TAHUN HIJRIAH', 1, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2127/2018', 'Muammar Alkadafi, S.Sos,. M.Si\r\nRusdi, S.Sos, MA\r\nFitria Ramadhani Agusti NST, S.IP, M.Si', 'PELAKSANAAN HAK ASAL-USUL DAN ADAT ISTIADAT DALAM PENYELENGGARAAN PEMERINTAHAN KAMPUNG ADAT DI KABUPATEN SIAK PROVINSI RIAU', 2, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2129/2018', 'Anwardi', 'PERBAIKAN KONDISI KERJA PRODUKSI MINYAK KELAPA TRADISIONAL DENGAN PENDEKATAN ERGONOMI PARTISIPATORI', 3, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2131/2018', 'Harpito', 'Analisis Supply Chain Pada Industri Konstruksi Menggunakan Model SCOR (Studi Kasus Pengadaan Tiang Pancang Pada Proyek UIN SUSKA Riau)', 3, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2132/2018', 'Dr. Arsyadi Ali, S.Pt, M.Agr. Sc\r\nMuhammad Rodiallah, S. Pt., M.Si', 'PEMANFAATAN LIMBAH PENGGILINGAN AIR TEBU DAN INDIGOFERA ZOLLINGERIANA SEBAGAI PAKAN KAMBING BERBENTUK WAFER', 2, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2157/2018', 'Aulia Ullah, ST., M.Eng\r\nOktaf Briliian Kharisma, ST., MT', 'PENGEMBANGAN SISTEM AKUISI DATA JARAK JAUH SECARA NIRKABEL DALAM PENGAWASAN PEMAKAIAN ENERGI LISTRIK TERINTEGRASI WEB', 3, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2158/2018', 'Deni Fitra, S.Pt, M.P', 'EVALUASI KINERJA KEMITRAAN AYAM PEDAGING KOMERSIAL DENGAN PENDEKATAN IMPORTANCE PERFORMANCE ANALYSIS DI KABUPATEN KAMPAR', 7, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2160/2018', 'Fitra Kurnia, S.Kom', 'Rancang Bangun pendeteksi gerak menggunakan metode background subtraction', 3, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2161/2018', 'Reni Susanti, M.Psi, Psikolog\r\nIkhwanisifa, M.Psi, Psikolog', 'KEBAHAGIAAN MUSTAHIK DITINJAU DARI KEBERSYUKURAN DAN DUKUNGAN SOSIAL LEMBAGA AMIL ZAKAT', 6, 3, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2162/2018', 'Lysa Angrayni, SH. MH\r\nDra. Hj. Yusliati, M.A', 'EFEKTIFITAS REHABILITASI PECANDU NARKOTIKA SERTA PENGARUHNYA TERHADAP TINGKAT KEJAHATAN DI INDONESIA( STUDI KASUS DI LOKA REHABILITASI BADAN NARKOTIKA NASIONAL  BATAM )', 2, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2163/2018', 'H. Darusman, S.Ag, M.Ag\r\nRafdeadi, S.Sos.I., M.A\r\nMustafa, M.I.Kom', 'PERUBAHAN SOSIAL PADA MASYARAKAT ADAT MELAYU RIAU (STUDI PADA MASYARAKAT ADAT SUKU MELAYU PETALANGAN DI KABUPATEN PELALAWAN)', 2, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2167/2018', 'YESSI NESNERI, SE., MM\r\nUlfiah Novita, SE., M.Si', 'Strategi Unit Usaha Syariah Bank Umum Konvensional Dalam Menghadapi Spin Off 2023 (Studi Pada PT. BPD Riau dan Kepulauan Riau)', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2171/2018', 'Fitri Insani, ST, M.Kom\r\nRahmad Abdillah, M.T', 'RANCANGAN PROTOTYPE SISTEM PENGAMBILAN KEPUTUSAN DALAM MENGUKUR KESIAPAN PERGURUAN TINGGI ISLAM TERHADAP IMPLEMENTASI LEAN HIGHER EDUCATION INSTITUTION', 3, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2172/2018', 'Rizki Fiprinita, M.Pd\r\nRoswati, M.Pd\r\nIdham Syahputra, M.Ed', 'PENGEMBANGAN BAHAN AJAR  BAHASA INGGRIS CHARACTER-BASED INSTRUCTIONAL MATERIALS DENGAN MEDIA KARTU DI SMP NEGERI 4 PEKANBARU', 1, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2175/2018', 'Dr. Idris, M.Ed\r\nMohd. Fauzan, M.Ag\r\nDrs. Muhammad Fitriyadi, MA', 'Penerapan Model Pembelajaran Berbasis Internet dan Pengaruhnya terhadap Motivasi Berprestasi dan Kreativitas Belajar Siswa Madrasah Aliyah Negeri di Provinsi Riau', 2, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2176/2018', 'Dr. Nurdin, MA\r\nDewi SUkartik, M. Sc\r\nUsman, M. Ikom', 'TRANSFORMASI PESAN KONSERVASI SUMBER DAYA AIR DI KAWASAN SUAKA MARGASATWA BUKIT RIMBANG BALING KABUPATEN KAMPAR PROVINSI RIAU MELALUI KEARIFAN LOKAL BERBASIS NILAI-NILAI ISLAM', 1, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2177/2018', 'Prof. Dr. Zikri Darussmin, M.Ag\r\nRahman, M.Ag\r\nDrs. Syahril Romli, M.Ag', 'RELASI HUKUM ISLAM DENGAN ADAT PERKAWINAN ETNIK MELAYU DI KABUPATEN SIAK PROVINSI RIAU', 2, 2, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2178/2018', 'Lusiawati, SE, MBA', 'MENGUKUR TINGKAT SHARIA FINANCIAL LITERACY MASYARAKAT TERHADAP INDUSTRI KEUANGAN NON BANK (IKNB) SYARIAH : KAJIAN PADA DOSEN PERGURUAN TINGGI KEAGAMAAN ISLAM DI PEKANBARU', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2180/2018', 'Erdawati Nurdin, S.Pd, M.Pd', 'PENGEMBANGAN LEMBAGA KERJA BERBASIS PENDEKATAN PENEMUAN TERBIMBING UNTUK MEMFASILITASI KEMAMPUAN REPRESENTASI MATEMATIS MAHASISWA', 7, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2181/2018', 'CORRY CORAZON MARZUKI', 'NILAI TOTAL KETAKTERATURAN SISI DARI m-COPY GRAF LINTASAN', 3, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2182/2018', 'Mimi Hariyani, S.Pd., M.Pd\r\nSuherman, MT', 'PENINGKATAN KEMAMPUAN DISPOSISI MATEMATIS MAHASISWA PENDIDIKAN GURU MADRASAH IBTIDAIYAH MELALUI CONCEPT ATTAINMENT MODEL', 6, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2183/2018', 'Aras Aira, SE, M.Ak', 'Faktor-Faktor yang mempengaruhi kecendrungan kecurangan akuntansi (Fraud) dengan perilaku tidak etis sebagai variabel intervening Pada Organisasi Perangkat Daerah (OPD) Kabupaten Kampar.', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2185/2018', 'Nur Alhidayatillah, M.Kom.I\r\nRohayati, M.I.Kom', 'ANALISIS FUNGSI KOMUNIKASI BENCANA DALAM MENGURANGI KEBAKARAN HUTAN DAN LAHAN (STUDI KASUS PADA BADAN PENANGGULANGAN BENCANA DAERAH PROVINSI RIAU)', 3, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2186/2018', 'Tika Mutia,S.I.Kom, M.I.Kom', 'Fenomenologi Komunikasi Generasi Z di Kota Pekanbaru', 3, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2188/2018', 'Dr. Elfiandri, M. Si\r\nFebri Rahmi, SE., M. Sc. Ak.', 'Literasi Media Dan Pengaruhnya Terhadap Resistensi Berita Hoax Serta  Perilaku Konsumtif Produk Halal Dan Sehat Pada Masyarakat Muslim Di Provinsi Riau', 6, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2189/2018', 'Fitri Aryani, M.Sc', 'TRACE MATRIKS 3 X 3 BERPANGKAT BILANGAN BULAT', 6, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2190/2018', 'Sri Wahyuni, M.A., M.Psi\r\nRaudatussalamah, M.A', '“RELASI ORANGTUA-ANAK PADA KELUARGA MELAYU” (Analisis Psikologi Indijinus)', 6, 3, 5, 2018, 21000000.00, '-', ''),
('Un.04/L.I/TL.01/2191/2018', 'Lola Oktavia, S.S.T., M.T.I.', 'PENILAIAN PENERIMAAN E-GOVERNMENT DI INDONESIA', 7, 7, 5, 0000, 0.00, '-', ''),
('Un.04/L.I/TL.01/2192/2018', 'Chandra Jon Asmara, S.Sos, MSi', 'EDUKASI POLITIK DALAM PELAKSANAAN PEMILIHAN KEPALA DAERAH (PILKADA) LANGSUNG KABUPATEN KAMPAR 2017 (STUDI KOMPARATIF DI KECAMATAN XIII KOTO KAMPAR DAN KOTO KAMPAR HULU KABUPATEN KAMPAR)', 7, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2195/2018', 'Dr. Sofia Hardani, M.Ag.\r\nNur Hasanah, SE., M.M.\r\nDrs. Arifuddin, MA', 'IMPLEMENTASI KOMPILASI HUKUM EKONOMI SYARIAH (KHES) DALAM MENYELESAIKAN SENGKETA EKONOMI SYARIAH DI PENGADILAN AGAMA DI PROVINSI RIAU', 2, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2196/2018', 'Intan Kemala, S.Sos., M.Si', 'KOMPETENSI KOMUNIKASI ANTAR BUDAYA MAHASISWA INTERNASIONAL UIN SUSKA RIAU', 7, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2197/2018', 'Dr. H. Mawardi Muhammad Saleh, Lc, MA\r\nH. Fikri Mahmud, Lc., MA\r\nDr. Zulfahmi M.Ag', 'PENANGKALAN RADIKALISME AGAMA DALAM PERSPEKTIF MAQASHID SYARI’AH (Studi di Markaz al-Maqashid li al-Dirasat waal-Buhuts Maroko)', 1, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2199/2018', 'Umar Abdurrahim SM.,S.Sos.I.,MA', 'ANALISIS PENGGUNAAN APLIKASI MEDIA SOSIAL DAN DAMPAKNYA TERHADAP KENAKALAN REMAJA DI KOTA PEKANBARU', 7, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2200/2018', 'Mardhiah Rubani, M.Si\r\nAlaidin.SH', 'EKSISTENSI RADIO ETNIK SERUMPUN RADIO 91.7 FM BATAM SEBAGAI PENGUATAN KEARIFAN LOKAL DALAM PERSPEKTIF UU. 32 TAHUN 2002', 2, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2201/2018', 'Khairiah, M.Ag', 'FENOMENA KONVERSI AGAMA DI KOTA PEKANBARU (KAJIAN MOTIF DAN MAKNA)', 7, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2202/2018', 'Sehani, SE, MM', 'ANALIS STRATEGI POSITIONING BANK MUAMALAT SEBAGAI PELOPOR PERBANKAN SYARIAH KOTA PEKANBARU', 7, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2204/2018', 'Indah Permanasari, S.P., M.P\r\nTiara Septirosya, S.P., M.Si', 'STUDI KUALITAS BENIH DAN HASIL TANAMAN KEDELAI YANG BERASAL DARI JENIS TANAH DAN SISTEM PERTANAMAN BERBEDA', 6, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2205/2018', 'Novita Hera, S.P., M.P', 'BUDIDAYA BAWANG MERAH (ALLIUM ASCALOMICUM L.)  DENGAN BEBERAPA MODEL RANCANG BANGUN VERTIKULTUR', 7, 8, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2206/2018', 'Prof. Dr. H. Alaiddin, MA\r\nNurhayati, S.E.I., ME.Sy\r\nMuhammad Soim, M.Ag', 'EKSPLORASI PRAKTIK HUKUM ISLAM WAKAF PRODUKTIF DAN AKUNTABILITAS LEMBAGA – LEMBAGA WAKAF DI INDONESIA (STUDI KOMPARATIF PADA PROVINSI DKI JAKARTA DAN JAWA BARAT)', 5, 5, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2207/2018', 'Memen Permata Azmi,S.Pd., M.Pd.', 'PENGEMBANGAN LEMBAR KERJA SISWA DENGAN PENDEKATAN CONCRETE-REPRESENTATIONAL- ABSTRACT (CRA) BERBASIS INTUISI UNTUK MEMFASILITASI KEMAMPUAN PEMAHAMAN KONSEP MATEMATIS SISWA MADRASAH TSANAWIYAH KABUPATEN KAMPAR', 3, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2208/2018', 'Hayatun Nufus, S.Pd, M.Pd', 'PROFIL KEMAMPUAN KOMUNIKASI MATEMATIS MAHASISWA DALAM MENYELESAIKAN SOAL PADA MATA KULIAH PROGRAM LINIER BERDASARKAN GAYA KOGNITIF DAN HABITS OF MIND', 3, 1, 5, 2018, 15000000.00, '-', ''),
('Un.04/L.I/TL.01/2209/2018', 'Suhandri, S.Si., M.Pd\r\nArnida Sari, S.Pd., M.Mat', 'PENGEMBANGAN MODUL BERBASIS KONTEKSTUAL TERINTEGRASI NILAI KEISLAMAN UNTUK MENINGKATKAN KEMAMPUAN PEMECAHAN MASALAH MATEMATIS SISWA MTs DI PROPINSI RIAU', 6, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2212/2018', 'Dra. Suhertina, M.Pd.', 'PERSEPSI SISWA TENTANG PENYALAHGUNAAN NARKOBA DI SEKOLAH MENENGAH PERTAMA NEGERI (SMPN) SE-RIAU', 6, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2213/2018', 'Rena Revita, S.Pd., M.Pd\r\nIrma Fitri, S.Pd, M.Mat', 'EVALUASI PELAKSANAAN KURIKULUM 2013 PADA PEMBELAJARAN MATEMATIKA SMA NEGERI KELAS XI DI KABUPATEN BENGKALIS', 3, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2214/2018', 'Dr. H. Aprijon Efendi, Lc. MA\r\nDr. H. Yasmaruddin Bardansyah, MA', 'PANDANGAN MASYARAKAT TERHADAP PELAKSANAAN KHUTBAH JUM`ATTRADISIONAL BERBAHASA ARAB DI MASJID JAMA’AH THARIQAT SYATARIYAH', 2, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2216/2018', 'Dr. Hj. Andi Murniati, M. Pd\r\nDra. Syariah, M. Pd', 'IMPLEMENTASI KURIKULUM 2013 DAN IMPLIKASINYA TERHADAP  PERILAKU KEBERAGAMAAN SISWA MTS NEGERI TEMBILAHAN INDRAGIRI HILIR', 6, 1, 5, 2018, 0.00, '-', ''),
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
('Un.04/L.I/TL.01/2381/2018', 'Dr. Hj. Sitti Rahmah, M.Si', '“MENONGKAH” SUATU BENTUK PENDIDIKAN TRADISIONAL PADA MASYARAKAT SUKU DUANU DI SUNGAI LAUT KECAMATAN TANAH MERAH INDRA GIRI HILIR RIAU', 6, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2383/2018', 'Nurjanis, S.Ag, MA', 'DAMPAK PSIKOLOGIS NEGATIF KECANDUAN PERMAINAN ONLINE PADA MAHASISWA UIN SUSKA RIAU(STUDI KASUS: MOBILE LEGEND)', 7, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2390/2018', 'Dr. Leny Nofianti. MS, SE, M.Si.Ak, CA\r\nDr. Juliana, SE. M.Si\r\nDiana Eravia, SE. MM', 'PARADIGMA INTERPRETIF KRITIS: PENGEMBANGAN MODEL ISLAMIC GOVERNANCE  DALAM MENILAI KINERJA PERBANKAN SYARIAH', 4, 4, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2391/2018', 'Benny Sukma Negara, ST,.MT\r\nAbas Wismoyo Hernawan, M. Sos', 'Pemanfaatan Memprediksi Jenis Kelamin Berdasarkan Tulisan Tangan Dengan Skema Machine Learning', 6, 7, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/2396/2018', 'Dr. Hartono, M.Pd\r\nMardia Hayati, M.Ag\r\nMirawati, M.Ag', 'Program LPTK dalam mengimplementasikan Kurikulum 2013 Edisi revisi 2017 di Universitas Islam Negeri se Indonesia', 2, 1, 5, 2018, 0.00, '-', ''),
('Un.04/L.I/TL.01/3618/2018', 'Sudianto,S Sos. M.I.Kom\r\nDra. Atjih Sukaesih, M.Si\r\nAfrinaldy Rustam, S.IP.,M.Si', 'PERAN WAKIL RAKYAT TERHADAP PROSES LEGISLASI PERATURAN DAERAH (KAJIAN TENTANG EFISIENSI, EFEKTIFITAS, STABILITAS, KESETARAAN DAN AKUNTABILITAS STUDI BANDING DPRD PROVINSI RIAU DAN PROVINSI KEPULAUAN RIAU)', 2, 6, 5, 2018, 0.00, '-', ''),
('Un.04/L.ITL.01/2261/2018', 'Idria Maita, S.Kom, M.Sc\r\nWirdah Anugrah, S.Kom., M.Kom', 'RANCANG BANGUN APLIKASI LAYANAN KONSULTASI PENASEHAT AKADEMIK (PA) ONLINE BERBASIS ANDROID  (STUDI KASUS: UIN SUSKA RIAU)', 2, 7, 5, 2018, 0.00, '-', '');

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

INSERT INTO `summary` (`id_buku`, `penulis`, `judul`, `tema`, `volume`, `edisi`, `id_rak`, `tahun`, `stok`, `file`) VALUES
('9988-2921-11', 'sdas', 'asda', 'asdsa', 'asdsa', 'asdas', 2, 2010, 20, ''),
('9988-2921-12', 'AYIP', 'Suatu cerita', 'mantab', '1', 'ew1', 6, 2011, 25, '');

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
  `hak_akses` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `hak_akses`, `created_at`, `updated_at`) VALUES
(1, 'fauzi', '6NFqFk1JWa6Qlpx8_v0BvO8x3JJjbqEC', '$2y$13$H2Zr5.1YulpUpW5jMIh6FOV73eWWv2AWr8atHiWaN1BaG2gMjkt6.', NULL, 'ahmadfauzirahman99@gmail.com', 10, '', 1553148822, 1553148822),
(2, 'arif', 'Tq1N-0rQPy2rvSaZ8yLRT_upG_BJY4xQ', '$2y$13$nRFMbBr09njRgWL3WPbL4euOJZqD/ctDNf6eGA.EwiPVouHgNnpbW', NULL, 'arif@gmail.com', 10, 'penelitian_admin', 1553215915, 1553215915),
(3, 'izza', 'SmMhlBq5z91FU82ZTK86pYwvYxO459bM', '$2y$13$WfaWrMikKDB9n683I/0.0Oe9MuVYpzyj.WDpjDKYuB1iZhsZfbrJK', NULL, 'izza@gmail.com', 10, 'pengabdian_admin', 1553695064, 1553695064),
(4, 'ara', 'XbUcVcdB_tlVup5C2x5NFRYMVIUucBMb', '$2y$13$JY79ISfR5iZ0qW4aCI4H0..1SmvVsgQTRsH0lnHtNvDTCmShHiwn.', NULL, 'ara@gmail.com', 10, 'summary_admin', 1553695082, 1553695082);

--
-- Indexes for dumped tables
--

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
