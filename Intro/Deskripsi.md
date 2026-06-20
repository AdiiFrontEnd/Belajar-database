# Mengeluarkan Materi
Ini Adalah Salah Satu Metode Belajar Teori loh Ya!


# Basis data
basis data adalah sebuah sistem yang digunakan untuk menyimpan dan mengelola data.

> **Untuk Mudah Diingat**: Basis data = **TEMPAT PENYIMPANAN DATA** (tapi yang terorganisir ya!)

## Analogi Basis Data
Bayangkan basis data seperti **lemari arsip di kantor**:
- **Lemari arsip** = Basis data itu sendiri (tempat penyimpanan)
- **Map folder** = Tabel (kelompok data yang sejenis)
- **Lembar kertas dalam folder** = Baris/Record (satu set data lengkap)
- **Kolom pada kertas** = Kolom/Field (atribut spesifik dari data)
- **Petugas arsip** = Database Management System (DBMS) - yang membantu menyimpan, mencari, dan mengelola data

Contoh sederhana: Jika Anda memiliki lemari arsip untuk data karyawan:
- Lemari arsip = Basis Data "Perusahaan"
- Map folder "Karyawan" = Tabel "karyawan"
- Setiap lembar kertas dalam folder = Data satu karyawan (misal: Budi, 25 tahun, Bagian IT)
- Kolom pada kertas (Nama, Umur, Bagian) = Field dalam tabel


# Apa Itu DBMS?
DBMS = **Database Management System** (Sistem Manajemen Basis Data)

> **Untuk Mudah Diingat**: DBMS = **PETUGAS ARSIP** yang membantu kita berinteraksi dengan basis data!

DBMS adalah perangkat lunak yang berfungsi sebagai perantara antara kita (pengguna) dengan basis data. Tugasnya:
- Menyimpan data ke dalam basis data
- Mencari/mengambil data dari basis data
- Mengubah data yang sudah ada
- Menghapus data
- Memastikan data aman dan tidak rusak

Contoh DBMS yang populer:
- MySQL
- PostgreSQL
- SQLite
- Oracle Database
- Microsoft SQL Server

Analogi: Kalau basis data adalah lemari arsip, DBMS adalah petugas arsip yang membantu kita cari, simpan, atau ambil berkas dari lemari arsip tersebut.


# Hubungan DBMS, MySQL, dan SQL

## Analogi Restoran (Biar Gak Pusing!)
Bayangkan kita di restoran:
- **Dapur** = Basis Data (tempat penyimpanan bahan makanan/data)
- **Koki** = DBMS (yang mengelola dapur dan bahan makanan)
- **Bahasa yang kita gunakan untuk pesan ke koki** = SQL (instruksi)
- **Restoran XYZ (yang punya koki dan dapur)** = MySQL (salah satu merk DBMS)

## Penjelasan Detail:
1. **SQL** = Bahasa untuk berkomunikasi dengan DBMS
   - Contoh perintah SQL: `SELECT * FROM karyawan;` (ambil semua data karyawan)
   - SQL itu sama seperti "bahasa pesanan" di restoran

2. **MySQL** = Salah satu jenis DBMS (perangkat lunaknya)
   - MySQL adalah DBMS yang populer dan free
   - MySQL mengerti bahasa SQL
   - Ada DBMS lain juga: PostgreSQL, SQLite, Oracle, dll

3. **DBMS** = Sistem manajemen basis data (perantara kita dan basis data)
   - MySQL adalah contoh DBMS
   - DBMS menerima perintah SQL, lalu mengeksekusinya ke basis data

## Contoh Alur Kerja:
Kita (pengguna) → tulis perintah SQL → MySQL (DBMS) menerjemahkan dan mengeksekusi → basis data (tempat simpan data)

