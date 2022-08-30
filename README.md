# Simple-Dashboard-Discount-Monitoring

Ceritanya adalah ada kebutuhan untuk melihat sejauh mana promo discount di gunakan oleh user.  tersedia 2 dataset yaitu data transaksi pembayayara (payment.csv) dan dataset promo discount (discount.csv). untuk menjawab kebutuhan tadi maka akan dibuatkan Dashboard menggunakan Google Data Studio.

langkah:
1. membersihkan data ( memilih data payment yang bukan negatif dan bukan 0 , membuang discount di bawah 500 karena kita anggap saja ini rupiah. discount dibawah 500 sepertinya termasuk kesalahan input/ bisa jadi data dummy)
2. membuat aggregate data yang dibutuhkan untuk visualisasi (query dengan menggunakan tool postgreSQL)
3. membuat dashboard menggunakan Google Data Studio
