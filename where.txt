SELECT * FROM `siswa` LIMIT 10;
-------------------------------
WHERE alamat = 'KALIJATI' OR tempat_lahir = 'SUBANG';
------------------------------------------------------
WHERE nilai >= 78;
-------------------
WHERE tempat_lahir != 'SUBANG';
-------------------------------
WHERE tempat_lahir != 'SUBANG' AND nilai >= '80';
--------------------------------------------------
WHERE tempat_lahir != 'SUBANG' AND nilai >= '80' AND alamat ='CIJAMBE';
-----------------------------------------------------------
WHERE nilai BETWEEN 60 AND 80;
------------------------------
WHERE tanggal_lahir BETWEEN '2005-03-01' AND '2005-10-1';
---------------------------------------------------------
WHERE MONTH(tanggal_lahir) = '09';
 ORDER BY nilai DESC;
 ORDER BY nilai ASC;
----------------------------------
WHERE jenis_kelamin = 'L' AND tempat_lahir = 'SUBANG' ORDER BY nilai DESC;
--------------------------------------------------------------
WHERE jenis_kelamin = 'P' AND nilai BETWEEN 50 AND 70 ORDER BY nilai DESC;
--------------------------------------------------------------
WHERE nama LIKE 'A%'; (untuk mencari inisial nama a)
----------------------------------------------------
WHERE nama LIKE '%I'; (untuk mencari yang belkngnya i)
-----------------------------------------------------
WHERE nama LIKE 'Y%A'; 
----------------------
WHERE nama LIKE '%O%';
----------------------
SELECT tempat_lahir FROM `siswa`GROUP BY tempat_lahir;
------------------------------------------------------
SELECT tempat_lahir, COUNT(tempat_lahir) FROM `siswa`GROUP BY tempat_lahir;
-------------------------------------------------------------
SELECT tempat_lahir, COUNT(tempat_lahir) AS jumlah_orang FROM `siswa`GROUP BY tempat_lahir;
--------------------------------------------------------------
SELECT jenis_kelamin, COUNT(jenis_kelamin) AS jumlah_orang FROM `siswa`GROUP BY jenis_kelamin;
--------------------------------------------------------------
SELECT jenis_kelamin, 
MAX(nilai) AS nilai_tertinggi, MIN(nilai) nilai_terendah FROM `siswa`
GROUP BY jenis_kelamin;
--------------------------------------------------------------
SELECT jenis_kelamin, 
MAX(nilai) AS nilai_tertinggi, 
MIN(nilai) AS nilai_terendah,
AVG(nilai) AS nilai_rerata,
SUM(nilai) AS nilai_total
FROM `siswa`
GROUP BY jenis_kelamin;
----------------------------------------
SELECT * FROM siswa WHERE MONTH(tanggal_lahir) = "09";
---------------------------------------------------------
SELECT * FROM siswa WHERE YEAR (tanggal_lahir) = "2006";