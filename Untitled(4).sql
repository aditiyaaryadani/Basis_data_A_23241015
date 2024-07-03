CREATE TABLE `pelanggan` (
  `no_telpon` int PRIMARY KEY,
  `alamat` varchar(255),
  `tanggal_pembelian` int
);

CREATE TABLE `nama_pelanggan` (
  `nama` varchar(255)
);

CREATE TABLE `beli` (
  `no_telpon` int,
  `nama_barang` varchar(255),
  `qty` int,
  `total_bayar` int,
  `tanggal_pembelian` int
);

CREATE TABLE `karyawan` (
  `nama_karyawan` varchar(255),
  `no_telpon` int,
  `alamat` varchar(255)
);

CREATE TABLE `barang` (
  `nama` varchar(255) PRIMARY KEY,
  `harga` int,
  `ukuran` int
);

CREATE TABLE `nama_barang` (
  `nama` varchar(255)
);

CREATE TABLE `kategori_barang` (
  `kategori` varchar(255)
);

CREATE TABLE `memiliki` (
  `nama_barang` varchar(255) PRIMARY KEY,
  `no_kontak` int,
  `tanggal_pembelian` int,
  `total_bayar` float,
  `qty` int
);

CREATE TABLE `karyawann` (
  `nama_brgn` varchar(255),
  `no_telpon_kryn` int,
  `alamat` varchar(255)
);

CREATE TABLE `suplier` (
  `no_kontak` int PRIMARY KEY,
  `alamat` varchar(255),
  `nama` varchar(255),
  `jenis_barang` varchar(255),
  `kualitas` varchar(255),
  `ketersediaan_harga` int
);

CREATE TABLE `nama_suplier` (
  `nama` varchar(255)
);

ALTER TABLE `nama_pelanggan` ADD FOREIGN KEY (`nama`) REFERENCES `pelanggan` (`no_telpon`);

ALTER TABLE `beli` ADD FOREIGN KEY (`no_telpon`) REFERENCES `pelanggan` (`no_telpon`);

ALTER TABLE `beli` ADD FOREIGN KEY (`nama_barang`) REFERENCES `barang` (`nama`);

ALTER TABLE `beli` ADD FOREIGN KEY (`no_telpon`) REFERENCES `karyawan` (`nama_karyawan`);

ALTER TABLE `nama_barang` ADD FOREIGN KEY (`nama`) REFERENCES `memiliki` (`nama_barang`);

ALTER TABLE `kategori_barang` ADD FOREIGN KEY (`kategori`) REFERENCES `barang` (`nama`);

ALTER TABLE `memiliki` ADD FOREIGN KEY (`no_kontak`) REFERENCES `suplier` (`no_kontak`);

ALTER TABLE `karyawann` ADD FOREIGN KEY (`nama_brgn`) REFERENCES `memiliki` (`nama_barang`);

ALTER TABLE `nama_suplier` ADD FOREIGN KEY (`nama`) REFERENCES `suplier` (`nama`);

ALTER TABLE `pelanggan` ADD FOREIGN KEY (`tanggal_pembelian`) REFERENCES `beli` (`no_telpon`);
