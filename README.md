# finplan-backendTest
Nama Lengkap  : Ruli Dharmawan
Email         : rulidh02@gmail.com

Disini saya akan menjelaskan tentang Coding Test Backend Developer yang telah diberikan.
Disini saya memakai Ubuntu dari WSL2 agar mudah untuk menggunakan postgreSQL.

Pertama, saya membuat tabel yang dibutuhkan yaitu tabel users, hobbies dan map_user_hobby.
Saya menggunakan aplikasi Visual Studio Code untuk membuat query yang diperlukan bisa dilihat di finplanBackendTest.sql

Lalu pada ubuntu saya mengatifkan server untuk menjalankan postgreSQL, lalu masuk kedalam CLI postgreSQL.
Selanjutnya saya membuat database yaitu finplan-backendTest, dan connect kedalam database menggunakan '\c'. Dilanjut dengan meng-import file finplanBackendTest.sql dengan menggunakan '\i' dan direktori
tempat saya menyimpan file sql tersebut. Bisa dilihat pada gambar bawa tabel telah terbuat dan data-data yang dibutuhkan sudah ter-input.

![img](https://github.com/rulidh/finplan-backendTest/blob/main/img/Create%20Table%20and%20Input%20Value.jpg)

Dilanjut dengan menjawab pertanyaan selanjutnya, yaitu untuk membuat query untuk menghitung jumlah user masing-masing gender pada suatu hobby tertentu.
Disini saya menampilkan gender dari users dengan users.gender dan banyaknya users.gender yang diberi nama total dengan COUNT(users.gender).
Saya memakai JOIN untuk menghubungkan ketiga tabel yang terpisah dengan hubungannya dari reference key atau foreign key pada map_user_hobby.
Lalu terdapat kondisi dimana hobbies.id = 1, 2, dan 3 untuk membagi tabel yang terdiri dari hobi yang berbeda dimana 1 adalah Running, 2 adalah Skipping, dan 3 adalah Push Up
Lalu saya grupkan memakai users.gender agar COUNT(users.gender) bisa berfungsi.

Bisa dilihat, terlepas dari status map_user_hobby yang aktif atau tidak, perbandingan wanita dengan pria pada hobi pertama adalah 3:1, pada hobi kedua adalah 2:5 dan pada hobi ketiga adalah 2:5
![img](https://github.com/rulidh/finplan-backendTest/blob/main/img/Gender%20Total%20on%20Hobbies.jpg)

Lalu pertanyaan selanjutnya adalah buat query untuk menghitung jumlah hobby dari setiap user yang masih aktif dengan output kolom name dan total (banyaknya hobi setiap users.name)
Disini saya menampilkan users.name dan COUNT(users.id) yang diberia alias yaitu total. Lalu saya memakai JOIN dengan map_user_hobby dengan foreign key map_user_hobby.id_user = users.id.
Lalu terdapat kondisi dimana map_user_hobby.status = 'active' untuk memisahkan user yang memiliki hobi yang statusnya sudah deleted

Bisa dilihat bahwa users.name 'Lanaya' tidak tertampil dikarenakan hobi dari users.name 'Lanaya' tidak aktif atau 'deleted'.
![WhatsApp Image 2023-05-24 at 13 59 29](https://github.com/rulidh/finplan-backendTest/assets/94828760/4e1d765c-ec4a-4c11-b715-af6773903d99)

Dilanjut dengan pertanyaan terakhir yaitu menghitung level rata-rata tiap user dari hobi yang dimiliki, ketika user memiliki hobi lebih dari 1.
Disini saya menampilkan users.name dan level_avg yaitu function AVG() untuk mendapatkan rata-rata dari hobbies.level. Lalu saya memakai JOIN users dengan map_user_hobby dan JOIN hobby dengen map_user_hobby.
Lalu terdapat kondisi agar hanya menampilkan yang status pada map_user_hobby nya 'active' dan saya grupkan memakai users.id dan terdapat syntax HAVING yang fungsinya sama seperti WHERE tetapi bisa dipakai
untuk function juga, dimana yang saya pakai adalah function COUNT() untuk kondisi users.id yang tampil di map_user_hobby lebih dari 1.

Bisa dilihat bahwa yang tampil adalah users 'Garmuth' dan 'Goliath' yang memiliki hobi lebih dari satu di pertanyaan sebelumnya.
![WhatsApp Image 2023-05-24 at 14 48 37](https://github.com/rulidh/finplan-backendTest/assets/94828760/2152ee74-d1bb-422a-aa61-857576840d69)


