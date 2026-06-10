#Program 1
#Kondisi 1
teks <- "Media sosial atau disebut juga dengan jejaring sosial, seperti Facebook, Twitter, Instagram, dan masih banyak lagi ternyata tidak hanya digunakan sebagai tempat berkumpul atau berbagi di dunia maya. Namun, media sosial kini juga bisa dimanfaatkan sebagai media untuk mengembangkan sebuah bisnis. Saat ini telah banyak para pengusaha yang beralih ke media sosial dalam memasarkan produk mereka baik barang ataupun jasa. Beralihnya para pelaku bisnis ke media ini dikarenakan jejaring sosial memiliki manfaat yang sangat banyak bagi usaha bisnis. Berikut ini adalah alasan mengapa jejaring sosial bisa menjadi alat promosi yang paling efektif."
jumlahKalimat <- 0
for(i in 1:nchar(teks)){
  if(substr(teks, i, i) == "."){
    jumlahKalimat <- jumlahKalimat + 1
  }
}

kata <- strsplit(teks, " ")
jumlahKata <- length(kata[[1]])

cat("Teks tersebut memuat", jumlahKalimat, "kalimat dan", jumlahKata, "kata")


#Kondisi 2
teks <- "Hari ini cuacanya sangat cerah sehingga banyak orang memilih beraktivitas di luar rumah. Saya sedang belajar dengan tekun agar dapat memahami materi yang diajarkan dengan lebih baik."

jumlahKalimat <- 0
for(i in 1:nchar(teks)){
  if(substr(teks, i, i) == "."){
    jumlahKalimat <- jumlahKalimat + 1
  }
}

kata <- strsplit(teks, " ")
jumlahKata <- length(kata[[1]])

cat("Teks tersebut memuat", jumlahKalimat, "kalimat dan", jumlahKata, "kata")

#Kondisi 3
teks <- "Hari ini cuacanya sangat cerah sehingga banyak orang memilih beraktivitas di luar rumah. Saya sedang belajar dengan tekun agar dapat memahami materi yang diajarkan dengan lebih baik."

jumlahKalimat <- 0
for(i in 1:nchar(teks)){
  if(substr(teks, i, i) == "."){
    jumlahKalimat <- jumlahKalimat + 1
  }
}

kata <- strsplit(teks, " ")
jumlahKata <- length(kata[[1]])

cat("Teks tersebut memuat", jumlahKalimat, "kalimat dan", jumlahKata, "kata")

#Kondisi 3
teks <- "Banyaknya orang yang mengagumi tokoh Bung Karno banyak juga orang yang mencari tentang biografi dari Bung karno. Ir.Soerkarno dikenal sebagai bapak pendiri bangsa yang memiliki kegigihan, ketabahan, dan semangat membara untuk memerdekakan Indonesia. Ir.Soekarno merupakan sosok yang disegani oleh teman maupun lawan."
jumlahKalimat <- 0
for(i in 1:nchar(teks)){
  if(substr(teks, i, i) == "."){
    jumlahKalimat <- jumlahKalimat + 1
  }
}

kata <- strsplit(teks, " ")
jumlahKata <- length(kata[[1]])

cat("Teks tersebut memuat", jumlahKalimat, "kalimat dan", jumlahKata, "kata")