# Simple-Dashboard-Discount-Monitoring

Ceritanya adalah ada kebutuhan untuk melihat sejauh mana promo discount di gunakan oleh user.  tersedia 2 dataset yaitu data transaksi pembayayaran (pembayaran.csv) dan dataset promo diskon (diskon.csv). untuk menjawab kebutuhan tadi maka akan dibuatkan Dashboard menggunakan Google Data Studio.

langkah:
1. membersihkan data ( memilih jumlah bayar (payment amount) yang bukan negatif dan bukan 0 , membuang nilai diskon di bawah 500 karena kita anggap saja ini rupiah. diskon dibawah 500 sepertinya termasuk kesalahan input/ bisa jadi data dummy)
2. membuat aggregate data yang dibutuhkan untuk visualisasi (query dengan menggunakan tool postgreSQL)
3. membuat dashboard menggunakan Google Data Studio
