-- =============================================
-- Syntax SELECT di SQL
-- =============================================

-- 1. SELECT Basic: Memilih kolom spesifik
-- Syntax: SELECT kolom1, kolom2, ... FROM nama_tabel;
SELECT nama, umur FROM karyawan;


-- 2. SELECT * : Memilih SEMUA kolom
-- Syntax: SELECT * FROM nama_tabel;
SELECT * FROM karyawan;


-- 3. SELECT dengan Alias (AS) - Memberi nama lain pada kolom
-- Syntax: SELECT kolom AS nama_alias FROM nama_tabel;
SELECT nama AS nama_karyawan, umur AS usia FROM karyawan;


-- 4. SELECT DISTINCT - Menghilangkan duplikat
-- Syntax: SELECT DISTINCT kolom FROM nama_tabel;
SELECT DISTINCT departemen FROM karyawan;


-- 5. SELECT dengan LIMIT - Membatasi jumlah baris hasil
-- Syntax: SELECT kolom FROM nama_tabel LIMIT jumlah;
SELECT * FROM karyawan LIMIT 5;


-- 6. SELECT dengan ORDER BY - Mengurutkan hasil
-- Syntax: SELECT kolom FROM nama_tabel ORDER BY kolom [ASC|DESC];
SELECT * FROM karyawan ORDER BY nama ASC;  -- Urutkan dari A-Z
SELECT * FROM karyawan ORDER BY umur DESC; -- Urutkan dari terbesar ke terkecil


-- 7. SELECT dengan WHERE - Filter data
-- Syntax: SELECT kolom FROM nama_tabel WHERE kondisi;
SELECT * FROM karyawan WHERE departemen = 'IT';
SELECT * FROM karyawan WHERE umur > 25;


-- 8. SELECT dengan LIKE - Pencarian pola
-- Syntax: SELECT kolom FROM nama_tabel WHERE kolom LIKE 'pola';
SELECT * FROM karyawan WHERE nama LIKE 'B%';  -- Nama dimulai dengan 'B'
SELECT * FROM karyawan WHERE nama LIKE '%a';  -- Nama diakhiri dengan 'a'
SELECT * FROM karyawan WHERE nama LIKE '%udi%'; -- Nama mengandung 'udi'


-- 9. SELECT dengan IN - Memilih data yang ada di list
-- Syntax: SELECT kolom FROM nama_tabel WHERE kolom IN (nilai1, nilai2, ...);
SELECT * FROM karyawan WHERE departemen IN ('IT', 'HR', 'Keuangan');


-- 10. SELECT dengan BETWEEN - Memilih data dalam rentang
-- Syntax: SELECT kolom FROM nama_tabel WHERE kolom BETWEEN nilai_awal AND nilai_akhir;
SELECT * FROM karyawan WHERE umur BETWEEN 20 AND 30;


-- 11. SELECT dengan AND/OR - Kombinasi kondisi
-- Syntax: SELECT kolom FROM nama_tabel WHERE kondisi1 AND/OR kondisi2;
SELECT * FROM karyawan WHERE departemen = 'IT' AND umur > 25;
SELECT * FROM karyawan WHERE departemen = 'IT' OR departemen = 'HR';


-- 12. SELECT dengan IS NULL/IS NOT NULL - Filter data null
-- Syntax: SELECT kolom FROM nama_tabel WHERE kolom IS NULL;
SELECT * FROM karyawan WHERE telepon IS NULL;
SELECT * FROM karyawan WHERE telepon IS NOT NULL;


-- Contoh skenario nyata:
-- Ambil 5 karyawan terlama di departemen IT, urutkan berdasarkan umur terbesar
SELECT nama, umur, tanggal_masuk 
FROM karyawan 
WHERE departemen = 'IT' 
ORDER BY umur DESC 
LIMIT 5;