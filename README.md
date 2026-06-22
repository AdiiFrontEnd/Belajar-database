
# Daftar Materi SQL

## 1. SELECT dengan AND, OR, NOT
- **Fungsi:** Memfilter data dengan menggabungkan beberapa kondisi sekaligus.
- **Syntax utama:** `SELECT * FROM tabel WHERE kondisi1 AND/OR/NOT kondisi2;`
- **Poin penting:**
  - `AND` → semua kondisi harus terpenuhi
  - `OR` → cukup salah satu kondisi terpenuhi
  - `NOT` → membalik kondisi (mengecualikan nilai tertentu)

## 2. INSERT INTO
- **Fungsi:** Menambahkan baris data baru ke dalam tabel.
- **Syntax utama:** `INSERT INTO tabel (kolom1, kolom2) VALUES (nilai1, nilai2);`
- **Poin penting:**
  - Urutan kolom dan nilai harus sesuai
  - Bisa insert tanpa menyebut nama kolom jika semua kolom diisi
  - Nilai teks diapit tanda kutip, angka tidak perlu

## 3. NULL Values
- **Fungsi:** Merepresentasikan nilai yang tidak ada atau belum diisi.
- **Syntax utama:** `WHERE kolom IS NULL` / `WHERE kolom IS NOT NULL`
- **Poin penting:**
  - NULL bukan 0 dan bukan string kosong
  - Tidak bisa dibandingkan dengan `=`, harus pakai `IS NULL`
  - Fungsi agregat umumnya mengabaikan nilai NULL

## 4. UPDATE & DELETE
- **Fungsi:** Mengubah (`UPDATE`) atau menghapus (`DELETE`) data yang sudah ada.
- **Syntax utama:** `UPDATE tabel SET kolom=nilai WHERE kondisi;` / `DELETE FROM tabel WHERE kondisi;`
- **Poin penting:**
  - Selalu gunakan `WHERE` agar tidak mengubah/menghapus semua baris
  - `DELETE` tanpa `WHERE` akan menghapus seluruh isi tabel
  - Gunakan `SELECT` dulu untuk memverifikasi data sebelum diubah/dihapus

## 5. SELECT TOP / LIMIT
- **Fungsi:** Membatasi jumlah baris yang ditampilkan dari hasil query.
- **Syntax utama:** `SELECT TOP 10 * FROM tabel;` (SQL Server) / `SELECT * FROM tabel LIMIT 10;` (MySQL/PostgreSQL)
- **Poin penting:**
  - `TOP` digunakan di SQL Server, `LIMIT` di MySQL/PostgreSQL
  - Berguna untuk melihat sampel data atau mengambil peringkat teratas
  - Kombinasikan dengan `ORDER BY` untuk hasil yang bermakna

## 6. Aggregate Functions (COUNT, SUM, AVG, MIN, MAX)
- **Fungsi:** Melakukan perhitungan pada sekumpulan baris dan mengembalikan satu nilai.
- **Syntax utama:** `SELECT COUNT(*), SUM(kolom), AVG(kolom), MIN(kolom), MAX(kolom) FROM tabel;`
- **Poin penting:**
  - Sering dipakai bersama `GROUP BY` untuk mengelompokkan data
  - `COUNT(*)` menghitung semua baris; `COUNT(kolom)` mengabaikan NULL
  - `AVG` dan `SUM` hanya untuk kolom numerik

## 7. LIKE
- **Fungsi:** Memfilter data berdasarkan pola teks tertentu.
- **Syntax utama:** `WHERE kolom LIKE 'pola%';`
- **Poin penting:**
  - `%` mewakili nol atau lebih karakter apa pun
  - `_` mewakili tepat satu karakter
  - Tidak case-sensitive di sebagian besar database (tergantung konfigurasi)

## 8. Wildcards
- **Fungsi:** Karakter khusus yang digunakan bersama `LIKE` untuk pencocokan pola fleksibel.
- **Syntax utama:** `WHERE nama LIKE 'A%'` / `WHERE kode LIKE 'A_C'`
- **Poin penting:**
  - `%` → cocok dengan banyak karakter; `_` → cocok dengan satu karakter
  - `[abc]` cocok dengan salah satu karakter dalam kurung (SQL Server)
  - Hindari wildcard di awal pola (`'%kata'`) karena memperlambat query

## 9. IN
- **Fungsi:** Memfilter baris yang nilainya cocok dengan salah satu dari daftar nilai.
- **Syntax utama:** `WHERE kolom IN (nilai1, nilai2, nilai3);`
- **Poin penting:**
  - Pengganti praktis dari banyak kondisi `OR`
  - Bisa digunakan dengan subquery: `WHERE kolom IN (SELECT ...)`
  - `NOT IN` untuk mengecualikan nilai dalam daftar

## 10. BETWEEN
- **Fungsi:** Memfilter data dalam rentang nilai tertentu (inklusif di kedua ujung).
- **Syntax utama:** `WHERE kolom BETWEEN nilai_awal AND nilai_akhir;`
- **Poin penting:**
  - Berlaku untuk angka, teks, maupun tanggal
  - Kedua batas (awal dan akhir) ikut disertakan dalam hasil
  - `NOT BETWEEN` untuk mengecualikan rentang tersebut

## 11. AS (Aliases)
- **Fungsi:** Memberi nama sementara pada kolom atau tabel agar query lebih mudah dibaca.
- **Syntax utama:** `SELECT kolom AS nama_alias FROM tabel AS t;`
- **Poin penting:**
  - Alias kolom hanya berlaku di dalam query tersebut
  - Gunakan tanda kutip jika alias mengandung spasi: `AS "Nama Lengkap"`
  - Alias tabel sangat membantu saat melakukan JOIN banyak tabel

## 12. JOIN (INNER, LEFT, RIGHT, FULL, SELF, CROSS)
- **Fungsi:** Menggabungkan data dari dua atau lebih tabel berdasarkan kolom yang berelasi.
- **Syntax utama:** `SELECT * FROM tabelA JOIN tabelB ON tabelA.id = tabelB.id;`
- **Poin penting:**
  - `INNER JOIN` → hanya baris yang cocok di kedua tabel
  - `LEFT JOIN` → semua baris kiri + yang cocok di kanan (NULL jika tidak ada)
  - `RIGHT JOIN` → kebalikan LEFT; `FULL JOIN` → semua baris dari kedua tabel
  - `SELF JOIN` → tabel di-join dengan dirinya sendiri (misal: struktur hierarki)
  - `CROSS JOIN` → menghasilkan semua kombinasi baris (kartesian product)

---

## Tips Umum SQL

1. **Selalu gunakan WHERE saat UPDATE/DELETE** — tanpa filter, semua baris akan terpengaruh dan sulit dipulihkan.
2. **Gunakan alias untuk query kompleks** — alias pada tabel dan kolom membuat query dengan banyak JOIN jauh lebih mudah dibaca.
3. **Uji query dengan SELECT sebelum mengubah data** — jalankan `SELECT` dengan kondisi yang sama sebelum eksekusi `UPDATE` atau `DELETE`.
4. **Perhatikan tipe data saat membandingkan nilai** — membandingkan teks dengan angka atau format tanggal yang salah sering menjadi sumber bug tersembunyi.
5. **Hindari `SELECT *` di production** — selalu sebutkan kolom yang dibutuhkan untuk menjaga performa dan kejelasan query.
