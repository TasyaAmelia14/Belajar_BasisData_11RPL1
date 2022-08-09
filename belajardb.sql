Setting environment for using XAMPP for Windows.
PC@LAPTOP-TSY c:\xampp
# mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 13
Server version: 10.4.24-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> CREATE DATABASE TASYA;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| tasya              |
| test               |
+--------------------+
6 rows in set (0.001 sec)

MariaDB [(none)]> USE TASYA;
Database changed
MariaDB [TASYA]> create table TASYA(
    -> nis int(20) not null,
    -> nama varchar(20) not null,
    -> tanggal_lahir varchar(20) not null,
    -> kelas varchar(10) not null,
    -> alamat varchar(50) not null,
    -> jenis_kelamin enum('L','P'),
    -> hobi varchar(30) not null,
    -> PRIMARY KEY(nis)
    -> );
Query OK, 0 rows affected (0.213 sec)

MariaDB [TASYA]> Desc TASYA;
+---------------+---------------+------+-----+---------+-------+
| Field         | Type          | Null | Key | Default | Extra |
+---------------+---------------+------+-----+---------+-------+
| nis           | int(20)       | NO   | PRI | NULL    |       |
| nama          | varchar(20)   | NO   |     | NULL    |       |
| tanggal_lahir | varchar(20)   | NO   |     | NULL    |       |
| kelas         | varchar(10)   | NO   |     | NULL    |       |
| alamat        | varchar(50)   | NO   |     | NULL    |       |
| jenis_kelamin | enum('L','P') | YES  |     | NULL    |       |
| hobi          | varchar(30)   | NO   |     | NULL    |       |
+---------------+---------------+------+-----+---------+-------+
7 rows in set (0.006 sec)

MariaDB [TASYA]> insert into TASYA (nis,nama,tanggal_lahir,kelas,alamat,jenis_kelamin,hobi) Values ("0068739168","Tasya Amelia","14 juni 2006","XI RPL 1","Kp Dukuh 2","P","Bermain Basket");
Query OK, 1 row affected (0.068 sec)

MariaDB [TASYA]> select*from TASYA;
+----------+--------------+---------------+----------+------------+---------------+----------------+
| nis      | nama         | tanggal_lahir | kelas    | alamat     | jenis_kelamin | hobi           |
+----------+--------------+---------------+----------+------------+---------------+----------------+
| 68739168 | Tasya Amelia | 14 juni 2006  | XI RPL 1 | Kp Dukuh 2 | P             | Bermain Basket |
+----------+--------------+---------------+----------+------------+---------------+----------------+
1 row in set (0.001 sec)

MariaDB [TASYA]>