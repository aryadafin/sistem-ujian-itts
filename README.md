# Sistem Ujian Online ITTS

![home](https://github.com/user-attachments/assets/460b0fcc-85b4-44eb-8eb1-90629c63c20e)

![form page](https://github.com/user-attachments/assets/50d74ce1-a181-4745-bf3f-2e710f9a0ed2)

![form page filled](https://github.com/user-attachments/assets/8b7a1488-f569-4072-aa38-9e33cb2fff3a)

![data summary](https://github.com/user-attachments/assets/e4cc9715-ff54-4fbc-a36f-f7778feb5b01)


Deskripsi Singkat
Aplikasi Sistem Ujian Online ITTS adalah sebuah aplikasi sederhana yang memungkinkan pengguna untuk mengisi formulir ujian online. Pengguna dapat memilih jenis ujian, mengisi data pribadi, dan menyatakan kesiapan sebelum mengirimkan data.
Tujuan Aplikasi
•	Mempermudah pengelolaan data ujian online.
•	Memberikan pengalaman user-friendly untuk mahasiswa ITTS dalam proses pendaftaran ujian.
Struktur Aplikasi
•	Stateless Widget digunakan untuk halaman DisplayDataPage, yang hanya menampilkan data hasil input.
•	Stateful Widget digunakan untuk halaman formulir, di mana pengguna dapat mengisi data dan berinteraksi dengan widget seperti checkbox dan dropdown.

2. Desain dengan Figma
Proses Desain di Figma
1.	Membuat wireframe untuk menampilkan struktur dasar aplikasi.
2.	Menambahkan elemen visual seperti tombol, form input, dan checkbox.
3.	Menentukan tema warna (biru dan putih) dan font yang seragam.
4.	Menggunakan ikon yang mendukung aksesibilitas.

Penjelasan Elemen Visual
•	Ikon: Menggunakan ikon material seperti Checkbox dan Dropdown.
•	Font: Menggunakan font bawaan Flutter seperti Roboto.
•	Warna: 
o	Tombol menggunakan warna biru (#10C3C0).
o	Latar belakang aplikasi berwarna putih untuk kesederhanaan dan modern.

3. Implementasi Koding
Struktur Proyek
•	main.dart: File utama untuk menjalankan aplikasi.
•	Halaman Stateless: 
o	DisplayDataPage: Menampilkan data hasil input.
•	Halaman Stateful: 
o	FormPage: Halaman utama untuk pengisian formulir.
Fungsi Halaman
•	Stateless Widget: 
o	Digunakan untuk menampilkan data yang tidak akan berubah (output formulir).
•	Stateful Widget: 
o	Mengelola interaksi pengguna seperti mengisi form, memilih opsi dari dropdown, dan mencentang checkbox.
Widget yang Digunakan
1.	TextField: Untuk input nama dan subjek.
2.	DropdownButton: Untuk memilih jenis ujian.
3.	Checkbox: Untuk menyatakan kesiapan mengikuti ujian.
4.	ElevatedButton: Untuk mengirimkan data.
5.	Navigator: Untuk navigasi antar halaman.

Ringkasan Pengalaman
Mengembangkan aplikasi Flutter sederhana memberikan pemahaman tentang:
•	Struktur aplikasi Flutter.
•	Implementasi interaksi pengguna melalui widget seperti Checkbox dan DropdownButton.
Tantangan
1.	Desain Figma:
o	Menyesuaikan desain agar terlihat profesional namun tetap sederhana.
o	Solusi: Menggunakan panduan desain minimalis dan ikon standar.
2.	Validasi Formulir:
o	Kesulitan dalam memastikan tombol submit hanya aktif jika semua input valid.
o	Solusi: Menggunakan validasi form Flutter dan kontrol kondisi dengan setState.
3.	Integrasi Navigasi:
o	Kesalahan saat mempassing data antar halaman.
o	Solusi: Memanfaatkan Navigator dan konstruktor dengan parameter wajib.
Kesimpulan
Aplikasi ini berhasil menyelesaikan tujuan dasar pendaftaran ujian online dengan fitur interaktif. Namun, pengembangan lebih lanjut bisa penambahan integrasi database dan fitur autentikasi.
Sekian untuk tugas UTS Aplikasi pemrograman mobile, jika ada tambahan dan koreksi mohon infokan ke saya Pak,
Terima Kasih.



## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
