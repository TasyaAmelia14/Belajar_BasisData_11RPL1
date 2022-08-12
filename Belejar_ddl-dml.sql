MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sekolah            |
| tasya              |
| test               |
+--------------------+
7 rows in set (0.001 sec)

MariaDB [(none)]> use sekolah;
Database changed
MariaDB [sekolah]> show tables;
Empty set (0.001 sec)

MariaDB [sekolah]> create table siswa(
    -> Nis char(8) PRIMARY KEY,
    -> Nama varchar(100),
    -> Jenis_Kelamin char(1),
    -> Tempat_Lahir varchar(50),
    -> Tanggal_Lahir date,
    -> Alamat text,
    -> Kelas varchar(10),
    -> Nilai float);
Query OK, 0 rows affected (0.374 sec)

MariaDB [sekolah]> describe siswa;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| Nis           | char(8)      | NO   | PRI | NULL    |       |
| Nama          | varchar(100) | YES  |     | NULL    |       |
| Jenis_Kelamin | char(1)      | YES  |     | NULL    |       |
| Tempat_Lahir  | varchar(50)  | YES  |     | NULL    |       |
| Tanggal_Lahir | date         | YES  |     | NULL    |       |
| Alamat        | text         | YES  |     | NULL    |       |
| Kelas         | varchar(10)  | YES  |     | NULL    |       |
| Nilai         | float        | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
8 rows in set (0.212 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100274',
    -> 'Firdaus Wiguna',
    -> 'L',
    -> 'Subang',
    -> '2005-08-17',
    -> 'Kalijati',
    -> '11-RPL-1',
    -> '70.97');
Query OK, 1 row affected (0.138 sec)

MariaDB [sekolah]> select*from siswa;
+----------+----------------+---------------+--------------+---------------+----------+----------+-------+
| Nis      | Nama           | Jenis_Kelamin | Tempat_Lahir | Tanggal_Lahir | Alamat   | Kelas    | Nilai |
+----------+----------------+---------------+--------------+---------------+----------+----------+-------+
| 12100274 | Firdaus Wiguna | L             | Subang       | 2005-08-17    | Kalijati | 11-RPL-1 | 70.97 |
+----------+----------------+---------------+--------------+---------------+----------+----------+-------+
1 row in set (0.002 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100670',
    -> 'Rofi Anugrah Firdaus',
    -> 'L',
    -> 'Subang',
    -> '2006-06-03',
    -> 'Surya Cigadung',
    -> '11-RPL-1',
    -> '99.99');
Query OK, 1 row affected (0.104 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100094',
    -> 'Arzenna Haqi Muhammad',
    -> 'L',
    -> 'Subang',
    -> '2005-11-27',
    -> 'Sukamelang',
    -> '11-RPL-1',
    -> '90.70');
Query OK, 1 row affected (0.088 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100778',
    -> 'Tasya Amelia',
    -> 'P',
    -> 'Subang',
    -> '2006-06-14',
    -> 'Sadawarna',
    -> '11-RPL-1',
    -> '90.99');
Query OK, 1 row affected (0.065 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100823',
    -> 'Wananda Dilla Zahra',
    -> 'P',
    -> 'Subang',
    -> '2006-01-14',
    -> 'Dawuan',
    -> '11-RPL-1',
    -> '98.99');
Query OK, 1 row affected (0.094 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100022',
    -> 'Aef Aditia Gelar Nugraha',
    -> 'L',
    -> 'Subang',
    -> '2005-09-20',
    -> 'Pagaden',
    -> '11-RPL-1',
    -> '89.00');
Query OK, 1 row affected (0.063 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100053',
    -> 'Alya Elidhiya',
    -> 'P',
    -> 'Subang',
    -> '2006-04-16',
    -> 'Cibogo',
    -> '11-RPL-1',
    -> '98.99');
Query OK, 1 row affected (0.087 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100086',
    -> 'Ariezto Zucov',
    -> 'L',
    -> 'Subang',
    -> '2006-12-06',
    -> 'Pagaden Barat',
    -> '11-RPL-1',
    -> '75.00');
Query OK, 1 row affected (0.091 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100098',
    -> 'Asep Rizki Juliansah',
    -> 'L',
    -> 'Subang',
    -> '2006-07-17',
    -> 'Desa Marengmang',
    -> '11-RPL-1',
    -> '80.97');
Query OK, 1 row affected (0.094 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100848',
    -> 'Yufa Gina Maryafa',
    -> 'P',
    -> 'Subang',
    -> '2006-10-27',
    -> 'Binong',
    -> '11-RPL-1',
    -> '90.89');
Query OK, 1 row affected (0.089 sec)

MariaDB [sekolah]> select*from siswa;
+----------+--------------------------+---------------+--------------+---------------+-----------------+----------+-------+
| Nis      | Nama                     | Jenis_Kelamin | Tempat_Lahir | Tanggal_Lahir | Alamat          | Kelas    | Nilai |
+----------+--------------------------+---------------+--------------+---------------+-----------------+----------+-------+
| 12100022 | Aef Aditia Gelar Nugraha | L             | Subang       | 2005-09-20    | Pagaden         | 11-RPL-1 |    89 |
| 12100053 | Alya Elidhiya            | P             | Subang       | 2006-04-16    | Cibogo          | 11-RPL-1 | 98.99 |
| 12100086 | Ariezto Zucov            | L             | Subang       | 2006-12-06    | Pagaden Barat   | 11-RPL-1 |    75 |
| 12100094 | Arzenna Haqi Muhammad    | L             | Subang       | 2005-11-27    | Sukamelang      | 11-RPL-1 |  90.7 |
| 12100098 | Asep Rizki Juliansah     | L             | Subang       | 2006-07-17    | Desa Marengmang | 11-RPL-1 | 80.97 |
| 12100274 | Firdaus Wiguna           | L             | Subang       | 2005-08-17    | Kalijati        | 11-RPL-1 | 70.97 |
| 12100670 | Rofi Anugrah Firdaus     | L             | Subang       | 2006-06-03    | Surya Cigadung  | 11-RPL-1 | 99.99 |
| 12100778 | Tasya Amelia             | P             | Subang       | 2006-06-14    | Sadawarna       | 11-RPL-1 | 90.99 |
| 12100823 | Wananda Dilla Zahra      | P             | Subang       | 2006-01-14    | Dawuan          | 11-RPL-1 | 98.99 |
| 12100848 | Yufa Gina Maryafa        | P             | Subang       | 2006-10-27    | Binong          | 11-RPL-1 | 90.89 |
+----------+--------------------------+---------------+--------------+---------------+-----------------+----------+-------+
10 rows in set (0.000 sec)