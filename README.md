# 📚 LibraryPro - Web-Based Library Management System

LibraryPro adalah Sistem Informasi Manajemen Perpustakaan berbasis Web yang dirancang untuk mempermudah sirkulasi buku, peminjaman, dan interaksi komunitas pembaca. Proyek ini dibangun menggunakan arsitektur Java Web (JSP & Servlets) dengan implementasi pola desain MVC (Model-View-Controller) dan Data Access Object (DAO).

## ✨ Fitur Utama

Sistem ini membagi hak akses menjadi dua peran utama: **Admin** dan **Anggota**.

### 🛡️ Fitur Admin (Pustakawan)
* **Dashboard Analitik**: Pantauan real-time statistik total buku, peminjaman aktif, dan antrean validasi.
* **Manajemen Katalog**: Tambah, edit, hapus (CRUD) data buku dan kategori.
* **Manajemen Pengguna**: Memantau dan mengelola data anggota perpustakaan terdaftar.
* **Validasi Peminjaman**: Menyetujui atau menolak permohonan pinjam buku dari anggota, serta melacak status pengembalian.
* **Moderasi Ulasan**: Memantau semua komentar/rating masuk dan menghapus ulasan yang mengandung unsur spam atau *toxic* (Moderasi Komunitas).

### 👥 Fitur Anggota (Pembaca)
* **Eksplorasi Katalog**: Mencari dan melihat detail buku yang tersedia di perpustakaan.
* **Sirkulasi Peminjaman**: Mengajukan peminjaman buku dan melihat riwayat pengembalian.
* **Koleksi Favorit**: Menyimpan buku-buku idaman ke dalam daftar favorit pribadi (Wishlist).
* **Ulasan & Rating (Review System)**: 
  * Memberikan penilaian bintang 1-5 dan komentar pada buku yang dibaca.
  * *Smart Validation*: Menerapkan aturan **1 Anggota = 1 Ulasan per Buku** (Anti-Spam).
  * Fitur Edit Ulasan mandiri secara dinamis.
* **Profil Pengguna**: Mengelola biodata dan mengunggah foto profil (*Profile Picture*).

---

## 🛠️ Teknologi yang Digunakan

* **Bahasa Pemrograman**: Java 17+
* **Framework Web**: Java Servlets & JSP (Jakarta EE)
* **Database**: MySQL / MariaDB
* **Desain UI/UX**: HTML5, CSS3, Vanilla JavaScript, FontAwesome 6
* **Build Tool & Server**: Apache Maven, Tomcat (via Cargo Plugin)

---

## 🚀 Panduan Instalasi & Menjalankan Proyek

### 1. Persiapan Database
1. Buka XAMPP / Laragon dan jalankan modul **MySQL**.
2. Buat database baru bernama `management_system`.
3. Impor berkas `management_system.sql` yang berada di dalam repositori ini ke dalam database tersebut. *(File ini sudah dilengkapi dengan relasi antar tabel dan batasan Unique Key untuk ulasan).*

### 2. Konfigurasi Koneksi Database
Jika Anda menggunakan *port* MySQL selain `3306` (misal `3307`), atau memiliki *password* root, pastikan untuk menyesuaikannya pada file konfigurasi:
`src/main/java/config/DBConnection.java`

### 3. Menjalankan Server Lokal (Maven)
Buka terminal/command prompt di direktori root proyek (tempat file `pom.xml` berada), lalu jalankan perintah berikut:

```bash
mvn cargo:run # atau
mvn clean package cargo:run
```

### 4. Akses Aplikasi
Buka web browser Anda dan akses alamat berikut:
👉 http://localhost:8080/LibraryManagementSystem (sesuaikan nama path dengan konfigurasi Tomcat Anda).

### 🔐 Akun Uji Coba (Demo)
Gunakan kredensial berikut untuk masuk dan mencoba sistem:

**Role Admin:**

* Username: admin
* Password: 123

**Role Anggota:**

* Username: maruf
* Password: 123
atau bisa daftar akun