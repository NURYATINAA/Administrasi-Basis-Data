-- menggunakan database
use dqlabmartbasic;

-- menggunakan data menggunakan ORDER BY
-- ambil nama_produk, dan quantity dari tabel tr_penjualan_dqlab kemudian urutkan berdasarkan qty
select nama_produk
from tr_penjualan_dqlab
order by qty;

SELECT nama_produk, qty
from tr_penjualan_dqlab
order by nama_produk

-- mengurutkan lebih dari satu kolom menggunakan ORDER BY
-- ambil nama_produk, dan quantity dari tabel tr_penjualan_dqlab kemudian urutkan berdasarkan qty dan nama_produk
select nama_produk, qty
from tr_penjualan_dqlab
order by qty, nama_produk;

-- tampilkan sewmua kolom dari tabel tr_penjualan_dqlab dengan menggunakan berdasarkan qty dan tgl_transaksi
SELECT *
FROM tr_penjualan_dqlab
ORDER BY qty, tgl_transaksi;

-- tampilkan semua kolom dari tabel ms_pelanggan dengan mengurutkan berdasarkan nama_pelanggan
SELECT *
FROM ms_pelanggan
ORDER BY nama_pelanggan

-- tampilkan semua kolom dari tabel ms_pelanggan dengan mengurutkan berdarkan alamat
select *
from ms_pelanggan
order by alamat;

-- ASC dan DESC mengurutkan dari besar ke kecil
-- ambil nama_produk dan quantity dari tabel tr_penjualan_dqlab urutkan berdasarkan qty secara descanding
select nama_produk, qty
from tr_penjualan_dqlab
order by qty desc;

-- mengurutkan 2 kolom dengan ascanding dan descanding
select nama_produk, qty
from tr_penjualan_dqlab
order by qty desc, nama_produk asc;

-- latihan dengan mencoba berbagai pengurutan dengan ORDER BY dengan kriteria berikut
-- tampilkan semua kolom dari tabel tr_penjualan_dqlab dengan mengurutkan berdasarkan tgl_transaksi secara descanding dan qty ascending
SELECT *
from tr_penjualan_dqlab
order by tgl_transaksi DESC, qty ASC;

-- tampilkan semua kolom dari tabel ms_pelanggan dengan mengurutkan berdasarkan nama_pelanggan secara descanding
SELECT *
from ms_pelanggan
order by nama_pelanggan DESC;

-- tampilkan semua kolom dari tabel ms_pelanggan dengan mengurutkan berdasarkan alamat secara descending
SELECT *
from ms_pelanggan
order by alamat DESC;

-- ambil nama_produk, qty, harga, dan total beli, dari tr_penjualan_dqlab urutkan berdasarkan total beli
select nama_produk, qty, harga, qty*harga as total_beli
from tr_penjualan_dqlab
order by total_beli desc;

-- cobalah pengurutan dengan ekspresi total harga menggunakan rumusan jumlah barang dikali harga barang dikurangi diskon
select*, 
        (jumlah_barang * harga_barang - diskon) AS total_harga
from tr_penjualan_dqlab
order by total_harga desc;



