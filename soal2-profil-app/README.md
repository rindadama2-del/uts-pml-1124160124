
# Profil Rinda - UTS Aplikasi Mobile

Aplikasi Profil Mahasiswa berbasis Flutter untuk memenuhi tugas Ujian Tengah Semester (UTS) mata kuliah Aplikasi Mobile.

## Identitas Mahasiswa

| Keterangan | Informasi |
|---|---|
| Nama | Rinda Danar Madanti |
| NIM | 1124160124 |
| Program Studi | Software Engineering |
| Kelas | SE-1P24 |

## Deskripsi Aplikasi

Aplikasi Profil Rinda merupakan aplikasi sederhana berbasis Flutter yang menampilkan informasi profil mahasiswa. Aplikasi ini dilengkapi dengan halaman login, halaman profil, fitur edit profil, halaman Tentang Saya, navigasi, dan pengaturan tema gelap.

Data profil dikelola sementara di dalam memori aplikasi, sehingga perubahan data berlaku selama aplikasi berjalan.

## Fitur Utama

1. **Login**  
   Menampilkan halaman login dengan input username dan password. Terdapat validasi untuk memastikan kolom tidak kosong dan mengecek kecocokan kredensial akun, serta terdapat simulasi loading sebelum masuk ke halaman profil.

2. **Profil Mahasiswa**  
   Menampilkan informasi mahasiswa berupa nama, NIM, program studi, kelas, foto profil, email, nomor HP, dan GitHub.

3. **Edit Profil**  
   Memungkinkan pengguna mengubah nama, email, dan nomor HP. Form akan terisi dengan data sebelumnya dan dilengkapi validasi input.

4. **Tentang Saya**  
   Menampilkan riwayat pendidikan, keahlian, dan hobi dalam tampilan yang dapat digulir.

5. **Navigasi Aplikasi**  
   Menggunakan Drawer dan Bottom Navigation Bar untuk membantu pengguna berpindah antara halaman Profil dan Tentang Saya.

6. **Dark Mode**  
   Menyediakan pengaturan untuk mengubah tampilan aplikasi dari tema terang ke tema gelap.

## Teknologi yang Digunakan

- Flutter
- Dart
- Visual Studio Code

## Cara Menjalankan Aplikasi

Pastikan Flutter SDK sudah terpasang di komputer.

1. Clone repositori GitHub:

   ```bash
   git clone https://github.com/rindadama2-del/uts-pml-1124160124.git
   ```

2. Masuk ke folder proyek:

   ```bash
   cd uts-pml-1124160124/soal2-profil-app
   ```

3. Unduh dependencies:

   ```bash
   flutter pub get
   ```

4. Sambungkan perangkat Android dengan USB Debugging aktif atau jalankan Android Emulator.

5. Jalankan aplikasi:

   ```bash
   flutter run
   ```

## Video Presentasi

[Klik di sini untuk menonton video presentasi](https://youtu.be/VDNHdn8bhV0?si=YscjOmBGlBVyQMdH)

## Screenshot Aplikasi

### 1. Halaman Login

<img width="250" alt="halaman_login" src="https://github.com/user-attachments/assets/1b0f7e1e-cfac-4187-837b-2485f12af41c" />


### 2. Halaman Profil

<img width="250" alt="halaman_profil" src="https://github.com/user-attachments/assets/143a4b58-b0f7-452b-977e-d1e37bb37731" />


### 3. Halaman Edit Profil

<img width="250" alt="halaman_edit_profil" src="https://github.com/user-attachments/assets/99a0ab3c-2318-4a38-800f-04c81da081f1" />


## File APK

File APK aplikasi dapat diunduh melalui GitHub Releases.

[Unduh APK](https://github.com/rindadama2-del/uts-pml-1124160124/releases/tag/v1.0.0)

## Akun login untuk demo
| Username | Password |
|---|---|
| rinda | 123456 |
